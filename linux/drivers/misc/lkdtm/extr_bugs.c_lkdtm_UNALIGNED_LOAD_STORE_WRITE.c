
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



void lkdtm_UNALIGNED_LOAD_STORE_WRITE(void)
{
 static u8 data[5] __attribute__((aligned(4))) = {1, 2, 3, 4, 5};
 u32 *p;
 u32 val = 0x12345678;

 p = (u32 *)(data + 1);
 if (*p == 0)
  val = 0x87654321;
 *p = val;
}
