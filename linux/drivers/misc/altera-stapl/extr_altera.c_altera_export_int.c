
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 int dprintk (char*,char*,int ) ;

__attribute__((used)) static void altera_export_int(char *key, s32 value)
{
 dprintk("Export: key = \"%s\", value = %d\n", key, value);
}
