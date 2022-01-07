
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netvsc_device {int destroy; int tx_disable; int subchan_work; int subchan_open; int channel_init_wait; int pkt_align; int max_pkt; int wait_drain; } ;


 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int RNDIS_MAX_PKT_DEFAULT ;
 int RNDIS_PKT_ALIGN_DEFAULT ;
 int init_completion (int *) ;
 int init_waitqueue_head (int *) ;
 struct netvsc_device* kzalloc (int,int ) ;
 int netvsc_subchan_work ;

__attribute__((used)) static struct netvsc_device *alloc_net_device(void)
{
 struct netvsc_device *net_device;

 net_device = kzalloc(sizeof(struct netvsc_device), GFP_KERNEL);
 if (!net_device)
  return ((void*)0);

 init_waitqueue_head(&net_device->wait_drain);
 net_device->destroy = 0;
 net_device->tx_disable = 0;

 net_device->max_pkt = RNDIS_MAX_PKT_DEFAULT;
 net_device->pkt_align = RNDIS_PKT_ALIGN_DEFAULT;

 init_completion(&net_device->channel_init_wait);
 init_waitqueue_head(&net_device->subchan_open);
 INIT_WORK(&net_device->subchan_work, netvsc_subchan_work);

 return net_device;
}
