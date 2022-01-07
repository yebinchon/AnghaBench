
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct atmel_private {scalar_t__ host_info_base; } ;



__attribute__((used)) static inline u16 atmel_hi(struct atmel_private *priv, u16 offset)
{
 return priv->host_info_base + offset;
}
