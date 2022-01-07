
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nfp_app {int dummy; } ;
typedef enum nfp_repr_type { ____Placeholder_nfp_repr_type } nfp_repr_type ;


 int FIELD_GET (int ,int ) ;
 int NFP_FLOWER_CMSG_PORT_PHYS_PORT_NUM ;
 int NFP_FLOWER_CMSG_PORT_TYPE ;


 int NFP_FLOWER_CMSG_PORT_VNIC ;
 int NFP_FLOWER_CMSG_PORT_VNIC_TYPE ;
 int NFP_FLOWER_CMSG_PORT_VNIC_TYPE_PF ;
 int NFP_REPR_TYPE_PF ;
 int NFP_REPR_TYPE_PHYS_PORT ;
 int NFP_REPR_TYPE_VF ;
 int __NFP_REPR_TYPE_MAX ;

__attribute__((used)) static enum nfp_repr_type
nfp_flower_repr_get_type_and_port(struct nfp_app *app, u32 port_id, u8 *port)
{
 switch (FIELD_GET(NFP_FLOWER_CMSG_PORT_TYPE, port_id)) {
 case 128:
  *port = FIELD_GET(NFP_FLOWER_CMSG_PORT_PHYS_PORT_NUM,
      port_id);
  return NFP_REPR_TYPE_PHYS_PORT;

 case 129:
  *port = FIELD_GET(NFP_FLOWER_CMSG_PORT_VNIC, port_id);
  if (FIELD_GET(NFP_FLOWER_CMSG_PORT_VNIC_TYPE, port_id) ==
      NFP_FLOWER_CMSG_PORT_VNIC_TYPE_PF)
   return NFP_REPR_TYPE_PF;
  else
   return NFP_REPR_TYPE_VF;
 }

 return __NFP_REPR_TYPE_MAX;
}
