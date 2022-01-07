
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;


 int DCBX_APP_SF_IEEE_UDP_PORT ;
 scalar_t__ QED_UDP_PORT_TYPE_ROCE_V2 ;
 int qed_dcbx_app_port (int ) ;
 int qed_dcbx_ieee_app_port (int ,int ) ;

__attribute__((used)) static bool qed_dcbx_roce_v2_tlv(u32 app_info_bitmap, u16 proto_id, bool ieee)
{
 bool port;

 if (ieee)
  port = qed_dcbx_ieee_app_port(app_info_bitmap,
           DCBX_APP_SF_IEEE_UDP_PORT);
 else
  port = qed_dcbx_app_port(app_info_bitmap);

 return !!(port && (proto_id == QED_UDP_PORT_TYPE_ROCE_V2));
}
