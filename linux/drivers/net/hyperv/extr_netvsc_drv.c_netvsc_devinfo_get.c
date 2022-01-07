
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netvsc_device_info {int recv_section_size; int recv_sections; int send_section_size; int send_sections; int num_chn; int rss_key; } ;
struct netvsc_device {TYPE_1__* extension; int recv_section_size; int recv_section_cnt; int send_section_size; int send_section_cnt; int num_chn; } ;
struct TYPE_2__ {int rss_key; } ;


 int GFP_ATOMIC ;
 int NETVSC_DEFAULT_RX ;
 int NETVSC_DEFAULT_TX ;
 int NETVSC_HASH_KEYLEN ;
 int NETVSC_RECV_SECTION_SIZE ;
 int NETVSC_SEND_SECTION_SIZE ;
 int VRSS_CHANNEL_DEFAULT ;
 struct netvsc_device_info* kzalloc (int,int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static struct netvsc_device_info *netvsc_devinfo_get
   (struct netvsc_device *nvdev)
{
 struct netvsc_device_info *dev_info;

 dev_info = kzalloc(sizeof(*dev_info), GFP_ATOMIC);

 if (!dev_info)
  return ((void*)0);

 if (nvdev) {
  dev_info->num_chn = nvdev->num_chn;
  dev_info->send_sections = nvdev->send_section_cnt;
  dev_info->send_section_size = nvdev->send_section_size;
  dev_info->recv_sections = nvdev->recv_section_cnt;
  dev_info->recv_section_size = nvdev->recv_section_size;

  memcpy(dev_info->rss_key, nvdev->extension->rss_key,
         NETVSC_HASH_KEYLEN);
 } else {
  dev_info->num_chn = VRSS_CHANNEL_DEFAULT;
  dev_info->send_sections = NETVSC_DEFAULT_TX;
  dev_info->send_section_size = NETVSC_SEND_SECTION_SIZE;
  dev_info->recv_sections = NETVSC_DEFAULT_RX;
  dev_info->recv_section_size = NETVSC_RECV_SECTION_SIZE;
 }

 return dev_info;
}
