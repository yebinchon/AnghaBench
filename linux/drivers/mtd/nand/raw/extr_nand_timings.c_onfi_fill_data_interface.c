
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct onfi_params {unsigned long long tPROG; unsigned long long tBERS; unsigned long long tR; unsigned long tCCS; } ;
struct nand_sdr_timings {unsigned long long tPROG_max; unsigned long long tBERS_max; unsigned long long tR_max; unsigned long tCCS_min; } ;
struct TYPE_4__ {struct nand_sdr_timings sdr; } ;
struct nand_data_interface {TYPE_2__ timings; } ;
struct TYPE_3__ {struct onfi_params* onfi; } ;
struct nand_chip {TYPE_1__ parameters; struct nand_data_interface data_interface; } ;
typedef enum nand_data_interface_type { ____Placeholder_nand_data_interface_type } nand_data_interface_type ;


 int ARRAY_SIZE (struct nand_data_interface*) ;
 int EINVAL ;
 int NAND_SDR_IFACE ;
 unsigned long long ONFI_DYN_TIMING_MAX ;
 struct nand_data_interface* onfi_sdr_timings ;

int onfi_fill_data_interface(struct nand_chip *chip,
        enum nand_data_interface_type type,
        int timing_mode)
{
 struct nand_data_interface *iface = &chip->data_interface;
 struct onfi_params *onfi = chip->parameters.onfi;

 if (type != NAND_SDR_IFACE)
  return -EINVAL;

 if (timing_mode < 0 || timing_mode >= ARRAY_SIZE(onfi_sdr_timings))
  return -EINVAL;

 *iface = onfi_sdr_timings[timing_mode];






 if (onfi) {
  struct nand_sdr_timings *timings = &iface->timings.sdr;


  timings->tPROG_max = 1000000ULL * onfi->tPROG;
  timings->tBERS_max = 1000000ULL * onfi->tBERS;
  timings->tR_max = 1000000ULL * onfi->tR;


  timings->tCCS_min = 1000UL * onfi->tCCS;
 } else {
  struct nand_sdr_timings *timings = &iface->timings.sdr;
  timings->tPROG_max = 1000000ULL * ONFI_DYN_TIMING_MAX;
  timings->tBERS_max = 1000000ULL * ONFI_DYN_TIMING_MAX;
  timings->tR_max = 1000000ULL * 200000000ULL;


  timings->tCCS_min = 1000UL * 500000;
 }

 return 0;
}
