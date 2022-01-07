
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxl_afu {TYPE_1__* guest; int slice; } ;
struct TYPE_2__ {int handle; } ;


 int cxl_h_reset_afu (int ) ;
 int pr_devel (char*,int ) ;

__attribute__((used)) static int guest_afu_reset(struct cxl_afu *afu)
{
 pr_devel("AFU(%d) reset request\n", afu->slice);
 return cxl_h_reset_afu(afu->guest->handle);
}
