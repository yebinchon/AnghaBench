
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int crc_itu_t (int ,int const*,size_t) ;

__attribute__((used)) static inline u16 genwqe_crc16(const u8 *buff, size_t len, u16 init)
{
 return crc_itu_t(init, buff, len);
}
