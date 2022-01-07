
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct rx_desc {int dummy; } ;
struct TYPE_2__ {int rx_desc_pos; } ;
struct atmel_private {TYPE_1__ host_info; } ;



__attribute__((used)) static inline u16 atmel_rx(struct atmel_private *priv, u16 offset, u16 desc)
{
 return priv->host_info.rx_desc_pos + (sizeof(struct rx_desc) * desc) + offset;
}
