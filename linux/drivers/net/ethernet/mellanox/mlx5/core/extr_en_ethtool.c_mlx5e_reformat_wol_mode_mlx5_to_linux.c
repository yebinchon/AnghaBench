
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int __u32 ;


 int MLX5_WOL_ARP ;
 int MLX5_WOL_BROADCAST ;
 int MLX5_WOL_MAGIC ;
 int MLX5_WOL_MULTICAST ;
 int MLX5_WOL_PHY_ACTIVITY ;
 int MLX5_WOL_SECURED_MAGIC ;
 int MLX5_WOL_UNICAST ;
 int WAKE_ARP ;
 int WAKE_BCAST ;
 int WAKE_MAGIC ;
 int WAKE_MAGICSECURE ;
 int WAKE_MCAST ;
 int WAKE_PHY ;
 int WAKE_UCAST ;

__attribute__((used)) static __u32 mlx5e_reformat_wol_mode_mlx5_to_linux(u8 mode)
{
 __u32 ret = 0;

 if (mode & MLX5_WOL_MAGIC)
  ret |= WAKE_MAGIC;

 if (mode & MLX5_WOL_SECURED_MAGIC)
  ret |= WAKE_MAGICSECURE;

 if (mode & MLX5_WOL_ARP)
  ret |= WAKE_ARP;

 if (mode & MLX5_WOL_BROADCAST)
  ret |= WAKE_BCAST;

 if (mode & MLX5_WOL_MULTICAST)
  ret |= WAKE_MCAST;

 if (mode & MLX5_WOL_UNICAST)
  ret |= WAKE_UCAST;

 if (mode & MLX5_WOL_PHY_ACTIVITY)
  ret |= WAKE_PHY;

 return ret;
}
