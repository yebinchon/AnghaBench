
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct frame_info {int rew_op; int port; int tag_type; int vid; } ;


 int IFH_INJ_BYPASS ;

__attribute__((used)) static int ocelot_gen_ifh(u32 *ifh, struct frame_info *info)
{
 ifh[0] = IFH_INJ_BYPASS | ((0x1ff & info->rew_op) << 21);
 ifh[1] = (0xf00 & info->port) >> 8;
 ifh[2] = (0xff & info->port) << 24;
 ifh[3] = (info->tag_type << 16) | info->vid;

 return 0;
}
