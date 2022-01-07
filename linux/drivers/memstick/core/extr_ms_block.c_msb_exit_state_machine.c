
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msb_data {int state; int exit_error; TYPE_1__* card; } ;
struct TYPE_2__ {int mrq_complete; int next_request; } ;


 int ENXIO ;
 int WARN_ON (int) ;
 int complete (int *) ;
 int h_msb_default_bad ;
 int msb_invalidate_reg_window (struct msb_data*) ;

__attribute__((used)) static int msb_exit_state_machine(struct msb_data *msb, int error)
{
 WARN_ON(msb->state == -1);

 msb->state = -1;
 msb->exit_error = error;
 msb->card->next_request = h_msb_default_bad;


 if (error)
  msb_invalidate_reg_window(msb);

 complete(&msb->card->mrq_complete);
 return -ENXIO;
}
