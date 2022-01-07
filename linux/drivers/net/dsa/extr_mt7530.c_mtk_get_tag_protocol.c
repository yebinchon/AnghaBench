
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7530_priv {int dev; } ;
struct dsa_switch {struct mt7530_priv* priv; } ;
typedef enum dsa_tag_protocol { ____Placeholder_dsa_tag_protocol } dsa_tag_protocol ;


 int DSA_TAG_PROTO_MTK ;
 int DSA_TAG_PROTO_NONE ;
 int MT7530_CPU_PORT ;
 int dev_warn (int ,char*) ;

__attribute__((used)) static enum dsa_tag_protocol
mtk_get_tag_protocol(struct dsa_switch *ds, int port)
{
 struct mt7530_priv *priv = ds->priv;

 if (port != MT7530_CPU_PORT) {
  dev_warn(priv->dev,
    "port not matched with tagging CPU port\n");
  return DSA_TAG_PROTO_NONE;
 } else {
  return DSA_TAG_PROTO_MTK;
 }
}
