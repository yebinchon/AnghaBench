
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {struct goya_device* asic_specific; } ;
struct goya_device {int hw_cap_initialized; } ;


 int HW_CAP_CPU_Q ;
 int hl_fw_get_eeprom_data (struct hl_device*,void*,size_t) ;

__attribute__((used)) static int goya_get_eeprom_data(struct hl_device *hdev, void *data,
    size_t max_size)
{
 struct goya_device *goya = hdev->asic_specific;

 if (!(goya->hw_cap_initialized & HW_CAP_CPU_Q))
  return 0;

 return hl_fw_get_eeprom_data(hdev, data, max_size);
}
