
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CODE_WRITE ;
 int EXEC_SIZE ;
 int execute_location (int *,int ) ;
 int vfree (int *) ;
 int * vmalloc (int ) ;

void lkdtm_EXEC_VMALLOC(void)
{
 u32 *vmalloc_area = vmalloc(EXEC_SIZE);
 execute_location(vmalloc_area, CODE_WRITE);
 vfree(vmalloc_area);
}
