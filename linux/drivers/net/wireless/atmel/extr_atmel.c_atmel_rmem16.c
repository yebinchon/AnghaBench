
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct atmel_private {int dev; } ;


 int DR ;
 int atmel_read16 (int ,int ) ;
 int atmel_writeAR (int ,int ) ;

__attribute__((used)) static inline u16 atmel_rmem16(struct atmel_private *priv, u16 pos)
{
 atmel_writeAR(priv->dev, pos);
 return atmel_read16(priv->dev, DR);
}
