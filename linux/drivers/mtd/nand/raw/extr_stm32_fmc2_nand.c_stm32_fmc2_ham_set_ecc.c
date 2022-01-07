
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static inline void stm32_fmc2_ham_set_ecc(const u32 ecc_sta, u8 *ecc)
{
 ecc[0] = ecc_sta;
 ecc[1] = ecc_sta >> 8;
 ecc[2] = ecc_sta >> 16;
}
