
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {void* txpower_max; void* txpower_min; void* txpower_cur; int current_addr; } ;
typedef void* s16 ;


 int SNMP_MIB_OID_11D_ENABLE ;
 int eth_broadcast_addr (int ) ;
 int lbs_get_tx_power (struct lbs_private*,void**,void**,void**) ;
 int lbs_set_mac_control_sync (struct lbs_private*) ;
 int lbs_set_snmp_mib (struct lbs_private*,int ,int) ;
 int lbs_update_hw_spec (struct lbs_private*) ;

__attribute__((used)) static int lbs_setup_firmware(struct lbs_private *priv)
{
 int ret = -1;
 s16 curlevel = 0, minlevel = 0, maxlevel = 0;


 eth_broadcast_addr(priv->current_addr);
 ret = lbs_update_hw_spec(priv);
 if (ret)
  goto done;


 ret = lbs_get_tx_power(priv, &curlevel, &minlevel, &maxlevel);
 if (ret == 0) {
  priv->txpower_cur = curlevel;
  priv->txpower_min = minlevel;
  priv->txpower_max = maxlevel;
 }


 ret = lbs_set_snmp_mib(priv, SNMP_MIB_OID_11D_ENABLE, 1);
 if (ret)
  goto done;

 ret = lbs_set_mac_control_sync(priv);
done:
 return ret;
}
