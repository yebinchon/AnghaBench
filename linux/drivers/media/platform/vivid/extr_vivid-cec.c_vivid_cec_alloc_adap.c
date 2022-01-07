
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {char* name; } ;
struct vivid_dev {TYPE_2__ vid_cap_dev; TYPE_1__ vid_out_dev; } ;
struct cec_adapter {int dummy; } ;
typedef int name ;


 int CEC_CAP_DEFAULTS ;
 int CEC_CAP_MONITOR_ALL ;
 int CEC_CAP_MONITOR_PIN ;
 struct cec_adapter* cec_allocate_adapter (int *,struct vivid_dev*,char*,int,int) ;
 int snprintf (char*,int,char*,char*,unsigned int) ;
 int vivid_cec_adap_ops ;

struct cec_adapter *vivid_cec_alloc_adap(struct vivid_dev *dev,
      unsigned int idx,
      bool is_source)
{
 char name[sizeof(dev->vid_out_dev.name) + 2];
 u32 caps = CEC_CAP_DEFAULTS | CEC_CAP_MONITOR_ALL | CEC_CAP_MONITOR_PIN;

 snprintf(name, sizeof(name), "%s%d",
   is_source ? dev->vid_out_dev.name : dev->vid_cap_dev.name,
   idx);
 return cec_allocate_adapter(&vivid_cec_adap_ops, dev,
  name, caps, 1);
}
