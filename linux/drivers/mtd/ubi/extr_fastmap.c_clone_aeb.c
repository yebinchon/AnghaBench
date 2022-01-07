
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_attach_info {int dummy; } ;
struct ubi_ainf_peb {int copy_flag; int scrub; int lnum; int sqnum; int vol_id; int ec; int pnum; } ;


 struct ubi_ainf_peb* ubi_alloc_aeb (struct ubi_attach_info*,int ,int ) ;

__attribute__((used)) static struct ubi_ainf_peb *clone_aeb(struct ubi_attach_info *ai,
          struct ubi_ainf_peb *old)
{
 struct ubi_ainf_peb *new;

 new = ubi_alloc_aeb(ai, old->pnum, old->ec);
 if (!new)
  return ((void*)0);

 new->vol_id = old->vol_id;
 new->sqnum = old->sqnum;
 new->lnum = old->lnum;
 new->scrub = old->scrub;
 new->copy_flag = old->copy_flag;

 return new;
}
