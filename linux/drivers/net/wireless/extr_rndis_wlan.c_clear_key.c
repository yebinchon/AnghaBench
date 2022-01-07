
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct rndis_wlan_private {int * encr_keys; } ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void clear_key(struct rndis_wlan_private *priv, u8 idx)
{
 memset(&priv->encr_keys[idx], 0, sizeof(priv->encr_keys[idx]));
}
