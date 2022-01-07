
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nand_parameters {int get_feature_list; int set_feature_list; scalar_t__ supports_set_get_features; TYPE_1__* onfi; } ;
struct nand_onfi_vendor_micron {int read_retry_options; } ;
struct nand_chip {int setup_read_retry; int read_retries; struct nand_parameters parameters; } ;
struct TYPE_2__ {scalar_t__ vendor; } ;


 int ONFI_FEATURE_ADDR_READ_RETRY ;
 int ONFI_FEATURE_ON_DIE_ECC ;
 int micron_nand_setup_read_retry ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int micron_nand_onfi_init(struct nand_chip *chip)
{
 struct nand_parameters *p = &chip->parameters;

 if (p->onfi) {
  struct nand_onfi_vendor_micron *micron = (void *)p->onfi->vendor;

  chip->read_retries = micron->read_retry_options;
  chip->setup_read_retry = micron_nand_setup_read_retry;
 }

 if (p->supports_set_get_features) {
  set_bit(ONFI_FEATURE_ADDR_READ_RETRY, p->set_feature_list);
  set_bit(ONFI_FEATURE_ON_DIE_ECC, p->set_feature_list);
  set_bit(ONFI_FEATURE_ADDR_READ_RETRY, p->get_feature_list);
  set_bit(ONFI_FEATURE_ON_DIE_ECC, p->get_feature_list);
 }

 return 0;
}
