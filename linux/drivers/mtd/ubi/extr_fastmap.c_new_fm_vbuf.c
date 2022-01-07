
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_vid_io_buf {int dummy; } ;
struct ubi_vid_hdr {int compat; int vol_id; int vol_type; } ;
struct ubi_device {int dummy; } ;


 int GFP_KERNEL ;
 int UBI_COMPAT_DELETE ;
 int UBI_VID_DYNAMIC ;
 int cpu_to_be32 (int) ;
 struct ubi_vid_io_buf* ubi_alloc_vid_buf (struct ubi_device*,int ) ;
 struct ubi_vid_hdr* ubi_get_vid_hdr (struct ubi_vid_io_buf*) ;

__attribute__((used)) static struct ubi_vid_io_buf *new_fm_vbuf(struct ubi_device *ubi, int vol_id)
{
 struct ubi_vid_io_buf *new;
 struct ubi_vid_hdr *vh;

 new = ubi_alloc_vid_buf(ubi, GFP_KERNEL);
 if (!new)
  goto out;

 vh = ubi_get_vid_hdr(new);
 vh->vol_type = UBI_VID_DYNAMIC;
 vh->vol_id = cpu_to_be32(vol_id);




 vh->compat = UBI_COMPAT_DELETE;

out:
 return new;
}
