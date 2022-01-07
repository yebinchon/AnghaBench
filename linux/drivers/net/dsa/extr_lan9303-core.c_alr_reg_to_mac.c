
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static void alr_reg_to_mac(u32 dat0, u32 dat1, u8 mac[6])
{
 mac[0] = (dat0 >> 0) & 0xff;
 mac[1] = (dat0 >> 8) & 0xff;
 mac[2] = (dat0 >> 16) & 0xff;
 mac[3] = (dat0 >> 24) & 0xff;
 mac[4] = (dat1 >> 0) & 0xff;
 mac[5] = (dat1 >> 8) & 0xff;
}
