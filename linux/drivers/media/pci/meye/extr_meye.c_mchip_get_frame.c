
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int mchip_fnum; } ;


 int MCHIP_MM_FIR (int ) ;
 int mchip_read (int ) ;
 TYPE_1__ meye ;

__attribute__((used)) static u32 mchip_get_frame(void)
{
 return mchip_read(MCHIP_MM_FIR(meye.mchip_fnum));
}
