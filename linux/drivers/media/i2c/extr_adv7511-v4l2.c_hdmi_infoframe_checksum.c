
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;



__attribute__((used)) static u8 hdmi_infoframe_checksum(u8 *ptr, size_t size)
{
 u8 csum = 0;
 size_t i;


 for (i = 0; i < size; i++)
  csum += ptr[i];

 return 256 - csum;
}
