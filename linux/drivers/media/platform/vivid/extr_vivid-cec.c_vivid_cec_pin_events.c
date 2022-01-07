
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivid_dev {int * cec_tx_adap; int cec_rx_adap; } ;
struct cec_msg {int dummy; } ;
typedef int ktime_t ;


 unsigned int MAX_OUTPUTS ;
 int ktime_get () ;
 int vivid_cec_pin_adap_events (int ,int ,struct cec_msg const*,int) ;

__attribute__((used)) static void vivid_cec_pin_events(struct vivid_dev *dev,
     const struct cec_msg *msg, bool nacked)
{
 ktime_t ts = ktime_get();
 unsigned int i;

 vivid_cec_pin_adap_events(dev->cec_rx_adap, ts, msg, nacked);
 for (i = 0; i < MAX_OUTPUTS; i++)
  vivid_cec_pin_adap_events(dev->cec_tx_adap[i], ts, msg, nacked);
}
