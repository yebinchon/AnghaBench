
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct sja1105_private {TYPE_2__* ds; } ;
struct sja1105_mgmt_entry {int enfport; int takets; scalar_t__ tsreg; int destports; int macaddr; int member_0; } ;
struct ethhdr {int h_dest; } ;
struct dsa_switch {TYPE_1__* ports; struct sja1105_private* priv; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int slave; } ;


 int BIT (int) ;
 int BLK_IDX_MGMT_ROUTE ;
 int NETDEV_TX_OK ;
 int cpu_relax () ;
 int dev_err_ratelimited (int ,char*) ;
 int dsa_enqueue_skb (struct sk_buff*,int ) ;
 struct ethhdr* eth_hdr (struct sk_buff*) ;
 int ether_addr_to_u64 (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int sja1105_dynamic_config_read (struct sja1105_private*,int ,int,struct sja1105_mgmt_entry*) ;
 int sja1105_dynamic_config_write (struct sja1105_private*,int ,int,struct sja1105_mgmt_entry*,int) ;

__attribute__((used)) static int sja1105_mgmt_xmit(struct dsa_switch *ds, int port, int slot,
        struct sk_buff *skb, bool takets)
{
 struct sja1105_mgmt_entry mgmt_route = {0};
 struct sja1105_private *priv = ds->priv;
 struct ethhdr *hdr;
 int timeout = 10;
 int rc;

 hdr = eth_hdr(skb);

 mgmt_route.macaddr = ether_addr_to_u64(hdr->h_dest);
 mgmt_route.destports = BIT(port);
 mgmt_route.enfport = 1;
 mgmt_route.tsreg = 0;
 mgmt_route.takets = takets;

 rc = sja1105_dynamic_config_write(priv, BLK_IDX_MGMT_ROUTE,
       slot, &mgmt_route, 1);
 if (rc < 0) {
  kfree_skb(skb);
  return rc;
 }


 dsa_enqueue_skb(skb, ds->ports[port].slave);


 do {
  rc = sja1105_dynamic_config_read(priv, BLK_IDX_MGMT_ROUTE,
       slot, &mgmt_route);
  if (rc < 0) {
   dev_err_ratelimited(priv->ds->dev,
         "failed to poll for mgmt route\n");
   continue;
  }





  cpu_relax();
 } while (mgmt_route.enfport && --timeout);

 if (!timeout) {





  sja1105_dynamic_config_write(priv, BLK_IDX_MGMT_ROUTE,
          slot, &mgmt_route, 0);
  dev_err_ratelimited(priv->ds->dev, "xmit timed out\n");
 }

 return NETDEV_TX_OK;
}
