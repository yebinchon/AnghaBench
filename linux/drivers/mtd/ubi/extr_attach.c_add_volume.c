
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_vid_hdr {scalar_t__ vol_type; int compat; int data_pad; int used_ebs; int vol_id; } ;
struct ubi_attach_info {int dummy; } ;
struct ubi_ainf_volume {int used_ebs; int data_pad; int vol_type; int compat; } ;


 scalar_t__ IS_ERR (struct ubi_ainf_volume*) ;
 int UBI_DYNAMIC_VOLUME ;
 int UBI_STATIC_VOLUME ;
 scalar_t__ UBI_VID_DYNAMIC ;
 int be32_to_cpu (int ) ;
 int ubi_assert (int) ;
 struct ubi_ainf_volume* ubi_find_or_add_av (struct ubi_attach_info*,int,int*) ;

__attribute__((used)) static struct ubi_ainf_volume *add_volume(struct ubi_attach_info *ai,
       int vol_id, int pnum,
       const struct ubi_vid_hdr *vid_hdr)
{
 struct ubi_ainf_volume *av;
 bool created;

 ubi_assert(vol_id == be32_to_cpu(vid_hdr->vol_id));

 av = ubi_find_or_add_av(ai, vol_id, &created);
 if (IS_ERR(av) || !created)
  return av;

 av->used_ebs = be32_to_cpu(vid_hdr->used_ebs);
 av->data_pad = be32_to_cpu(vid_hdr->data_pad);
 av->compat = vid_hdr->compat;
 av->vol_type = vid_hdr->vol_type == UBI_VID_DYNAMIC ? UBI_DYNAMIC_VOLUME
           : UBI_STATIC_VOLUME;

 return av;
}
