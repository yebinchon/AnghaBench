
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cec_adapter {int cec_pin_is_high; } ;



__attribute__((used)) static int vivid_cec_adap_enable(struct cec_adapter *adap, bool enable)
{
 adap->cec_pin_is_high = 1;
 return 0;
}
