
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct gve_priv {TYPE_1__* reg_bar0; } ;
struct TYPE_2__ {int adminq_doorbell; } ;


 int iowrite32be (int ,int *) ;

__attribute__((used)) static void gve_adminq_kick_cmd(struct gve_priv *priv, u32 prod_cnt)
{
 iowrite32be(prod_cnt, &priv->reg_bar0->adminq_doorbell);
}
