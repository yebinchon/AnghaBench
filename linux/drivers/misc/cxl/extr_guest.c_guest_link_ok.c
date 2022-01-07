
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_afu {int dummy; } ;
struct cxl {int dummy; } ;


 int H_STATE_NORMAL ;
 int afu_read_error_state (struct cxl_afu*,int*) ;

__attribute__((used)) static bool guest_link_ok(struct cxl *cxl, struct cxl_afu *afu)
{
 int state;

 if (afu && (!afu_read_error_state(afu, &state))) {
  if (state == H_STATE_NORMAL)
   return 1;
 }

 return 0;
}
