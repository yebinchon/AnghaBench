
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_ainf_peb {int sqnum; int scrub; int lnum; int pnum; int ec; } ;


 int pr_err (char*,...) ;

void ubi_dump_aeb(const struct ubi_ainf_peb *aeb, int type)
{
 pr_err("eraseblock attaching information dump:\n");
 pr_err("\tec       %d\n", aeb->ec);
 pr_err("\tpnum     %d\n", aeb->pnum);
 if (type == 0) {
  pr_err("\tlnum     %d\n", aeb->lnum);
  pr_err("\tscrub    %d\n", aeb->scrub);
  pr_err("\tsqnum    %llu\n", aeb->sqnum);
 }
}
