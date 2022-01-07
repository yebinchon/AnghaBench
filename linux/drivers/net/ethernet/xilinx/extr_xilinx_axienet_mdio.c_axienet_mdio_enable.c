
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;
struct axienet_local {int ndev; scalar_t__ clk; } ;


 int DEFAULT_HOST_CLOCK ;
 int MAX_MDIO_FREQ ;
 int XAE_MDIO_MC_MDIOEN_MASK ;
 int XAE_MDIO_MC_OFFSET ;
 int axienet_iow (struct axienet_local*,int ,int) ;
 int axienet_mdio_wait_until_ready (struct axienet_local*) ;
 int clk_get_rate (scalar_t__) ;
 int netdev_dbg (int ,char*,int,int) ;
 int netdev_info (int ,char*,int) ;
 int netdev_warn (int ,char*) ;
 struct device_node* of_find_node_by_name (int *,char*) ;
 int of_node_put (struct device_node*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;

int axienet_mdio_enable(struct axienet_local *lp)
{
 u32 clk_div, host_clock;

 if (lp->clk) {
  host_clock = clk_get_rate(lp->clk);
 } else {
  struct device_node *np1;




  np1 = of_find_node_by_name(((void*)0), "cpu");
  if (!np1) {
   netdev_warn(lp->ndev, "Could not find CPU device node.\n");
   host_clock = DEFAULT_HOST_CLOCK;
  } else {
   int ret = of_property_read_u32(np1, "clock-frequency",
             &host_clock);
   if (ret) {
    netdev_warn(lp->ndev, "CPU clock-frequency property not found.\n");
    host_clock = DEFAULT_HOST_CLOCK;
   }
   of_node_put(np1);
  }
  netdev_info(lp->ndev, "Setting assumed host clock to %u\n",
       host_clock);
 }
 clk_div = (host_clock / (MAX_MDIO_FREQ * 2)) - 1;




 if (host_clock % (MAX_MDIO_FREQ * 2))
  clk_div++;

 netdev_dbg(lp->ndev,
     "Setting MDIO clock divisor to %u/%u Hz host clock.\n",
     clk_div, host_clock);

 axienet_iow(lp, XAE_MDIO_MC_OFFSET, clk_div | XAE_MDIO_MC_MDIOEN_MASK);

 return axienet_mdio_wait_until_ready(lp);
}
