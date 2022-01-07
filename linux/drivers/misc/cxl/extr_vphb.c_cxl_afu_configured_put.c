
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_afu {int configured_state; } ;


 int atomic_dec_if_positive (int *) ;

__attribute__((used)) static void cxl_afu_configured_put(struct cxl_afu *afu)
{
 atomic_dec_if_positive(&afu->configured_state);
}
