
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_device {int buf_mutex; int peb_size; int peb_buf; } ;


 int ARRAY_SIZE (int*) ;
 int EIO ;
 int UBI_IO_BITFLIPS ;
 int do_sync_erase (struct ubi_device*,int) ;
 int memset (int ,int,int ) ;
 scalar_t__ mtd_is_eccerr (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int* patterns ;
 int ubi_assert (int) ;
 int ubi_check_pattern (int ,int,int ) ;
 int ubi_err (struct ubi_device*,char*,int,...) ;
 int ubi_io_read (struct ubi_device*,int ,int,int ,int ) ;
 int ubi_io_write (struct ubi_device*,int ,int,int ,int ) ;
 int ubi_msg (struct ubi_device*,char*,int) ;

__attribute__((used)) static int torture_peb(struct ubi_device *ubi, int pnum)
{
 int err, i, patt_count;

 ubi_msg(ubi, "run torture test for PEB %d", pnum);
 patt_count = ARRAY_SIZE(patterns);
 ubi_assert(patt_count > 0);

 mutex_lock(&ubi->buf_mutex);
 for (i = 0; i < patt_count; i++) {
  err = do_sync_erase(ubi, pnum);
  if (err)
   goto out;


  err = ubi_io_read(ubi, ubi->peb_buf, pnum, 0, ubi->peb_size);
  if (err)
   goto out;

  err = ubi_check_pattern(ubi->peb_buf, 0xFF, ubi->peb_size);
  if (err == 0) {
   ubi_err(ubi, "erased PEB %d, but a non-0xFF byte found",
    pnum);
   err = -EIO;
   goto out;
  }


  memset(ubi->peb_buf, patterns[i], ubi->peb_size);
  err = ubi_io_write(ubi, ubi->peb_buf, pnum, 0, ubi->peb_size);
  if (err)
   goto out;

  memset(ubi->peb_buf, ~patterns[i], ubi->peb_size);
  err = ubi_io_read(ubi, ubi->peb_buf, pnum, 0, ubi->peb_size);
  if (err)
   goto out;

  err = ubi_check_pattern(ubi->peb_buf, patterns[i],
     ubi->peb_size);
  if (err == 0) {
   ubi_err(ubi, "pattern %x checking failed for PEB %d",
    patterns[i], pnum);
   err = -EIO;
   goto out;
  }
 }

 err = patt_count;
 ubi_msg(ubi, "PEB %d passed torture test, do not mark it as bad", pnum);

out:
 mutex_unlock(&ubi->buf_mutex);
 if (err == UBI_IO_BITFLIPS || mtd_is_eccerr(err)) {





  ubi_err(ubi, "read problems on freshly erased PEB %d, must be bad",
   pnum);
  err = -EIO;
 }
 return err;
}
