
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct link_params {int port; struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int BP_PATH (struct bnx2x*) ;
 int MISC_REG_FOUR_PORT_PATH_SWAP ;
 int MISC_REG_FOUR_PORT_PATH_SWAP_OVWR ;
 int MISC_REG_FOUR_PORT_PORT_SWAP ;
 int MISC_REG_FOUR_PORT_PORT_SWAP_OVWR ;
 int MISC_REG_TWO_PORT_PATH_SWAP ;
 int MISC_REG_TWO_PORT_PATH_SWAP_OVWR ;
 int REG_RD (struct bnx2x*,int ) ;
 scalar_t__ bnx2x_is_4_port_mode (struct bnx2x*) ;

__attribute__((used)) static u8 bnx2x_get_warpcore_lane(struct bnx2x_phy *phy,
      struct link_params *params)
{
 u8 lane = 0;
 struct bnx2x *bp = params->bp;
 u32 path_swap, path_swap_ovr;
 u8 path, port;

 path = BP_PATH(bp);
 port = params->port;

 if (bnx2x_is_4_port_mode(bp)) {
  u32 port_swap, port_swap_ovr;


  path_swap_ovr = REG_RD(bp, MISC_REG_FOUR_PORT_PATH_SWAP_OVWR);
  if (path_swap_ovr & 0x1)
   path_swap = (path_swap_ovr & 0x2);
  else
   path_swap = REG_RD(bp, MISC_REG_FOUR_PORT_PATH_SWAP);

  if (path_swap)
   path = path ^ 1;


  port_swap_ovr = REG_RD(bp, MISC_REG_FOUR_PORT_PORT_SWAP_OVWR);
  if (port_swap_ovr & 0x1)
   port_swap = (port_swap_ovr & 0x2);
  else
   port_swap = REG_RD(bp, MISC_REG_FOUR_PORT_PORT_SWAP);

  if (port_swap)
   port = port ^ 1;

  lane = (port<<1) + path;
 } else {


  path_swap_ovr =
   REG_RD(bp, MISC_REG_TWO_PORT_PATH_SWAP_OVWR);
  if (path_swap_ovr & 0x1) {
   path_swap = (path_swap_ovr & 0x2);
  } else {
   path_swap =
    REG_RD(bp, MISC_REG_TWO_PORT_PATH_SWAP);
  }
  if (path_swap)
   path = path ^ 1;

  lane = path << 1 ;
 }
 return lane;
}
