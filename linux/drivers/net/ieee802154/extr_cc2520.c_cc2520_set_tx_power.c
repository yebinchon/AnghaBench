
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cc2520_private {int dummy; } ;
typedef int s32 ;


 int CC2520_TXPOWER ;
 int EINVAL ;
 int cc2520_write_register (struct cc2520_private*,int ,int) ;

__attribute__((used)) static inline int cc2520_set_tx_power(struct cc2520_private *priv, s32 mbm)
{
 u8 power;

 switch (mbm) {
 case 500:
  power = 0xF7;
  break;
 case 300:
  power = 0xF2;
  break;
 case 200:
  power = 0xAB;
  break;
 case 100:
  power = 0x13;
  break;
 case 0:
  power = 0x32;
  break;
 case -200:
  power = 0x81;
  break;
 case -400:
  power = 0x88;
  break;
 case -700:
  power = 0x2C;
  break;
 case -1800:
  power = 0x03;
  break;
 default:
  return -EINVAL;
 }

 return cc2520_write_register(priv, CC2520_TXPOWER, power);
}
