
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct kvaser_pciefd_rx_packet {int* header; int timestamp; } ;
struct kvaser_pciefd {TYPE_1__* pci; int ** dma_data; } ;
typedef int __le64 ;
typedef int __le32 ;
struct TYPE_2__ {int dev; } ;


 int DIV_ROUND_UP (int,int) ;
 int EIO ;
 int KVASER_PCIEFD_PACKET_TYPE_SHIFT ;
 int KVASER_PCIEFD_RPACKET_DLC_SHIFT ;
 int KVASER_PCIEFD_RPACKET_RTR ;
 int can_dlc2len (int) ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,int) ;
 int kvaser_pciefd_handle_ack_packet (struct kvaser_pciefd*,struct kvaser_pciefd_rx_packet*) ;
 int kvaser_pciefd_handle_data_packet (struct kvaser_pciefd*,struct kvaser_pciefd_rx_packet*,int *) ;
 int kvaser_pciefd_handle_eack_packet (struct kvaser_pciefd*,struct kvaser_pciefd_rx_packet*) ;
 int kvaser_pciefd_handle_eflush_packet (struct kvaser_pciefd*,struct kvaser_pciefd_rx_packet*) ;
 int kvaser_pciefd_handle_error_packet (struct kvaser_pciefd*,struct kvaser_pciefd_rx_packet*) ;
 int kvaser_pciefd_handle_status_packet (struct kvaser_pciefd*,struct kvaser_pciefd_rx_packet*) ;
 void* le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int kvaser_pciefd_read_packet(struct kvaser_pciefd *pcie, int *start_pos,
         int dma_buf)
{
 __le32 *buffer = pcie->dma_data[dma_buf];
 __le64 timestamp;
 struct kvaser_pciefd_rx_packet packet;
 struct kvaser_pciefd_rx_packet *p = &packet;
 u8 type;
 int pos = *start_pos;
 int size;
 int ret = 0;

 size = le32_to_cpu(buffer[pos++]);
 if (!size) {
  *start_pos = 0;
  return 0;
 }

 p->header[0] = le32_to_cpu(buffer[pos++]);
 p->header[1] = le32_to_cpu(buffer[pos++]);


 memcpy(&timestamp, &buffer[pos], sizeof(__le64));
 pos += 2;
 p->timestamp = le64_to_cpu(timestamp);

 type = (p->header[1] >> KVASER_PCIEFD_PACKET_TYPE_SHIFT) & 0xf;
 switch (type) {
 case 133:
  ret = kvaser_pciefd_handle_data_packet(pcie, p, &buffer[pos]);
  if (!(p->header[0] & KVASER_PCIEFD_RPACKET_RTR)) {
   u8 data_len;

   data_len = can_dlc2len(p->header[1] >>
            KVASER_PCIEFD_RPACKET_DLC_SHIFT);
   pos += DIV_ROUND_UP(data_len, 4);
  }
  break;

 case 136:
  ret = kvaser_pciefd_handle_ack_packet(pcie, p);
  break;

 case 129:
  ret = kvaser_pciefd_handle_status_packet(pcie, p);
  break;

 case 130:
  ret = kvaser_pciefd_handle_error_packet(pcie, p);
  break;

 case 131:
  ret = kvaser_pciefd_handle_eack_packet(pcie, p);
  break;

 case 132:
  ret = kvaser_pciefd_handle_eflush_packet(pcie, p);
  break;

 case 135:
 case 134:
 case 128:
  dev_info(&pcie->pci->dev,
    "Received unexpected packet type 0x%08X\n", type);
  break;

 default:
  dev_err(&pcie->pci->dev, "Unknown packet type 0x%08X\n", type);
  ret = -EIO;
  break;
 }

 if (ret)
  return ret;




 if ((*start_pos + size) != pos)
  return -EIO;


 *start_pos = pos;

 return ret;
}
