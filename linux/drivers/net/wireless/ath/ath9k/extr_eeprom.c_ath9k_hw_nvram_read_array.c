
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef size_t off_t ;



__attribute__((used)) static bool ath9k_hw_nvram_read_array(u16 *blob, size_t blob_size,
          off_t offset, u16 *data)
{
 if (offset >= blob_size)
  return 0;

 *data = blob[offset];
 return 1;
}
