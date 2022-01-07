
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_volume {int dummy; } ;
struct ubi_vid_io_buf {int dummy; } ;
struct ubi_device {struct ubi_volume** volumes; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int UBI_IO_RETRIES ;
 int try_recover_peb (struct ubi_volume*,int,int,void const*,int,int,struct ubi_vid_io_buf*,int*) ;
 struct ubi_vid_io_buf* ubi_alloc_vid_buf (struct ubi_device*,int ) ;
 int ubi_free_vid_buf (struct ubi_vid_io_buf*) ;
 int ubi_msg (struct ubi_device*,char*) ;
 int vol_id2idx (struct ubi_device*,int) ;

__attribute__((used)) static int recover_peb(struct ubi_device *ubi, int pnum, int vol_id, int lnum,
         const void *buf, int offset, int len)
{
 int err, idx = vol_id2idx(ubi, vol_id), tries;
 struct ubi_volume *vol = ubi->volumes[idx];
 struct ubi_vid_io_buf *vidb;

 vidb = ubi_alloc_vid_buf(ubi, GFP_NOFS);
 if (!vidb)
  return -ENOMEM;

 for (tries = 0; tries <= UBI_IO_RETRIES; tries++) {
  bool retry;

  err = try_recover_peb(vol, pnum, lnum, buf, offset, len, vidb,
          &retry);
  if (!err || !retry)
   break;

  ubi_msg(ubi, "try again");
 }

 ubi_free_vid_buf(vidb);

 return err;
}
