
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct i40e_vsi {TYPE_2__* netdev; int state; } ;
struct TYPE_5__ {TYPE_1__* netdev_ops; } ;
struct TYPE_4__ {int (* ndo_stop ) (TYPE_2__*) ;} ;


 int __I40E_VSI_DOWN ;
 int __I40E_VSI_NEEDS_RESTART ;
 int i40e_vsi_close (struct i40e_vsi*) ;
 scalar_t__ netif_running (TYPE_2__*) ;
 int set_bit (int ,int ) ;
 int stub1 (TYPE_2__*) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static void i40e_quiesce_vsi(struct i40e_vsi *vsi)
{
 if (test_bit(__I40E_VSI_DOWN, vsi->state))
  return;

 set_bit(__I40E_VSI_NEEDS_RESTART, vsi->state);
 if (vsi->netdev && netif_running(vsi->netdev))
  vsi->netdev->netdev_ops->ndo_stop(vsi->netdev);
 else
  i40e_vsi_close(vsi);
}
