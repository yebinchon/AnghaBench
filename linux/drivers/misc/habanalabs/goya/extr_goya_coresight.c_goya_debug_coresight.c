
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hl_device {int dev; } ;
struct hl_debug_params {int op; } ;


 int EINVAL ;







 int RREG32 (int ) ;
 int dev_err (int ,char*,int) ;
 int goya_config_bmon (struct hl_device*,struct hl_debug_params*) ;
 int goya_config_etf (struct hl_device*,struct hl_debug_params*) ;
 int goya_config_etr (struct hl_device*,struct hl_debug_params*) ;
 int goya_config_funnel (struct hl_device*,struct hl_debug_params*) ;
 int goya_config_spmu (struct hl_device*,struct hl_debug_params*) ;
 int goya_config_stm (struct hl_device*,struct hl_debug_params*) ;
 int mmPCIE_DBI_DEVICE_ID_VENDOR_ID_REG ;

int goya_debug_coresight(struct hl_device *hdev, void *data)
{
 struct hl_debug_params *params = data;
 u32 val;
 int rc = 0;

 switch (params->op) {
 case 129:
  rc = goya_config_stm(hdev, params);
  break;
 case 133:
  rc = goya_config_etf(hdev, params);
  break;
 case 132:
  rc = goya_config_etr(hdev, params);
  break;
 case 131:
  rc = goya_config_funnel(hdev, params);
  break;
 case 134:
  rc = goya_config_bmon(hdev, params);
  break;
 case 130:
  rc = goya_config_spmu(hdev, params);
  break;
 case 128:

  break;

 default:
  dev_err(hdev->dev, "Unknown coresight id %d\n", params->op);
  return -EINVAL;
 }


 val = RREG32(mmPCIE_DBI_DEVICE_ID_VENDOR_ID_REG);

 return rc;
}
