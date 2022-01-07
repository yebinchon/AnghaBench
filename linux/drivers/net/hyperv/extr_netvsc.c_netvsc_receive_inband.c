
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msg_type; } ;
struct nvsp_message {TYPE_1__ hdr; } ;
struct net_device {int dummy; } ;




 int netvsc_send_table (struct net_device*,struct nvsp_message const*) ;
 int netvsc_send_vf (struct net_device*,struct nvsp_message const*) ;

__attribute__((used)) static void netvsc_receive_inband(struct net_device *ndev,
       const struct nvsp_message *nvmsg)
{
 switch (nvmsg->hdr.msg_type) {
 case 128:
  netvsc_send_table(ndev, nvmsg);
  break;

 case 129:
  netvsc_send_vf(ndev, nvmsg);
  break;
 }
}
