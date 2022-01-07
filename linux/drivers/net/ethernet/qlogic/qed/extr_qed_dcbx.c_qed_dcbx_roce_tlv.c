
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;


 scalar_t__ QED_ETH_TYPE_ROCE ;
 int qed_dcbx_app_ethtype (int ) ;
 int qed_dcbx_ieee_app_ethtype (int ) ;

__attribute__((used)) static bool qed_dcbx_roce_tlv(u32 app_info_bitmap, u16 proto_id, bool ieee)
{
 bool ethtype;

 if (ieee)
  ethtype = qed_dcbx_ieee_app_ethtype(app_info_bitmap);
 else
  ethtype = qed_dcbx_app_ethtype(app_info_bitmap);

 return !!(ethtype && (proto_id == QED_ETH_TYPE_ROCE));
}
