
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mchip_fnum; } ;


 int MCHIP_MM_FIR (int) ;
 int mchip_set (int ,int ) ;
 TYPE_1__ meye ;

__attribute__((used)) static void mchip_free_frame(void)
{
 mchip_set(MCHIP_MM_FIR(meye.mchip_fnum), 0);
 meye.mchip_fnum++;
 meye.mchip_fnum %= 4;
}
