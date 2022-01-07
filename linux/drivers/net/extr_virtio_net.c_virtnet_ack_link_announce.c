
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtnet_info {TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; } ;


 int VIRTIO_NET_CTRL_ANNOUNCE ;
 int VIRTIO_NET_CTRL_ANNOUNCE_ACK ;
 int dev_warn (int *,char*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int virtnet_send_command (struct virtnet_info*,int ,int ,int *) ;

__attribute__((used)) static void virtnet_ack_link_announce(struct virtnet_info *vi)
{
 rtnl_lock();
 if (!virtnet_send_command(vi, VIRTIO_NET_CTRL_ANNOUNCE,
      VIRTIO_NET_CTRL_ANNOUNCE_ACK, ((void*)0)))
  dev_warn(&vi->dev->dev, "Failed to ack link announce.\n");
 rtnl_unlock();
}
