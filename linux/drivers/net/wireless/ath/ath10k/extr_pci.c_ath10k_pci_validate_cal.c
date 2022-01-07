
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int __le16 ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static bool ath10k_pci_validate_cal(void *data, size_t size)
{
 __le16 *cal_words = data;
 u16 checksum = 0;
 size_t i;

 if (size % 2 != 0)
  return 0;

 for (i = 0; i < size / 2; i++)
  checksum ^= le16_to_cpu(cal_words[i]);

 return checksum == 0xffff;
}
