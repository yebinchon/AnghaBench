
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igbvf_adapter {int dummy; } ;
typedef enum latency_range { ____Placeholder_latency_range } latency_range ;






__attribute__((used)) static enum latency_range igbvf_update_itr(struct igbvf_adapter *adapter,
        enum latency_range itr_setting,
        int packets, int bytes)
{
 enum latency_range retval = itr_setting;

 if (packets == 0)
  goto update_itr_done;

 switch (itr_setting) {
 case 128:

  if (bytes/packets > 8000)
   retval = 130;
  else if ((packets < 5) && (bytes > 512))
   retval = 129;
  break;
 case 129:
  if (bytes > 10000) {

   if (bytes/packets > 8000)
    retval = 130;
   else if ((packets < 10) || ((bytes/packets) > 1200))
    retval = 130;
   else if ((packets > 35))
    retval = 128;
  } else if (bytes/packets > 2000) {
   retval = 130;
  } else if (packets <= 2 && bytes < 512) {
   retval = 128;
  }
  break;
 case 130:
  if (bytes > 25000) {
   if (packets > 35)
    retval = 129;
  } else if (bytes < 6000) {
   retval = 129;
  }
  break;
 default:
  break;
 }

update_itr_done:
 return retval;
}
