
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_data {int flags; } ;


 int MMC_DATA_READ ;
 int meson_mmc_desc_chain_mode (struct mmc_data const*) ;

__attribute__((used)) static inline bool meson_mmc_bounce_buf_read(const struct mmc_data *data)
{
 return data && data->flags & MMC_DATA_READ &&
        !meson_mmc_desc_chain_mode(data);
}
