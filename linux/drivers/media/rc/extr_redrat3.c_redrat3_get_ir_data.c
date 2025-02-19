
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct redrat3_header {int dummy; } ;
struct TYPE_3__ {int transfer_type; int length; } ;
struct TYPE_4__ {TYPE_1__ header; } ;
struct redrat3_dev {scalar_t__ bytes_read; TYPE_2__ irdata; struct device* dev; } ;
struct device {int dummy; } ;


 int ENODATA ;
 unsigned int RR3_MOD_SIGNAL_IN ;
 int be16_to_cpu (int ) ;
 int dev_dbg (struct device*,char*,unsigned int) ;
 int dev_err (struct device*,char*) ;
 int redrat3_process_ir_data (struct redrat3_dev*) ;
 int redrat3_read_packet_continue (struct redrat3_dev*,unsigned int) ;
 int redrat3_read_packet_start (struct redrat3_dev*,unsigned int) ;

__attribute__((used)) static int redrat3_get_ir_data(struct redrat3_dev *rr3, unsigned len)
{
 struct device *dev = rr3->dev;
 unsigned pkttype;
 int ret = 0;

 if (rr3->bytes_read == 0 && len >= sizeof(struct redrat3_header)) {
  redrat3_read_packet_start(rr3, len);
 } else if (rr3->bytes_read != 0) {
  redrat3_read_packet_continue(rr3, len);
 } else if (rr3->bytes_read == 0) {
  dev_err(dev, "error: no packet data read\n");
  ret = -ENODATA;
  goto out;
 }

 if (rr3->bytes_read < be16_to_cpu(rr3->irdata.header.length) +
      sizeof(struct redrat3_header))

  return 0;


 pkttype = be16_to_cpu(rr3->irdata.header.transfer_type);
 if (pkttype == RR3_MOD_SIGNAL_IN)
  redrat3_process_ir_data(rr3);
 else
  dev_dbg(dev, "discarding non-signal data packet (type 0x%02x)\n",
        pkttype);

out:
 rr3->bytes_read = 0;
 return ret;
}
