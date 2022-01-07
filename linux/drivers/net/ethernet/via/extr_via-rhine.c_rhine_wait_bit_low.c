
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rhine_private {int dummy; } ;


 int rhine_wait_bit (struct rhine_private*,int ,int ,int) ;

__attribute__((used)) static void rhine_wait_bit_low(struct rhine_private *rp, u8 reg, u8 mask)
{
 rhine_wait_bit(rp, reg, mask, 1);
}
