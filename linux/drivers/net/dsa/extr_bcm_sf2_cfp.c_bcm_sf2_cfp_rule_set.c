
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* data; scalar_t__ vlan_etype; } ;
struct ethtool_rx_flow_spec {int flow_type; scalar_t__ location; TYPE_1__ m_ext; } ;
struct dsa_switch {int dummy; } ;
struct cfp_rule {int port; int next; int fs; } ;
struct TYPE_4__ {int rules_list; int used; } ;
struct bcm_sf2_priv {TYPE_2__ cfp; } ;


 scalar_t__ CFP_NUM_RULES ;
 int EBUSY ;
 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 int FLOW_EXT ;
 int GFP_KERNEL ;
 scalar_t__ RX_CLS_LOC_ANY ;
 int bcm_sf2_cfp_rule_cmp (struct bcm_sf2_priv*,int,struct ethtool_rx_flow_spec*) ;
 int bcm_sf2_cfp_rule_insert (struct dsa_switch*,int,struct ethtool_rx_flow_spec*) ;
 scalar_t__ bcm_sf2_cfp_rule_size (struct bcm_sf2_priv*) ;
 struct bcm_sf2_priv* bcm_sf2_to_priv (struct dsa_switch*) ;
 int kfree (struct cfp_rule*) ;
 struct cfp_rule* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int *,struct ethtool_rx_flow_spec*,int) ;
 scalar_t__ test_bit (scalar_t__,int ) ;

__attribute__((used)) static int bcm_sf2_cfp_rule_set(struct dsa_switch *ds, int port,
    struct ethtool_rx_flow_spec *fs)
{
 struct bcm_sf2_priv *priv = bcm_sf2_to_priv(ds);
 struct cfp_rule *rule = ((void*)0);
 int ret = -EINVAL;


 if ((fs->flow_type & FLOW_EXT) && (fs->m_ext.vlan_etype ||
      fs->m_ext.data[1]))
  return -EINVAL;

 if (fs->location != RX_CLS_LOC_ANY && fs->location >= CFP_NUM_RULES)
  return -EINVAL;

 if (fs->location != RX_CLS_LOC_ANY &&
     test_bit(fs->location, priv->cfp.used))
  return -EBUSY;

 if (fs->location != RX_CLS_LOC_ANY &&
     fs->location > bcm_sf2_cfp_rule_size(priv))
  return -EINVAL;

 ret = bcm_sf2_cfp_rule_cmp(priv, port, fs);
 if (ret == 0)
  return -EEXIST;

 rule = kzalloc(sizeof(*rule), GFP_KERNEL);
 if (!rule)
  return -ENOMEM;

 ret = bcm_sf2_cfp_rule_insert(ds, port, fs);
 if (ret) {
  kfree(rule);
  return ret;
 }

 rule->port = port;
 memcpy(&rule->fs, fs, sizeof(*fs));
 list_add_tail(&rule->next, &priv->cfp.rules_list);

 return ret;
}
