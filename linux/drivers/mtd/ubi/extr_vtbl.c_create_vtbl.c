
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubi_vid_io_buf {int dummy; } ;
struct ubi_vid_hdr {int sqnum; void* lnum; void* data_pad; void* used_ebs; void* data_size; int compat; void* vol_id; int vol_type; } ;
struct ubi_device {int vtbl_size; } ;
struct ubi_attach_info {int erase; int max_sqnum; } ;
struct TYPE_2__ {int list; } ;
struct ubi_ainf_peb {TYPE_1__ u; int ec; int pnum; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct ubi_ainf_peb*) ;
 int PTR_ERR (struct ubi_ainf_peb*) ;
 int UBI_LAYOUT_VOLUME_COMPAT ;
 int UBI_LAYOUT_VOLUME_ID ;
 int UBI_LAYOUT_VOLUME_TYPE ;
 void* cpu_to_be32 (int) ;
 int cpu_to_be64 (int ) ;
 int dbg_gen (char*,int) ;
 int list_add (int *,int *) ;
 int ubi_add_to_av (struct ubi_device*,struct ubi_attach_info*,int ,int ,struct ubi_vid_hdr*,int ) ;
 struct ubi_vid_io_buf* ubi_alloc_vid_buf (struct ubi_device*,int ) ;
 struct ubi_ainf_peb* ubi_early_get_peb (struct ubi_device*,struct ubi_attach_info*) ;
 int ubi_free_aeb (struct ubi_attach_info*,struct ubi_ainf_peb*) ;
 int ubi_free_vid_buf (struct ubi_vid_io_buf*) ;
 struct ubi_vid_hdr* ubi_get_vid_hdr (struct ubi_vid_io_buf*) ;
 int ubi_io_write_data (struct ubi_device*,void*,int ,int ,int ) ;
 int ubi_io_write_vid_hdr (struct ubi_device*,int ,struct ubi_vid_io_buf*) ;

__attribute__((used)) static int create_vtbl(struct ubi_device *ubi, struct ubi_attach_info *ai,
         int copy, void *vtbl)
{
 int err, tries = 0;
 struct ubi_vid_io_buf *vidb;
 struct ubi_vid_hdr *vid_hdr;
 struct ubi_ainf_peb *new_aeb;

 dbg_gen("create volume table (copy #%d)", copy + 1);

 vidb = ubi_alloc_vid_buf(ubi, GFP_KERNEL);
 if (!vidb)
  return -ENOMEM;

 vid_hdr = ubi_get_vid_hdr(vidb);

retry:
 new_aeb = ubi_early_get_peb(ubi, ai);
 if (IS_ERR(new_aeb)) {
  err = PTR_ERR(new_aeb);
  goto out_free;
 }

 vid_hdr->vol_type = UBI_LAYOUT_VOLUME_TYPE;
 vid_hdr->vol_id = cpu_to_be32(UBI_LAYOUT_VOLUME_ID);
 vid_hdr->compat = UBI_LAYOUT_VOLUME_COMPAT;
 vid_hdr->data_size = vid_hdr->used_ebs =
        vid_hdr->data_pad = cpu_to_be32(0);
 vid_hdr->lnum = cpu_to_be32(copy);
 vid_hdr->sqnum = cpu_to_be64(++ai->max_sqnum);


 err = ubi_io_write_vid_hdr(ubi, new_aeb->pnum, vidb);
 if (err)
  goto write_error;


 err = ubi_io_write_data(ubi, vtbl, new_aeb->pnum, 0, ubi->vtbl_size);
 if (err)
  goto write_error;





 err = ubi_add_to_av(ubi, ai, new_aeb->pnum, new_aeb->ec, vid_hdr, 0);
 ubi_free_aeb(ai, new_aeb);
 ubi_free_vid_buf(vidb);
 return err;

write_error:
 if (err == -EIO && ++tries <= 5) {




  list_add(&new_aeb->u.list, &ai->erase);
  goto retry;
 }
 ubi_free_aeb(ai, new_aeb);
out_free:
 ubi_free_vid_buf(vidb);
 return err;

}
