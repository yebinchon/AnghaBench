
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_sock {int flags; } ;


 int VXLAN_F_COLLECT_METADATA ;
 scalar_t__ ip_tunnel_collect_metadata () ;

__attribute__((used)) static inline bool vxlan_collect_metadata(struct vxlan_sock *vs)
{
 return vs->flags & VXLAN_F_COLLECT_METADATA ||
        ip_tunnel_collect_metadata();
}
