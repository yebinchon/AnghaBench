
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DCBX_APP_SF ;
 scalar_t__ DCBX_APP_SF_PORT ;
 scalar_t__ QED_MFW_GET_FIELD (int ,int ) ;

__attribute__((used)) static bool qed_dcbx_app_port(u32 app_info_bitmap)
{
 return !!(QED_MFW_GET_FIELD(app_info_bitmap, DCBX_APP_SF) ==
    DCBX_APP_SF_PORT);
}
