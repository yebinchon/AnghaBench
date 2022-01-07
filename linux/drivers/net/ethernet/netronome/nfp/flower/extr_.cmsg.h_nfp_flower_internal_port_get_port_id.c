
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int FIELD_PREP (int ,int ) ;
 int NFP_FLOWER_CMSG_PORT_PHYS_PORT_NUM ;
 int NFP_FLOWER_CMSG_PORT_TYPE ;
 int NFP_FLOWER_CMSG_PORT_TYPE_OTHER_PORT ;

__attribute__((used)) static inline u32 nfp_flower_internal_port_get_port_id(u8 internal_port)
{
 return FIELD_PREP(NFP_FLOWER_CMSG_PORT_PHYS_PORT_NUM, internal_port) |
  FIELD_PREP(NFP_FLOWER_CMSG_PORT_TYPE,
      NFP_FLOWER_CMSG_PORT_TYPE_OTHER_PORT);
}
