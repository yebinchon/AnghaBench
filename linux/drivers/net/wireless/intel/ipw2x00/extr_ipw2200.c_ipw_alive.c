
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int dummy; } ;


 int ipw_read32 (struct ipw_priv*,int) ;

__attribute__((used)) static inline int ipw_alive(struct ipw_priv *priv)
{
 return ipw_read32(priv, 0x90) == 0xd55555d5;
}
