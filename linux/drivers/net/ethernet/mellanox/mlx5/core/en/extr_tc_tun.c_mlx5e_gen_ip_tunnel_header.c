
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_encap_entry {TYPE_1__* tunnel; } ;
typedef int __u8 ;
struct TYPE_2__ {int (* generate_ip_tun_hdr ) (char*,int *,struct mlx5e_encap_entry*) ;} ;


 int EOPNOTSUPP ;
 int pr_warn (char*) ;
 int stub1 (char*,int *,struct mlx5e_encap_entry*) ;

__attribute__((used)) static int mlx5e_gen_ip_tunnel_header(char buf[], __u8 *ip_proto,
          struct mlx5e_encap_entry *e)
{
 if (!e->tunnel) {
  pr_warn("mlx5: Cannot generate tunnel header for this tunnel\n");
  return -EOPNOTSUPP;
 }

 return e->tunnel->generate_ip_tun_hdr(buf, ip_proto, e);
}
