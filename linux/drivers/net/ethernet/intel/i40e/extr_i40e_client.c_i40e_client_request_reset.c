
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int pf_id; } ;
struct i40e_pf {TYPE_2__ hw; TYPE_1__* pdev; int state; } ;
struct i40e_info {struct i40e_pf* pf; } ;
struct i40e_client {int dummy; } ;
struct TYPE_3__ {int dev; } ;




 int __I40E_PF_RESET_REQUESTED ;
 int dev_warn (int *,char*,int ,int) ;
 int i40e_service_event_schedule (struct i40e_pf*) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static void i40e_client_request_reset(struct i40e_info *ldev,
          struct i40e_client *client,
          u32 reset_level)
{
 struct i40e_pf *pf = ldev->pf;

 switch (reset_level) {
 case 128:
  set_bit(__I40E_PF_RESET_REQUESTED, pf->state);
  break;
 case 129:
  set_bit(__I40E_PF_RESET_REQUESTED, pf->state);
  break;
 default:
  dev_warn(&pf->pdev->dev,
    "Client for PF id %d requested an unsupported reset: %d.\n",
    pf->hw.pf_id, reset_level);
  break;
 }

 i40e_service_event_schedule(pf);
}
