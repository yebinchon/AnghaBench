
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hnae3_handle {TYPE_1__* ae_algo; } ;
struct hnae3_ae_ops {int (* get_mdix_mode ) (struct hnae3_handle*,int *,int *) ;int (* get_link_mode ) (struct hnae3_handle*,int ,int ) ;int (* get_ksettings_an_result ) (struct hnae3_handle*,int *,int *,int *) ;} ;
struct TYPE_6__ {int eth_tp_mdix; int eth_tp_mdix_ctrl; int duplex; int speed; int autoneg; } ;
struct TYPE_5__ {int advertising; int supported; } ;
struct ethtool_link_ksettings {TYPE_3__ base; TYPE_2__ link_modes; } ;
struct TYPE_4__ {struct hnae3_ae_ops* ops; } ;


 int stub1 (struct hnae3_handle*,int *,int *,int *) ;
 int stub2 (struct hnae3_handle*,int ,int ) ;
 int stub3 (struct hnae3_handle*,int *,int *) ;

__attribute__((used)) static void hns3_get_ksettings(struct hnae3_handle *h,
          struct ethtool_link_ksettings *cmd)
{
 const struct hnae3_ae_ops *ops = h->ae_algo->ops;


 if (ops->get_ksettings_an_result)
  ops->get_ksettings_an_result(h,
          &cmd->base.autoneg,
          &cmd->base.speed,
          &cmd->base.duplex);


 if (ops->get_link_mode)
  ops->get_link_mode(h,
       cmd->link_modes.supported,
       cmd->link_modes.advertising);


 if (ops->get_mdix_mode)
  ops->get_mdix_mode(h, &cmd->base.eth_tp_mdix_ctrl,
       &cmd->base.eth_tp_mdix);
}
