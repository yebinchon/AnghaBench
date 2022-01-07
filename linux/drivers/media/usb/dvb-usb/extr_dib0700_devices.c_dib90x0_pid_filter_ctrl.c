
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_1__* fe_adap; } ;
struct TYPE_2__ {int fe; } ;


 int dib9000_fw_pid_filter_ctrl (int ,int) ;

__attribute__((used)) static int dib90x0_pid_filter_ctrl(struct dvb_usb_adapter *adapter, int onoff)
{
 return dib9000_fw_pid_filter_ctrl(adapter->fe_adap[0].fe, onoff);
}
