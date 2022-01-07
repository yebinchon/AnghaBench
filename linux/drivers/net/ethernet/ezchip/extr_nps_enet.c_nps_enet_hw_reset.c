
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nps_enet_priv {int dummy; } ;
struct net_device {int dummy; } ;


 int NPS_ENET_ENABLE ;
 int NPS_ENET_REG_GE_RST ;
 int NPS_ENET_REG_PHASE_FIFO_CTL ;
 int PHASE_FIFO_CTL_INIT_SHIFT ;
 int PHASE_FIFO_CTL_RST_SHIFT ;
 int RST_GMAC_0_SHIFT ;
 struct nps_enet_priv* netdev_priv (struct net_device*) ;
 int nps_enet_reg_set (struct nps_enet_priv*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void nps_enet_hw_reset(struct net_device *ndev)
{
 struct nps_enet_priv *priv = netdev_priv(ndev);
 u32 ge_rst_value = 0, phase_fifo_ctl_value = 0;


 ge_rst_value |= NPS_ENET_ENABLE << RST_GMAC_0_SHIFT;
 nps_enet_reg_set(priv, NPS_ENET_REG_GE_RST, ge_rst_value);
 usleep_range(10, 20);
 ge_rst_value = 0;
 nps_enet_reg_set(priv, NPS_ENET_REG_GE_RST, ge_rst_value);


 phase_fifo_ctl_value |= NPS_ENET_ENABLE << PHASE_FIFO_CTL_RST_SHIFT;
 phase_fifo_ctl_value |= NPS_ENET_ENABLE << PHASE_FIFO_CTL_INIT_SHIFT;
 nps_enet_reg_set(priv, NPS_ENET_REG_PHASE_FIFO_CTL,
    phase_fifo_ctl_value);
 usleep_range(10, 20);
 phase_fifo_ctl_value = 0;
 nps_enet_reg_set(priv, NPS_ENET_REG_PHASE_FIFO_CTL,
    phase_fifo_ctl_value);
}
