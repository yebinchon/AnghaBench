
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bnad_iocmd_comp {int comp; scalar_t__ comp_status; } ;
typedef enum bfa_status { ____Placeholder_bfa_status } bfa_status ;


 int complete (int *) ;

void
bnad_cb_completion(void *arg, enum bfa_status status)
{
 struct bnad_iocmd_comp *iocmd_comp =
   (struct bnad_iocmd_comp *)arg;

 iocmd_comp->comp_status = (u32) status;
 complete(&iocmd_comp->comp);
}
