
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int (* run_test ) (int ,int ) ;} ;


 int stub1 (int ,int ) ;
 TYPE_1__ ts ;

__attribute__((used)) static void kgdbts_put_char(u8 chr)
{
 if (ts.run_test)
  ts.run_test(0, chr);
}
