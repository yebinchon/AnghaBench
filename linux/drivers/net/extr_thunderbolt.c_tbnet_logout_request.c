
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thunderbolt_ip_status {int dummy; } ;
struct thunderbolt_ip_logout {int hdr; } ;
struct tbnet {int command_id; struct tb_xdomain* xd; } ;
struct tb_xdomain {int remote_uuid; int local_uuid; int route; } ;
typedef int request ;
typedef int reply ;


 int TBIP_LOGOUT ;
 int TBNET_LOGOUT_TIMEOUT ;
 int TB_CFG_PKG_XDOMAIN_RESP ;
 int atomic_inc_return (int *) ;
 int memset (struct thunderbolt_ip_logout*,int ,int) ;
 int tb_xdomain_request (struct tb_xdomain*,struct thunderbolt_ip_logout*,int,int ,struct thunderbolt_ip_status*,int,int ,int ) ;
 int tbnet_fill_header (int *,int ,int ,int ,int ,int ,int,int ) ;

__attribute__((used)) static int tbnet_logout_request(struct tbnet *net)
{
 struct thunderbolt_ip_logout request;
 struct thunderbolt_ip_status reply;
 struct tb_xdomain *xd = net->xd;

 memset(&request, 0, sizeof(request));
 tbnet_fill_header(&request.hdr, xd->route, 0, xd->local_uuid,
     xd->remote_uuid, TBIP_LOGOUT, sizeof(request),
     atomic_inc_return(&net->command_id));

 return tb_xdomain_request(xd, &request, sizeof(request),
      TB_CFG_PKG_XDOMAIN_RESP, &reply,
      sizeof(reply), TB_CFG_PKG_XDOMAIN_RESP,
      TBNET_LOGOUT_TIMEOUT);
}
