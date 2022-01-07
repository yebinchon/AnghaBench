
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le32 ;


 scalar_t__ I2400M_D2H_MSG_BARKER ;
 scalar_t__ le32_to_cpu (int const) ;

__attribute__((used)) static inline
int i2400m_is_d2h_barker(const void *buf)
{
 const __le32 *barker = buf;
 return le32_to_cpu(*barker) == I2400M_D2H_MSG_BARKER;
}
