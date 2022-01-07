
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct thunderbolt_ip_status {int hdr; } ;
struct tbnet {int command_id; struct tb_xdomain* xd; } ;
struct tb_xdomain {int remote_uuid; int local_uuid; } ;
typedef int reply ;


 int TBIP_STATUS ;
 int TB_CFG_PKG_XDOMAIN_RESP ;
 int atomic_inc_return (int *) ;
 int memset (struct thunderbolt_ip_status*,int ,int) ;
 int tb_xdomain_response (struct tb_xdomain*,struct thunderbolt_ip_status*,int,int ) ;
 int tbnet_fill_header (int *,int ,int ,int ,int ,int ,int,int ) ;

__attribute__((used)) static int tbnet_logout_response(struct tbnet *net, u64 route, u8 sequence,
     u32 command_id)
{
 struct thunderbolt_ip_status reply;
 struct tb_xdomain *xd = net->xd;

 memset(&reply, 0, sizeof(reply));
 tbnet_fill_header(&reply.hdr, route, sequence, xd->local_uuid,
     xd->remote_uuid, TBIP_STATUS, sizeof(reply),
     atomic_inc_return(&net->command_id));
 return tb_xdomain_response(xd, &reply, sizeof(reply),
       TB_CFG_PKG_XDOMAIN_RESP);
}
