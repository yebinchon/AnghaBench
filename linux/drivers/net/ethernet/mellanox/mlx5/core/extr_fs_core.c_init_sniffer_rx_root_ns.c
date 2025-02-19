
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_flow_steering {TYPE_1__* sniffer_rx_root_ns; } ;
struct fs_prio {int dummy; } ;
struct TYPE_2__ {int ns; } ;


 int ENOMEM ;
 int FS_FT_SNIFFER_RX ;
 int PTR_ERR_OR_ZERO (struct fs_prio*) ;
 TYPE_1__* create_root_ns (struct mlx5_flow_steering*,int ) ;
 struct fs_prio* fs_create_prio (int *,int ,int) ;

__attribute__((used)) static int init_sniffer_rx_root_ns(struct mlx5_flow_steering *steering)
{
 struct fs_prio *prio;

 steering->sniffer_rx_root_ns = create_root_ns(steering, FS_FT_SNIFFER_RX);
 if (!steering->sniffer_rx_root_ns)
  return -ENOMEM;


 prio = fs_create_prio(&steering->sniffer_rx_root_ns->ns, 0, 1);
 return PTR_ERR_OR_ZERO(prio);
}
