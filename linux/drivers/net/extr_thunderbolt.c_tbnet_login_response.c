
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct thunderbolt_ip_login_response {int receiver_mac_len; int receiver_mac; int hdr; } ;
struct tbnet {TYPE_1__* dev; struct tb_xdomain* xd; } ;
struct tb_xdomain {int remote_uuid; int local_uuid; } ;
typedef int reply ;
struct TYPE_2__ {int dev_addr; } ;


 int ETH_ALEN ;
 int TBIP_LOGIN_RESPONSE ;
 int TB_CFG_PKG_XDOMAIN_RESP ;
 int memcpy (int ,int ,int ) ;
 int memset (struct thunderbolt_ip_login_response*,int ,int) ;
 int tb_xdomain_response (struct tb_xdomain*,struct thunderbolt_ip_login_response*,int,int ) ;
 int tbnet_fill_header (int *,int ,int ,int ,int ,int ,int,int ) ;

__attribute__((used)) static int tbnet_login_response(struct tbnet *net, u64 route, u8 sequence,
    u32 command_id)
{
 struct thunderbolt_ip_login_response reply;
 struct tb_xdomain *xd = net->xd;

 memset(&reply, 0, sizeof(reply));
 tbnet_fill_header(&reply.hdr, route, sequence, xd->local_uuid,
     xd->remote_uuid, TBIP_LOGIN_RESPONSE, sizeof(reply),
     command_id);
 memcpy(reply.receiver_mac, net->dev->dev_addr, ETH_ALEN);
 reply.receiver_mac_len = ETH_ALEN;

 return tb_xdomain_response(xd, &reply, sizeof(reply),
       TB_CFG_PKG_XDOMAIN_RESP);
}
