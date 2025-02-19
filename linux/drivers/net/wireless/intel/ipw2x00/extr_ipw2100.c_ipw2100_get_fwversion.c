
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct ipw2100_priv {int dummy; } ;


 int EIO ;
 int IPW_ORD_STAT_FW_VER_NUM ;
 int MAX_FW_VERSION_LEN ;
 scalar_t__ ipw2100_get_ordinal (struct ipw2100_priv*,int ,char*,size_t*) ;

__attribute__((used)) static int ipw2100_get_fwversion(struct ipw2100_priv *priv, char *buf,
     size_t max)
{
 char ver[MAX_FW_VERSION_LEN];
 u32 len = MAX_FW_VERSION_LEN;
 u32 tmp;
 int i;

 if (ipw2100_get_ordinal(priv, IPW_ORD_STAT_FW_VER_NUM, ver, &len))
  return -EIO;
 tmp = max;
 if (len >= max)
  len = max - 1;
 for (i = 0; i < len; i++)
  buf[i] = ver[i];
 buf[i] = '\0';
 return tmp;
}
