
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sis190_private {int features; } ;


 int F_HAS_RGMII ;

__attribute__((used)) static void sis190_set_rgmii(struct sis190_private *tp, u8 reg)
{
 tp->features |= (reg & 0x80) ? F_HAS_RGMII : 0;
}
