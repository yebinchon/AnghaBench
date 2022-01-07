
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct atmel_private {int dev; } ;


 int DR ;
 int atmel_write16 (int ,int ,int) ;
 int atmel_writeAR (int ,int ) ;

__attribute__((used)) static void atmel_wmem32(struct atmel_private *priv, u16 pos, u32 data)
{
 atmel_writeAR(priv->dev, pos);
 atmel_write16(priv->dev, DR, data);
 atmel_write16(priv->dev, DR, data >> 16);
}
