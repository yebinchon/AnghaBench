
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u8 ;
struct firmware {int size; scalar_t__ data; } ;
struct TYPE_5__ {int* request; } ;
struct TYPE_4__ {int data; int address; } ;
struct as10x_fw_pkt_t {TYPE_2__ u; TYPE_1__ raw; } ;
struct as10x_bus_adapter_t {TYPE_3__* ops; } ;
struct TYPE_6__ {int (* upload_fw_pkt ) (struct as10x_bus_adapter_t*,int *,int,int ) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct as10x_fw_pkt_t*) ;
 struct as10x_fw_pkt_t* kmalloc (int,int ) ;
 int parse_hex_line (int *,int ,int ,int*,unsigned char*) ;
 int stub1 (struct as10x_bus_adapter_t*,int *,int,int ) ;
 int stub2 (struct as10x_bus_adapter_t*,int *,int,int ) ;

__attribute__((used)) static int as102_firmware_upload(struct as10x_bus_adapter_t *bus_adap,
     unsigned char *cmd,
     const struct firmware *firmware) {

 struct as10x_fw_pkt_t *fw_pkt;
 int total_read_bytes = 0, errno = 0;
 unsigned char addr_has_changed = 0;

 fw_pkt = kmalloc(sizeof(*fw_pkt), GFP_KERNEL);
 if (!fw_pkt)
  return -ENOMEM;


 for (total_read_bytes = 0; total_read_bytes < firmware->size; ) {
  int read_bytes = 0, data_len = 0;


  read_bytes = parse_hex_line(
    (u8 *) (firmware->data + total_read_bytes),
    fw_pkt->raw.address,
    fw_pkt->raw.data,
    &data_len,
    &addr_has_changed);

  if (read_bytes <= 0)
   goto error;


  total_read_bytes += read_bytes;
  if (total_read_bytes == firmware->size) {
   fw_pkt->u.request[0] = 0x00;
   fw_pkt->u.request[1] = 0x03;


   errno = bus_adap->ops->upload_fw_pkt(bus_adap,
            (uint8_t *)
            fw_pkt, 2, 0);
   if (errno < 0)
    goto error;
  } else {
   if (!addr_has_changed) {

    fw_pkt->u.request[0] = 0x00;
    fw_pkt->u.request[1] = 0x01;

    data_len += sizeof(fw_pkt->u.request);
    data_len += sizeof(fw_pkt->raw.address);


    errno = bus_adap->ops->upload_fw_pkt(bus_adap,
             (uint8_t *)
             fw_pkt,
             data_len,
             0);
    if (errno < 0)
     goto error;
   }
  }
 }
error:
 kfree(fw_pkt);
 return (errno == 0) ? total_read_bytes : errno;
}
