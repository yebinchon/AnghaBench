
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int framerate; } ;
struct TYPE_4__ {TYPE_1__ params; } ;


 int MCHIP_HIC_S_RATE ;
 int mchip_set (int ,int ) ;
 TYPE_2__ meye ;

__attribute__((used)) static void mchip_set_framerate(void)
{
 mchip_set(MCHIP_HIC_S_RATE, meye.params.framerate);
}
