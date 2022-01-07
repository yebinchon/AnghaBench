
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reg_domain; int deflt; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* iw_channel_table ;

__attribute__((used)) static int iw_default_channel(int reg_domain)
{
 int i, rc = 1;

 for (i = 0; i < ARRAY_SIZE(iw_channel_table); i++)
  if (reg_domain == iw_channel_table[i].reg_domain) {
   rc = iw_channel_table[i].deflt;
   break;
  }
 return rc;
}
