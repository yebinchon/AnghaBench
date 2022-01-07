
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sky2_port {scalar_t__ speed; int port; int hw; } ;


 int GM_SERIAL_MODE ;
 int GM_SMOD_IPG_MSK ;
 int IPG_DATA_DEF_1000 ;
 int IPG_DATA_DEF_10_100 ;
 int IPG_DATA_VAL (int ) ;
 scalar_t__ SPEED_100 ;
 int gma_read16 (int ,int ,int ) ;
 int gma_write16 (int ,int ,int ,int ) ;

__attribute__((used)) static void sky2_set_ipg(struct sky2_port *sky2)
{
 u16 reg;

 reg = gma_read16(sky2->hw, sky2->port, GM_SERIAL_MODE);
 reg &= ~GM_SMOD_IPG_MSK;
 if (sky2->speed > SPEED_100)
  reg |= IPG_DATA_VAL(IPG_DATA_DEF_1000);
 else
  reg |= IPG_DATA_VAL(IPG_DATA_DEF_10_100);
 gma_write16(sky2->hw, sky2->port, GM_SERIAL_MODE, reg);
}
