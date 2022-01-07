
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ command_pos; } ;
struct atmel_private {TYPE_1__ host_info; } ;



__attribute__((used)) static inline u16 atmel_co(struct atmel_private *priv, u16 offset)
{
 return priv->host_info.command_pos + offset;
}
