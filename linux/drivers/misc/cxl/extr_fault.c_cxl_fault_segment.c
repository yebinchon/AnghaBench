
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mm_struct {int dummy; } ;
struct cxl_context {int dummy; } ;
struct copro_slb {int member_1; int member_0; } ;


 int copro_calculate_slb (struct mm_struct*,int ,struct copro_slb*) ;
 int cxl_load_segment (struct cxl_context*,struct copro_slb*) ;

__attribute__((used)) static int cxl_fault_segment(struct cxl_context *ctx, struct mm_struct *mm,
        u64 ea)
{
 struct copro_slb slb = {0,0};
 int rc;

 if (!(rc = copro_calculate_slb(mm, ea, &slb))) {
  cxl_load_segment(ctx, &slb);
 }

 return rc;
}
