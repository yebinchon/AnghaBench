
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct go7007 {int dummy; } ;
typedef scalar_t__ __le16 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ __cpu_to_le16 (int) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int memcpy (scalar_t__*,int *,int) ;
 int memmove (int *,int *,int) ;
 int mjpeg_frame_header (struct go7007*,int *,int) ;

__attribute__((used)) static int gen_mjpeghdr_to_package(struct go7007 *go, __le16 *code, int space)
{
 u8 *buf;
 u16 mem = 0x3e00;
 unsigned int addr = 0x19;
 int size = 0, i, off = 0, chunk;

 buf = kzalloc(4096, GFP_KERNEL);
 if (buf == ((void*)0))
  return -ENOMEM;

 for (i = 1; i < 32; ++i) {
  mjpeg_frame_header(go, buf + size, i);
  size += 80;
 }
 chunk = mjpeg_frame_header(go, buf + size, 1);
 memmove(buf + size, buf + size + 80, chunk - 80);
 size += chunk - 80;

 for (i = 0; i < size; i += chunk * 2) {
  if (space - off < 32) {
   off = -1;
   goto done;
  }

  code[off + 1] = __cpu_to_le16(0x8000 | mem);

  chunk = 28;
  if (mem + chunk > 0x4000)
   chunk = 0x4000 - mem;
  if (i + 2 * chunk > size)
   chunk = (size - i) / 2;

  if (chunk < 28) {
   code[off] = __cpu_to_le16(0x4000 | chunk);
   code[off + 31] = __cpu_to_le16(addr++);
   mem = 0x3e00;
  } else {
   code[off] = __cpu_to_le16(0x1000 | 28);
   code[off + 31] = 0;
   mem += 28;
  }

  memcpy(&code[off + 2], buf + i, chunk * 2);
  off += 32;
 }
done:
 kfree(buf);
 return off;
}
