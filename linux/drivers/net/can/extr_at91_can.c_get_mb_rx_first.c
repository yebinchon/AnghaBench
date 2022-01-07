
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int rx_first; } ;
struct at91_priv {TYPE_1__ devtype_data; } ;



__attribute__((used)) static inline unsigned int get_mb_rx_first(const struct at91_priv *priv)
{
 return priv->devtype_data.rx_first;
}
