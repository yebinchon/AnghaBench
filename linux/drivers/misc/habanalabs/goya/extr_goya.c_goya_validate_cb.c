
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct packet_wreg32 {int dummy; } ;
struct packet_msg_prot {int dummy; } ;
struct packet_lin_dma {int dummy; } ;
struct hl_device {int dev; } ;
struct hl_cs_parser {scalar_t__ patched_cb_size; scalar_t__ user_cb_size; TYPE_1__* user_cb; } ;
struct goya_packet {int header; } ;
typedef enum packet_id { ____Placeholder_packet_id } packet_id ;
struct TYPE_2__ {scalar_t__ kernel_address; } ;


 int EINVAL ;
 int EPERM ;


 int PACKET_HEADER_PACKET_ID_MASK ;
 int PACKET_HEADER_PACKET_ID_SHIFT ;
 int dev_err (int ,char*,...) ;
 scalar_t__* goya_packet_sizes ;
 int goya_validate_dma_pkt_mmu (struct hl_device*,struct hl_cs_parser*,struct packet_lin_dma*) ;
 int goya_validate_dma_pkt_no_mmu (struct hl_device*,struct hl_cs_parser*,struct packet_lin_dma*) ;
 int goya_validate_wreg32 (struct hl_device*,struct hl_cs_parser*,struct packet_wreg32*) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static int goya_validate_cb(struct hl_device *hdev,
   struct hl_cs_parser *parser, bool is_mmu)
{
 u32 cb_parsed_length = 0;
 int rc = 0;

 parser->patched_cb_size = 0;


 while (cb_parsed_length < parser->user_cb_size) {
  enum packet_id pkt_id;
  u16 pkt_size;
  struct goya_packet *user_pkt;

  user_pkt = (struct goya_packet *) (uintptr_t)
   (parser->user_cb->kernel_address + cb_parsed_length);

  pkt_id = (enum packet_id) (
    (le64_to_cpu(user_pkt->header) &
    PACKET_HEADER_PACKET_ID_MASK) >>
     PACKET_HEADER_PACKET_ID_SHIFT);

  pkt_size = goya_packet_sizes[pkt_id];
  cb_parsed_length += pkt_size;
  if (cb_parsed_length > parser->user_cb_size) {
   dev_err(hdev->dev,
    "packet 0x%x is out of CB boundary\n", pkt_id);
   rc = -EINVAL;
   break;
  }

  switch (pkt_id) {
  case 129:





   rc = goya_validate_wreg32(hdev,
    parser, (struct packet_wreg32 *) user_pkt);
   break;

  case 128:
   dev_err(hdev->dev,
    "User not allowed to use WREG_BULK\n");
   rc = -EPERM;
   break;

  case 133:
   dev_err(hdev->dev,
    "User not allowed to use MSG_PROT\n");
   rc = -EPERM;
   break;

  case 137:
   dev_err(hdev->dev, "User not allowed to use CP_DMA\n");
   rc = -EPERM;
   break;

  case 130:
   dev_err(hdev->dev, "User not allowed to use STOP\n");
   rc = -EPERM;
   break;

  case 135:
   if (is_mmu)
    rc = goya_validate_dma_pkt_mmu(hdev, parser,
     (struct packet_lin_dma *) user_pkt);
   else
    rc = goya_validate_dma_pkt_no_mmu(hdev, parser,
     (struct packet_lin_dma *) user_pkt);
   break;

  case 134:
  case 132:
  case 136:
  case 131:
   parser->patched_cb_size += pkt_size;
   break;

  default:
   dev_err(hdev->dev, "Invalid packet header 0x%x\n",
    pkt_id);
   rc = -EINVAL;
   break;
  }

  if (rc)
   break;
 }






 parser->patched_cb_size += sizeof(struct packet_msg_prot) * 2;

 return rc;
}
