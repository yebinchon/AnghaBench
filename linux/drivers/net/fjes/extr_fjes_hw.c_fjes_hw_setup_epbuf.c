
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tail; int info_size; int rx_status; int * vlan_id; int frame_max; scalar_t__ buffer_size; int count_max; scalar_t__ head; int * mac_addr; scalar_t__ version; } ;
union ep_buffer_info {TYPE_1__ v1i; } ;
typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct epbuf_handler {scalar_t__ size; union ep_buffer_info* info; } ;


 int EP_BUFFER_SUPPORT_VLAN_MAX ;
 int EP_RING_NUM (scalar_t__,int ) ;
 int ETH_ALEN ;
 int FJES_MTU_TO_FRAME_SIZE (int ) ;
 int FJES_RX_MTU_CHANGING_DONE ;
 int memset (union ep_buffer_info*,int ,int) ;

void fjes_hw_setup_epbuf(struct epbuf_handler *epbh, u8 *mac_addr, u32 mtu)
{
 union ep_buffer_info *info = epbh->info;
 u16 vlan_id[EP_BUFFER_SUPPORT_VLAN_MAX];
 int i;

 for (i = 0; i < EP_BUFFER_SUPPORT_VLAN_MAX; i++)
  vlan_id[i] = info->v1i.vlan_id[i];

 memset(info, 0, sizeof(union ep_buffer_info));

 info->v1i.version = 0;

 for (i = 0; i < ETH_ALEN; i++)
  info->v1i.mac_addr[i] = mac_addr[i];

 info->v1i.head = 0;
 info->v1i.tail = 1;

 info->v1i.info_size = sizeof(union ep_buffer_info);
 info->v1i.buffer_size = epbh->size - info->v1i.info_size;

 info->v1i.frame_max = FJES_MTU_TO_FRAME_SIZE(mtu);
 info->v1i.count_max =
     EP_RING_NUM(info->v1i.buffer_size, info->v1i.frame_max);

 for (i = 0; i < EP_BUFFER_SUPPORT_VLAN_MAX; i++)
  info->v1i.vlan_id[i] = vlan_id[i];

 info->v1i.rx_status |= FJES_RX_MTU_CHANGING_DONE;
}
