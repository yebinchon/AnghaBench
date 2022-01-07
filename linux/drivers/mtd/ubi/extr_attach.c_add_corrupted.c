
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubi_attach_info {int corr_peb_count; int corr; } ;
struct TYPE_2__ {int list; } ;
struct ubi_ainf_peb {TYPE_1__ u; } ;


 int ENOMEM ;
 int dbg_bld (char*,int,int) ;
 int list_add (int *,int *) ;
 struct ubi_ainf_peb* ubi_alloc_aeb (struct ubi_attach_info*,int,int) ;

__attribute__((used)) static int add_corrupted(struct ubi_attach_info *ai, int pnum, int ec)
{
 struct ubi_ainf_peb *aeb;

 dbg_bld("add to corrupted: PEB %d, EC %d", pnum, ec);

 aeb = ubi_alloc_aeb(ai, pnum, ec);
 if (!aeb)
  return -ENOMEM;

 ai->corr_peb_count += 1;
 list_add(&aeb->u.list, &ai->corr);
 return 0;
}
