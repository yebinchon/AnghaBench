
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpaa_priv {int * dpaa_bps; } ;


 int DPAA_BPS_NUM ;
 int dpaa_bp_free (int ) ;

__attribute__((used)) static void dpaa_bps_free(struct dpaa_priv *priv)
{
 int i;

 for (i = 0; i < DPAA_BPS_NUM; i++)
  dpaa_bp_free(priv->dpaa_bps[i]);
}
