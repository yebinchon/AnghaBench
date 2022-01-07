
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CODE_WRITE ;
 int data_area ;
 int execute_location (int ,int ) ;

void lkdtm_EXEC_DATA(void)
{
 execute_location(data_area, CODE_WRITE);
}
