
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ spectral_bin_discard; } ;
struct ath10k {TYPE_1__ hw_params; } ;


 int is_power_of_2 (size_t) ;

__attribute__((used)) static inline size_t ath10k_spectral_fix_bin_size(struct ath10k *ar,
        size_t bin_len)
{






 if (!is_power_of_2(bin_len))
  bin_len -= ar->hw_params.spectral_bin_discard;

 return bin_len;
}
