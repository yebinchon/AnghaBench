
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int * cec_message; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
struct cros_ec_device {unsigned int event_size; TYPE_2__ event_data; } ;
struct TYPE_6__ {unsigned int len; int msg; } ;
struct cros_ec_cec {TYPE_3__ rx_msg; int adap; struct cros_ec_device* cros_ec; } ;


 int cec_received_msg (int ,TYPE_3__*) ;
 int memcpy (int ,int *,unsigned int) ;

__attribute__((used)) static void handle_cec_message(struct cros_ec_cec *cros_ec_cec)
{
 struct cros_ec_device *cros_ec = cros_ec_cec->cros_ec;
 uint8_t *cec_message = cros_ec->event_data.data.cec_message;
 unsigned int len = cros_ec->event_size;

 cros_ec_cec->rx_msg.len = len;
 memcpy(cros_ec_cec->rx_msg.msg, cec_message, len);

 cec_received_msg(cros_ec_cec->adap, &cros_ec_cec->rx_msg);
}
