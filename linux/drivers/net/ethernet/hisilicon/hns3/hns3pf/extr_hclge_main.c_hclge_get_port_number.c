
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef enum HLCGE_PORT_TYPE { ____Placeholder_HLCGE_PORT_TYPE } HLCGE_PORT_TYPE ;


 int HCLGE_NETWORK_PORT_ID_M ;
 int HCLGE_NETWORK_PORT_ID_S ;
 int HCLGE_PF_ID_M ;
 int HCLGE_PF_ID_S ;
 int HCLGE_PORT_TYPE_B ;
 int HCLGE_VF_ID_M ;
 int HCLGE_VF_ID_S ;
 int HOST_PORT ;
 int NETWORK_PORT ;
 int hnae3_set_bit (int ,int ,int) ;
 int hnae3_set_field (int ,int ,int ,int ) ;

__attribute__((used)) static u32 hclge_get_port_number(enum HLCGE_PORT_TYPE port_type, u8 pf_id,
     u8 vf_id, u8 network_port_id)
{
 u32 port_number = 0;

 if (port_type == HOST_PORT) {
  hnae3_set_field(port_number, HCLGE_PF_ID_M, HCLGE_PF_ID_S,
    pf_id);
  hnae3_set_field(port_number, HCLGE_VF_ID_M, HCLGE_VF_ID_S,
    vf_id);
  hnae3_set_bit(port_number, HCLGE_PORT_TYPE_B, HOST_PORT);
 } else {
  hnae3_set_field(port_number, HCLGE_NETWORK_PORT_ID_M,
    HCLGE_NETWORK_PORT_ID_S, network_port_id);
  hnae3_set_bit(port_number, HCLGE_PORT_TYPE_B, NETWORK_PORT);
 }

 return port_number;
}
