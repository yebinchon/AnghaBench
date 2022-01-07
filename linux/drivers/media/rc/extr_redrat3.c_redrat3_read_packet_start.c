
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct redrat3_header {int fw_error; int transfer_type; int length; } ;
struct redrat3_error {int fw_error; int transfer_type; int length; } ;
struct redrat3_dev {unsigned int bytes_read; int dev; struct redrat3_header* bulk_in_buf; int irdata; } ;




 unsigned int be16_to_cpu (int ) ;
 int dev_dbg (int ,char*,unsigned int,unsigned int,...) ;
 int dev_warn (int ,char*,unsigned int) ;
 int memcpy (int *,struct redrat3_header*,unsigned int) ;
 int redrat3_dump_fw_error (struct redrat3_dev*,unsigned int) ;

__attribute__((used)) static void redrat3_read_packet_start(struct redrat3_dev *rr3, unsigned len)
{
 struct redrat3_header *header = rr3->bulk_in_buf;
 unsigned pktlen, pkttype;


 pktlen = be16_to_cpu(header->length);
 pkttype = be16_to_cpu(header->transfer_type);

 if (pktlen > sizeof(rr3->irdata)) {
  dev_warn(rr3->dev, "packet length %u too large\n", pktlen);
  return;
 }

 switch (pkttype) {
 case 129:
  if (len >= sizeof(struct redrat3_error)) {
   struct redrat3_error *error = rr3->bulk_in_buf;
   unsigned fw_error = be16_to_cpu(error->fw_error);
   redrat3_dump_fw_error(rr3, fw_error);
  }
  break;

 case 128:
  memcpy(&rr3->irdata, rr3->bulk_in_buf, len);
  rr3->bytes_read = len;
  dev_dbg(rr3->dev, "bytes_read %d, pktlen %d\n",
   rr3->bytes_read, pktlen);
  break;

 default:
  dev_dbg(rr3->dev, "ignoring packet with type 0x%02x, len of %d, 0x%02x\n",
      pkttype, len, pktlen);
  break;
 }
}
