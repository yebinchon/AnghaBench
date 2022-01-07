
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx4_en_priv {int dummy; } ;
typedef int __be32 ;


 int be32_to_cpu (int) ;
 int cpu_to_be32 (int ) ;
 int en_info (struct mlx4_en_priv*,char*,int ) ;
 int speed2ptys_link_modes (int ) ;

__attribute__((used)) static __be32 speed_set_ptys_admin(struct mlx4_en_priv *priv, u32 speed,
       __be32 proto_cap)
{
 __be32 proto_admin = 0;

 if (!speed) {
  proto_admin = proto_cap;
  en_info(priv, "Speed was set to 0, Reset advertised Link Modes to default (%x)\n",
   be32_to_cpu(proto_cap));
 } else {
  u32 ptys_link_modes = speed2ptys_link_modes(speed);

  proto_admin = cpu_to_be32(ptys_link_modes) & proto_cap;
  en_info(priv, "Setting Speed to %d\n", speed);
 }
 return proto_admin;
}
