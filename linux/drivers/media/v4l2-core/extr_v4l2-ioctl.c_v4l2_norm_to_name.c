
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ v4l2_std_id ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ std; char const* descr; } ;


 int BUG_ON (int) ;
 TYPE_1__* standards ;

const char *v4l2_norm_to_name(v4l2_std_id id)
{
 u32 myid = id;
 int i;





 BUG_ON(myid != id);

 for (i = 0; standards[i].std; i++)
  if (myid == standards[i].std)
   break;
 return standards[i].descr;
}
