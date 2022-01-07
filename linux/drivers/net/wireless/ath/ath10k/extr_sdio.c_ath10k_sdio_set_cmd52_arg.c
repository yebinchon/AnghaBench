
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
typedef int u32 ;


 int BIT (int) ;
 int FIELD_PREP (int ,unsigned char) ;
 int GENMASK (int,int) ;

__attribute__((used)) static inline void ath10k_sdio_set_cmd52_arg(u32 *arg, u8 write, u8 raw,
          unsigned int address,
          unsigned char val)
{
 *arg = FIELD_PREP(BIT(31), write) |
        FIELD_PREP(BIT(27), raw) |
        FIELD_PREP(BIT(26), 1) |
        FIELD_PREP(GENMASK(25, 9), address) |
        FIELD_PREP(BIT(8), 1) |
        FIELD_PREP(GENMASK(7, 0), val);
}
