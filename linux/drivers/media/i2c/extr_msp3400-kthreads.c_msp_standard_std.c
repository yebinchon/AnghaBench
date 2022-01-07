
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct TYPE_2__ {int retval; int std; int * name; } ;


 int V4L2_STD_ALL ;
 TYPE_1__* msp_stdlist ;

__attribute__((used)) static v4l2_std_id msp_standard_std(int std)
{
 int i;

 for (i = 0; msp_stdlist[i].name != ((void*)0); i++)
  if (msp_stdlist[i].retval == std)
   return msp_stdlist[i].std;
 return V4L2_STD_ALL;
}
