
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int pos; } ;
struct csiphy_lanes_cfg {int num_data; TYPE_2__* data; TYPE_1__ clk; } ;
struct csiphy_device {scalar_t__ base; } ;
struct csiphy_config {TYPE_3__* csi2; } ;
struct TYPE_6__ {struct csiphy_lanes_cfg lane_cfg; } ;
struct TYPE_5__ {int pos; } ;


 scalar_t__ CAMSS_CSI_PHY_GLBL_PWR_CFG ;
 scalar_t__ CAMSS_CSI_PHY_LNn_CFG2 (int ) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void csiphy_lanes_disable(struct csiphy_device *csiphy,
     struct csiphy_config *cfg)
{
 struct csiphy_lanes_cfg *c = &cfg->csi2->lane_cfg;
 u8 l = 0;
 int i = 0;

 for (i = 0; i <= c->num_data; i++) {
  if (i == c->num_data)
   l = c->clk.pos;
  else
   l = c->data[i].pos;

  writel_relaxed(0x0, csiphy->base +
          CAMSS_CSI_PHY_LNn_CFG2(l));
 }

 writel_relaxed(0x0, csiphy->base + CAMSS_CSI_PHY_GLBL_PWR_CFG);
}
