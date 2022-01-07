
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int dummy; } ;


 int MII_TG3_MISC_SHDW ;
 int MII_TG3_MISC_SHDW_WREN ;
 int tg3_writephy (struct tg3*,int ,int) ;

__attribute__((used)) static int tg3_phy_shdw_write(struct tg3 *tp, int reg, u32 val)
{
 return tg3_writephy(tp, MII_TG3_MISC_SHDW,
       reg | val | MII_TG3_MISC_SHDW_WREN);
}
