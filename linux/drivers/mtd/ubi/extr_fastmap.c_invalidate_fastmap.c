
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_wl_entry {int pnum; } ;
struct ubi_vid_io_buf {int dummy; } ;
struct ubi_vid_hdr {int sqnum; } ;
struct ubi_fastmap_layout {int used_blocks; struct ubi_wl_entry** e; } ;
struct ubi_device {struct ubi_fastmap_layout* fm; } ;


 int ENOMEM ;
 int ENOSPC ;
 int GFP_KERNEL ;
 int UBI_FM_SB_VOLUME_ID ;
 int cpu_to_be64 (int ) ;
 int kfree (struct ubi_fastmap_layout*) ;
 struct ubi_fastmap_layout* kzalloc (int,int ) ;
 struct ubi_vid_io_buf* new_fm_vbuf (struct ubi_device*,int ) ;
 int ubi_free_vid_buf (struct ubi_vid_io_buf*) ;
 struct ubi_vid_hdr* ubi_get_vid_hdr (struct ubi_vid_io_buf*) ;
 int ubi_io_write_vid_hdr (struct ubi_device*,int ,struct ubi_vid_io_buf*) ;
 int ubi_next_sqnum (struct ubi_device*) ;
 struct ubi_wl_entry* ubi_wl_get_fm_peb (struct ubi_device*,int) ;
 int ubi_wl_put_fm_peb (struct ubi_device*,struct ubi_wl_entry*,int ,int ) ;

__attribute__((used)) static int invalidate_fastmap(struct ubi_device *ubi)
{
 int ret;
 struct ubi_fastmap_layout *fm;
 struct ubi_wl_entry *e;
 struct ubi_vid_io_buf *vb = ((void*)0);
 struct ubi_vid_hdr *vh;

 if (!ubi->fm)
  return 0;

 ubi->fm = ((void*)0);

 ret = -ENOMEM;
 fm = kzalloc(sizeof(*fm), GFP_KERNEL);
 if (!fm)
  goto out;

 vb = new_fm_vbuf(ubi, UBI_FM_SB_VOLUME_ID);
 if (!vb)
  goto out_free_fm;

 vh = ubi_get_vid_hdr(vb);

 ret = -ENOSPC;
 e = ubi_wl_get_fm_peb(ubi, 1);
 if (!e)
  goto out_free_fm;





 vh->sqnum = cpu_to_be64(ubi_next_sqnum(ubi));
 ret = ubi_io_write_vid_hdr(ubi, e->pnum, vb);
 if (ret < 0) {
  ubi_wl_put_fm_peb(ubi, e, 0, 0);
  goto out_free_fm;
 }

 fm->used_blocks = 1;
 fm->e[0] = e;

 ubi->fm = fm;

out:
 ubi_free_vid_buf(vb);
 return ret;

out_free_fm:
 kfree(fm);
 goto out;
}
