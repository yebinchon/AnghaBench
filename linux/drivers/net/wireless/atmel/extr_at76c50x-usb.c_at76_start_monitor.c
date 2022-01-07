
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at76_req_scan {void* probe_delay; void* max_channel_time; void* min_channel_time; scalar_t__ international_scan; int scan_type; int channel; int bssid; } ;
struct at76_priv {int udev; int scan_max_time; int scan_min_time; int channel; } ;
typedef int scan ;


 int CMD_SCAN ;
 int SCAN_TYPE_PASSIVE ;
 int at76_get_cmd_status (int ,int ) ;
 int at76_set_card_command (int ,int ,struct at76_req_scan*,int) ;
 void* cpu_to_le16 (int ) ;
 int eth_broadcast_addr (int ) ;
 int memset (struct at76_req_scan*,int ,int) ;

__attribute__((used)) static int at76_start_monitor(struct at76_priv *priv)
{
 struct at76_req_scan scan;
 int ret;

 memset(&scan, 0, sizeof(struct at76_req_scan));
 eth_broadcast_addr(scan.bssid);

 scan.channel = priv->channel;
 scan.scan_type = SCAN_TYPE_PASSIVE;
 scan.international_scan = 0;
 scan.min_channel_time = cpu_to_le16(priv->scan_min_time);
 scan.max_channel_time = cpu_to_le16(priv->scan_max_time);
 scan.probe_delay = cpu_to_le16(0);

 ret = at76_set_card_command(priv->udev, CMD_SCAN, &scan, sizeof(scan));
 if (ret >= 0)
  ret = at76_get_cmd_status(priv->udev, CMD_SCAN);

 return ret;
}
