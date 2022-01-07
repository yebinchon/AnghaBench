
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CODE_WRITE ;
 int EXEC_SIZE ;
 int GFP_KERNEL ;
 int execute_location (int *,int ) ;
 int kfree (int *) ;
 int * kmalloc (int ,int ) ;

void lkdtm_EXEC_KMALLOC(void)
{
 u32 *kmalloc_area = kmalloc(EXEC_SIZE, GFP_KERNEL);
 execute_location(kmalloc_area, CODE_WRITE);
 kfree(kmalloc_area);
}
