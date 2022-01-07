
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct host_app_area {int wmi_protocol_ver; } ;
struct ath6kl {int target_type; } ;


 int EIO ;
 int HI_ITEM (int ) ;
 int TARG_VTOP (int ,int ) ;
 int WMI_PROTOCOL_VERSION ;
 scalar_t__ ath6kl_diag_read32 (struct ath6kl*,int ,int *) ;
 scalar_t__ ath6kl_diag_write (struct ath6kl*,int ,int *,int) ;
 int ath6kl_get_hi_item_addr (struct ath6kl*,int ) ;
 int cpu_to_le32 (int ) ;
 int hi_app_host_interest ;

__attribute__((used)) static int ath6kl_set_host_app_area(struct ath6kl *ar)
{
 u32 address, data;
 struct host_app_area host_app_area;



 address = ath6kl_get_hi_item_addr(ar, HI_ITEM(hi_app_host_interest));
 address = TARG_VTOP(ar->target_type, address);

 if (ath6kl_diag_read32(ar, address, &data))
  return -EIO;

 address = TARG_VTOP(ar->target_type, data);
 host_app_area.wmi_protocol_ver = cpu_to_le32(WMI_PROTOCOL_VERSION);
 if (ath6kl_diag_write(ar, address, (u8 *) &host_app_area,
         sizeof(struct host_app_area)))
  return -EIO;

 return 0;
}
