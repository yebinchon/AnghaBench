
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int be32_to_cpu (int const) ;
 int mmc_vddrange_to_ocrmask (int ,int ) ;
 int * of_get_property (struct device_node*,char*,int*) ;
 int pr_debug (char*,struct device_node*) ;
 int pr_err (char*,struct device_node*,...) ;

int mmc_of_parse_voltage(struct device_node *np, u32 *mask)
{
 const u32 *voltage_ranges;
 int num_ranges, i;

 voltage_ranges = of_get_property(np, "voltage-ranges", &num_ranges);
 if (!voltage_ranges) {
  pr_debug("%pOF: voltage-ranges unspecified\n", np);
  return 0;
 }
 num_ranges = num_ranges / sizeof(*voltage_ranges) / 2;
 if (!num_ranges) {
  pr_err("%pOF: voltage-ranges empty\n", np);
  return -EINVAL;
 }

 for (i = 0; i < num_ranges; i++) {
  const int j = i * 2;
  u32 ocr_mask;

  ocr_mask = mmc_vddrange_to_ocrmask(
    be32_to_cpu(voltage_ranges[j]),
    be32_to_cpu(voltage_ranges[j + 1]));
  if (!ocr_mask) {
   pr_err("%pOF: voltage-range #%d is invalid\n",
    np, i);
   return -EINVAL;
  }
  *mask |= ocr_mask;
 }

 return 1;
}
