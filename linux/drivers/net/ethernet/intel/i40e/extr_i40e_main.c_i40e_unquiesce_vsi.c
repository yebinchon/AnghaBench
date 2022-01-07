
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct i40e_vsi {TYPE_2__* netdev; int state; } ;
struct TYPE_5__ {TYPE_1__* netdev_ops; } ;
struct TYPE_4__ {int (* ndo_open ) (TYPE_2__*) ;} ;


 int __I40E_VSI_NEEDS_RESTART ;
 int i40e_vsi_open (struct i40e_vsi*) ;
 scalar_t__ netif_running (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;
 int test_and_clear_bit (int ,int ) ;

__attribute__((used)) static void i40e_unquiesce_vsi(struct i40e_vsi *vsi)
{
 if (!test_and_clear_bit(__I40E_VSI_NEEDS_RESTART, vsi->state))
  return;

 if (vsi->netdev && netif_running(vsi->netdev))
  vsi->netdev->netdev_ops->ndo_open(vsi->netdev);
 else
  i40e_vsi_open(vsi);
}
