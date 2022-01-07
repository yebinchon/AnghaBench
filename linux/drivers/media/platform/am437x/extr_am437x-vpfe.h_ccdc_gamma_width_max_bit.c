
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum vpfe_ccdc_gamma_width { ____Placeholder_vpfe_ccdc_gamma_width } vpfe_ccdc_gamma_width ;



__attribute__((used)) static inline u8 ccdc_gamma_width_max_bit(enum vpfe_ccdc_gamma_width width)
{
 return 15 - width;
}
