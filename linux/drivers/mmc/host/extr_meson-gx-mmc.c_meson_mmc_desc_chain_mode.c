
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_data {int host_cookie; } ;


 int SD_EMMC_DESC_CHAIN_MODE ;

__attribute__((used)) static inline bool meson_mmc_desc_chain_mode(const struct mmc_data *data)
{
 return data->host_cookie & SD_EMMC_DESC_CHAIN_MODE;
}
