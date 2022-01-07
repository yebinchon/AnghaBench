
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct dpaa2_eth_priv {scalar_t__ dpni_ver_major; int dpni_ver_minor; } ;



__attribute__((used)) static inline int dpaa2_eth_cmp_dpni_ver(struct dpaa2_eth_priv *priv,
      u16 ver_major, u16 ver_minor)
{
 if (priv->dpni_ver_major == ver_major)
  return priv->dpni_ver_minor - ver_minor;
 return priv->dpni_ver_major - ver_major;
}
