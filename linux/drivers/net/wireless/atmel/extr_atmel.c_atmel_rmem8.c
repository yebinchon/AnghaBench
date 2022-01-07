
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct atmel_private {int dev; } ;


 int DR ;
 int atmel_read8 (int ,int ) ;
 int atmel_writeAR (int ,int ) ;

__attribute__((used)) static inline u8 atmel_rmem8(struct atmel_private *priv, u16 pos)
{
 atmel_writeAR(priv->dev, pos);
 return atmel_read8(priv->dev, DR);
}
