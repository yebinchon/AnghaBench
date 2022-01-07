
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nfp_tun_mac_addr_offload {int addr; void* index; void* count; void* flags; } ;
struct nfp_app {int dummy; } ;
typedef int payload ;


 int GFP_KERNEL ;
 int NFP_FLOWER_CMSG_TYPE_TUN_MAC ;
 int NFP_TUN_MAC_OFFLOAD_DEL_FLAG ;
 void* cpu_to_be16 (int) ;
 int ether_addr_copy (int ,int *) ;
 int memset (struct nfp_tun_mac_addr_offload*,int ,int) ;
 int nfp_flower_xmit_tun_conf (struct nfp_app*,int ,int,struct nfp_tun_mac_addr_offload*,int ) ;

__attribute__((used)) static int
__nfp_tunnel_offload_mac(struct nfp_app *app, u8 *mac, u16 idx, bool del)
{
 struct nfp_tun_mac_addr_offload payload;

 memset(&payload, 0, sizeof(payload));

 if (del)
  payload.flags = cpu_to_be16(NFP_TUN_MAC_OFFLOAD_DEL_FLAG);


 payload.count = cpu_to_be16(1);
 payload.index = cpu_to_be16(idx);
 ether_addr_copy(payload.addr, mac);

 return nfp_flower_xmit_tun_conf(app, NFP_FLOWER_CMSG_TYPE_TUN_MAC,
     sizeof(struct nfp_tun_mac_addr_offload),
     &payload, GFP_KERNEL);
}
