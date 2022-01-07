
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubi_vid_hdr {int sqnum; int vol_id; } ;
struct ubi_attach_info {int fastmap; } ;
struct TYPE_2__ {int list; } ;
struct ubi_ainf_peb {int sqnum; int vol_id; TYPE_1__ u; } ;


 int ENOMEM ;
 int be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int dbg_bld (char*,int,int ,int ) ;
 int list_add (int *,int *) ;
 struct ubi_ainf_peb* ubi_alloc_aeb (struct ubi_attach_info*,int,int) ;

__attribute__((used)) static int add_fastmap(struct ubi_attach_info *ai, int pnum,
         struct ubi_vid_hdr *vid_hdr, int ec)
{
 struct ubi_ainf_peb *aeb;

 aeb = ubi_alloc_aeb(ai, pnum, ec);
 if (!aeb)
  return -ENOMEM;

 aeb->vol_id = be32_to_cpu(vid_hdr->vol_id);
 aeb->sqnum = be64_to_cpu(vid_hdr->sqnum);
 list_add(&aeb->u.list, &ai->fastmap);

 dbg_bld("add to fastmap list: PEB %d, vol_id %d, sqnum: %llu", pnum,
  aeb->vol_id, aeb->sqnum);

 return 0;
}
