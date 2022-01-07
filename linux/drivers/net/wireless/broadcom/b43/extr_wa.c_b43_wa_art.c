
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int B43_OFDMTAB_ADVRETARD ;
 int B43_TAB_RETARD_SIZE ;
 int b43_ofdmtab_write32 (struct b43_wldev*,int ,int,int ) ;
 int * b43_tab_retard ;

__attribute__((used)) static void b43_wa_art(struct b43_wldev *dev)
{
 int i;

 for (i = 0; i < B43_TAB_RETARD_SIZE; i++)
   b43_ofdmtab_write32(dev, B43_OFDMTAB_ADVRETARD,
    i, b43_tab_retard[i]);
}
