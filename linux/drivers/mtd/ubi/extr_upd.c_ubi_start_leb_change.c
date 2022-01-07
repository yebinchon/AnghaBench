
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_volume {int changing_leb; scalar_t__ upd_bytes; int upd_buf; int ch_lnum; scalar_t__ upd_received; int vol_id; int updating; } ;
struct ubi_leb_change_req {scalar_t__ bytes; int lnum; } ;
struct ubi_device {int min_io_size; } ;


 int ALIGN (int,int ) ;
 int ENOMEM ;
 int dbg_gen (char*,int ,int ,scalar_t__) ;
 int ubi_assert (int) ;
 int ubi_eba_atomic_leb_change (struct ubi_device*,struct ubi_volume*,int ,int *,int ) ;
 int vmalloc (int ) ;

int ubi_start_leb_change(struct ubi_device *ubi, struct ubi_volume *vol,
    const struct ubi_leb_change_req *req)
{
 ubi_assert(!vol->updating && !vol->changing_leb);

 dbg_gen("start changing LEB %d:%d, %u bytes",
  vol->vol_id, req->lnum, req->bytes);
 if (req->bytes == 0)
  return ubi_eba_atomic_leb_change(ubi, vol, req->lnum, ((void*)0), 0);

 vol->upd_bytes = req->bytes;
 vol->upd_received = 0;
 vol->changing_leb = 1;
 vol->ch_lnum = req->lnum;

 vol->upd_buf = vmalloc(ALIGN((int)req->bytes, ubi->min_io_size));
 if (!vol->upd_buf)
  return -ENOMEM;

 return 0;
}
