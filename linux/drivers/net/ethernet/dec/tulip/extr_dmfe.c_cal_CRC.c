
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;


 int crc32 (int ,unsigned char*,unsigned int) ;

__attribute__((used)) static inline u32 cal_CRC(unsigned char * Data, unsigned int Len, u8 flag)
{
 u32 crc = crc32(~0, Data, Len);
 if (flag) crc = ~crc;
 return crc;
}
