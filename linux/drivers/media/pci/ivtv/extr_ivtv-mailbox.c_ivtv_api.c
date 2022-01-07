
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ivtv {int dummy; } ;


 int EBUSY ;
 int ivtv_api_call (struct ivtv*,int,int,int *) ;

int ivtv_api(struct ivtv *itv, int cmd, int args, u32 data[])
{
 int res = ivtv_api_call(itv, cmd, args, data);




 return (res == -EBUSY) ? ivtv_api_call(itv, cmd, args, data) : res;
}
