
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ath6kl_hif_type { ____Placeholder_ath6kl_hif_type } ath6kl_hif_type ;





__attribute__((used)) static const char *ath6kl_init_get_hif_name(enum ath6kl_hif_type type)
{
 switch (type) {
 case 129:
  return "sdio";
 case 128:
  return "usb";
 }

 return ((void*)0);
}
