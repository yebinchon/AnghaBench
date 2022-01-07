
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int status; } ;


 int STATUS_INIT ;

__attribute__((used)) static inline int ipw_is_init(struct ipw_priv *priv)
{
 return (priv->status & STATUS_INIT) ? 1 : 0;
}
