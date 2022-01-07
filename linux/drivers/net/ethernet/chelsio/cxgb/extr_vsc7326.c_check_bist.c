
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int adapter_t ;


 int bist_rd (int *,int,int) ;
 int pr_err (char*,int,int,int) ;

__attribute__((used)) static int check_bist(adapter_t *adapter, int moduleid)
{
 int result=0;
 int column=0;

 result = bist_rd(adapter,moduleid, 0x02);
 column = ((bist_rd(adapter,moduleid, 0x0e)<<8) +
   (bist_rd(adapter,moduleid, 0x0d)));
 if ((result & 3) != 0x3)
  pr_err("Result: 0x%x  BIST error in ram %d, column: 0x%04x\n",
   result, moduleid, column);
 return 0;
}
