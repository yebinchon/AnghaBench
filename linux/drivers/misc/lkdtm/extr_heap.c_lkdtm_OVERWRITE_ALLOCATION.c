
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GFP_KERNEL ;
 int kfree (int*) ;
 int* kmalloc (size_t,int ) ;

void lkdtm_OVERWRITE_ALLOCATION(void)
{
 size_t len = 1020;
 u32 *data = kmalloc(len, GFP_KERNEL);
 if (!data)
  return;

 data[1024 / sizeof(u32)] = 0x12345678;
 kfree(data);
}
