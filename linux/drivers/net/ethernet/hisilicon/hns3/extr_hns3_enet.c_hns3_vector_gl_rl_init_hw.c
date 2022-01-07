
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct hns3_nic_priv {struct hnae3_handle* ae_handle; } ;
struct TYPE_8__ {int int_gl; } ;
struct TYPE_9__ {TYPE_3__ coal; } ;
struct TYPE_6__ {int int_gl; } ;
struct TYPE_7__ {TYPE_1__ coal; } ;
struct hns3_enet_tqp_vector {TYPE_4__ rx_group; TYPE_2__ tx_group; } ;
struct TYPE_10__ {int int_rl_setting; } ;
struct hnae3_handle {TYPE_5__ kinfo; } ;


 int hns3_set_vector_coalesce_rl (struct hns3_enet_tqp_vector*,int ) ;
 int hns3_set_vector_coalesce_rx_gl (struct hns3_enet_tqp_vector*,int ) ;
 int hns3_set_vector_coalesce_tx_gl (struct hns3_enet_tqp_vector*,int ) ;

__attribute__((used)) static void hns3_vector_gl_rl_init_hw(struct hns3_enet_tqp_vector *tqp_vector,
          struct hns3_nic_priv *priv)
{
 struct hnae3_handle *h = priv->ae_handle;

 hns3_set_vector_coalesce_tx_gl(tqp_vector,
           tqp_vector->tx_group.coal.int_gl);
 hns3_set_vector_coalesce_rx_gl(tqp_vector,
           tqp_vector->rx_group.coal.int_gl);
 hns3_set_vector_coalesce_rl(tqp_vector, h->kinfo.int_rl_setting);
}
