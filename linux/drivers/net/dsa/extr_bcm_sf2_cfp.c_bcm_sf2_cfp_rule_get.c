
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int location; } ;
struct ethtool_rxnfc {int data; TYPE_1__ fs; } ;
struct cfp_rule {int fs; } ;
struct bcm_sf2_priv {int dummy; } ;


 int EINVAL ;
 struct cfp_rule* bcm_sf2_cfp_rule_find (struct bcm_sf2_priv*,int,int ) ;
 int bcm_sf2_cfp_rule_size (struct bcm_sf2_priv*) ;
 int bcm_sf2_invert_masks (TYPE_1__*) ;
 int memcpy (TYPE_1__*,int *,int) ;

__attribute__((used)) static int bcm_sf2_cfp_rule_get(struct bcm_sf2_priv *priv, int port,
    struct ethtool_rxnfc *nfc)
{
 struct cfp_rule *rule;

 rule = bcm_sf2_cfp_rule_find(priv, port, nfc->fs.location);
 if (!rule)
  return -EINVAL;

 memcpy(&nfc->fs, &rule->fs, sizeof(rule->fs));

 bcm_sf2_invert_masks(&nfc->fs);


 nfc->data = bcm_sf2_cfp_rule_size(priv);

 return 0;
}
