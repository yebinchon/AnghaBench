
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct thunderbolt_ip_login_response {int dummy; } ;
struct thunderbolt_ip_login {int transmit_path; int proto_version; int hdr; } ;
struct tbnet {int command_id; struct tb_xdomain* xd; } ;
struct tb_xdomain {int remote_uuid; int local_uuid; int route; } ;
typedef int request ;
typedef int reply ;


 int TBIP_LOGIN ;
 int TBIP_LOGIN_PROTO_VERSION ;
 int TBNET_LOCAL_PATH ;
 int TBNET_LOGIN_TIMEOUT ;
 int TB_CFG_PKG_XDOMAIN_RESP ;
 int atomic_inc_return (int *) ;
 int memset (struct thunderbolt_ip_login*,int ,int) ;
 int tb_xdomain_request (struct tb_xdomain*,struct thunderbolt_ip_login*,int,int ,struct thunderbolt_ip_login_response*,int,int ,int ) ;
 int tbnet_fill_header (int *,int ,int ,int ,int ,int ,int,int ) ;

__attribute__((used)) static int tbnet_login_request(struct tbnet *net, u8 sequence)
{
 struct thunderbolt_ip_login_response reply;
 struct thunderbolt_ip_login request;
 struct tb_xdomain *xd = net->xd;

 memset(&request, 0, sizeof(request));
 tbnet_fill_header(&request.hdr, xd->route, sequence, xd->local_uuid,
     xd->remote_uuid, TBIP_LOGIN, sizeof(request),
     atomic_inc_return(&net->command_id));

 request.proto_version = TBIP_LOGIN_PROTO_VERSION;
 request.transmit_path = TBNET_LOCAL_PATH;

 return tb_xdomain_request(xd, &request, sizeof(request),
      TB_CFG_PKG_XDOMAIN_RESP, &reply,
      sizeof(reply), TB_CFG_PKG_XDOMAIN_RESP,
      TBNET_LOGIN_TIMEOUT);
}
