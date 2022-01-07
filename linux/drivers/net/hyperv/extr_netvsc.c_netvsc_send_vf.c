
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int serial; scalar_t__ allocated; } ;
struct TYPE_5__ {TYPE_1__ vf_assoc; } ;
struct TYPE_6__ {TYPE_2__ v4_msg; } ;
struct nvsp_message {TYPE_3__ msg; } ;
struct net_device_context {scalar_t__ vf_alloc; int vf_serial; } ;
struct net_device {int dummy; } ;


 int netdev_info (struct net_device*,char*,int ,char*) ;
 struct net_device_context* netdev_priv (struct net_device*) ;

__attribute__((used)) static void netvsc_send_vf(struct net_device *ndev,
      const struct nvsp_message *nvmsg)
{
 struct net_device_context *net_device_ctx = netdev_priv(ndev);

 net_device_ctx->vf_alloc = nvmsg->msg.v4_msg.vf_assoc.allocated;
 net_device_ctx->vf_serial = nvmsg->msg.v4_msg.vf_assoc.serial;
 netdev_info(ndev, "VF slot %u %s\n",
      net_device_ctx->vf_serial,
      net_device_ctx->vf_alloc ? "added" : "removed");
}
