
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct bnx2 {TYPE_1__* flash_info; } ;
struct TYPE_2__ {int flags; int page_size; } ;


 int BNX2_NVM_COMMAND_FIRST ;
 int BNX2_NVM_COMMAND_LAST ;
 int BNX2_NV_BUFFERED ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int bnx2_acquire_nvram_lock (struct bnx2*) ;
 int bnx2_disable_nvram_access (struct bnx2*) ;
 int bnx2_disable_nvram_write (struct bnx2*) ;
 int bnx2_enable_nvram_access (struct bnx2*) ;
 int bnx2_enable_nvram_write (struct bnx2*) ;
 int bnx2_nvram_erase_page (struct bnx2*,int) ;
 int bnx2_nvram_read (struct bnx2*,int,int *,int) ;
 int bnx2_nvram_read_dword (struct bnx2*,int,int *,int) ;
 int bnx2_nvram_write_dword (struct bnx2*,int,int *,int) ;
 int bnx2_release_nvram_lock (struct bnx2*) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int
bnx2_nvram_write(struct bnx2 *bp, u32 offset, u8 *data_buf,
  int buf_size)
{
 u32 written, offset32, len32;
 u8 *buf, start[4], end[4], *align_buf = ((void*)0), *flash_buffer = ((void*)0);
 int rc = 0;
 int align_start, align_end;

 buf = data_buf;
 offset32 = offset;
 len32 = buf_size;
 align_start = align_end = 0;

 if ((align_start = (offset32 & 3))) {
  offset32 &= ~3;
  len32 += align_start;
  if (len32 < 4)
   len32 = 4;
  if ((rc = bnx2_nvram_read(bp, offset32, start, 4)))
   return rc;
 }

 if (len32 & 3) {
  align_end = 4 - (len32 & 3);
  len32 += align_end;
  if ((rc = bnx2_nvram_read(bp, offset32 + len32 - 4, end, 4)))
   return rc;
 }

 if (align_start || align_end) {
  align_buf = kmalloc(len32, GFP_KERNEL);
  if (!align_buf)
   return -ENOMEM;
  if (align_start) {
   memcpy(align_buf, start, 4);
  }
  if (align_end) {
   memcpy(align_buf + len32 - 4, end, 4);
  }
  memcpy(align_buf + align_start, data_buf, buf_size);
  buf = align_buf;
 }

 if (!(bp->flash_info->flags & BNX2_NV_BUFFERED)) {
  flash_buffer = kmalloc(264, GFP_KERNEL);
  if (!flash_buffer) {
   rc = -ENOMEM;
   goto nvram_write_end;
  }
 }

 written = 0;
 while ((written < len32) && (rc == 0)) {
  u32 page_start, page_end, data_start, data_end;
  u32 addr, cmd_flags;
  int i;


  page_start = offset32 + written;
  page_start -= (page_start % bp->flash_info->page_size);

  page_end = page_start + bp->flash_info->page_size;

  data_start = (written == 0) ? offset32 : page_start;

  data_end = (page_end > offset32 + len32) ?
   (offset32 + len32) : page_end;


  if ((rc = bnx2_acquire_nvram_lock(bp)) != 0)
   goto nvram_write_end;


  bnx2_enable_nvram_access(bp);

  cmd_flags = BNX2_NVM_COMMAND_FIRST;
  if (!(bp->flash_info->flags & BNX2_NV_BUFFERED)) {
   int j;



   for (j = 0; j < bp->flash_info->page_size; j += 4) {
    if (j == (bp->flash_info->page_size - 4)) {
     cmd_flags |= BNX2_NVM_COMMAND_LAST;
    }
    rc = bnx2_nvram_read_dword(bp,
     page_start + j,
     &flash_buffer[j],
     cmd_flags);

    if (rc)
     goto nvram_write_end;

    cmd_flags = 0;
   }
  }


  if ((rc = bnx2_enable_nvram_write(bp)) != 0)
   goto nvram_write_end;



  i = 0;
  if (!(bp->flash_info->flags & BNX2_NV_BUFFERED)) {

   if ((rc = bnx2_nvram_erase_page(bp, page_start)) != 0)
    goto nvram_write_end;


   bnx2_enable_nvram_write(bp);

   for (addr = page_start; addr < data_start;
    addr += 4, i += 4) {

    rc = bnx2_nvram_write_dword(bp, addr,
     &flash_buffer[i], cmd_flags);

    if (rc != 0)
     goto nvram_write_end;

    cmd_flags = 0;
   }
  }


  for (addr = data_start; addr < data_end; addr += 4, i += 4) {
   if ((addr == page_end - 4) ||
    ((bp->flash_info->flags & BNX2_NV_BUFFERED) &&
     (addr == data_end - 4))) {

    cmd_flags |= BNX2_NVM_COMMAND_LAST;
   }
   rc = bnx2_nvram_write_dword(bp, addr, buf,
    cmd_flags);

   if (rc != 0)
    goto nvram_write_end;

   cmd_flags = 0;
   buf += 4;
  }



  if (!(bp->flash_info->flags & BNX2_NV_BUFFERED)) {
   for (addr = data_end; addr < page_end;
    addr += 4, i += 4) {

    if (addr == page_end-4) {
     cmd_flags = BNX2_NVM_COMMAND_LAST;
                  }
    rc = bnx2_nvram_write_dword(bp, addr,
     &flash_buffer[i], cmd_flags);

    if (rc != 0)
     goto nvram_write_end;

    cmd_flags = 0;
   }
  }


  bnx2_disable_nvram_write(bp);


  bnx2_disable_nvram_access(bp);
  bnx2_release_nvram_lock(bp);


  written += data_end - data_start;
 }

nvram_write_end:
 kfree(flash_buffer);
 kfree(align_buf);
 return rc;
}
