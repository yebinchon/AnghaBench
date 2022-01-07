
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tp_dst; } ;
struct ip_tunnel_info {TYPE_1__ key; } ;
typedef int __u16 ;


 int htons (int ) ;
 int memset (struct ip_tunnel_info*,int ,int) ;

__attribute__((used)) static void init_tnl_info(struct ip_tunnel_info *info, __u16 dst_port)
{
 memset(info, 0, sizeof(*info));
 info->key.tp_dst = htons(dst_port);
}
