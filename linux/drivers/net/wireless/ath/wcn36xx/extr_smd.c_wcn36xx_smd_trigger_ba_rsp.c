
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcn36xx_hal_trigger_ba_rsp_msg {int status; } ;


 int EINVAL ;

__attribute__((used)) static int wcn36xx_smd_trigger_ba_rsp(void *buf, int len)
{
 struct wcn36xx_hal_trigger_ba_rsp_msg *rsp;

 if (len < sizeof(*rsp))
  return -EINVAL;

 rsp = (struct wcn36xx_hal_trigger_ba_rsp_msg *) buf;
 return rsp->status;
}
