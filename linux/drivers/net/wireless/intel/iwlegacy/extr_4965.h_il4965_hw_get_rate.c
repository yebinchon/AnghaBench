
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int __le32 ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static inline u8
il4965_hw_get_rate(__le32 rate_n_flags)
{
 return le32_to_cpu(rate_n_flags) & 0xFF;
}
