
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_tlv_parsed_buf {int * p_val; } ;
struct qed_mfw_tlv_iscsi {int tx_bytes; int tx_bytes_set; int tx_frames; int tx_frames_set; int rx_bytes; int rx_bytes_set; int rx_frames; int rx_frames_set; int rx_desc_qdepth; int rx_desc_qdepth_set; int tx_desc_qdepth; int tx_desc_qdepth_set; int boot_progress; int boot_progress_set; int rx_desc_size; int rx_desc_size_set; int tx_desc_size; int tx_desc_size_set; int frame_size; int frame_size_set; int boot_taget_portal; int boot_taget_portal_set; int auth_method; int auth_method_set; int data_digest; int data_digest_set; int header_digest; int header_digest_set; int target_llmnr; int target_llmnr_set; } ;
struct qed_drv_tlv_hdr {int tlv_type; } ;
__attribute__((used)) static int
qed_mfw_get_iscsi_tlv_value(struct qed_drv_tlv_hdr *p_tlv,
       struct qed_mfw_tlv_iscsi *p_drv_buf,
       struct qed_tlv_parsed_buf *p_buf)
{
 switch (p_tlv->tlv_type) {
 case 128:
  if (p_drv_buf->target_llmnr_set) {
   p_buf->p_val = &p_drv_buf->target_llmnr;
   return sizeof(p_drv_buf->target_llmnr);
  }
  break;
 case 140:
  if (p_drv_buf->header_digest_set) {
   p_buf->p_val = &p_drv_buf->header_digest;
   return sizeof(p_drv_buf->header_digest);
  }
  break;
 case 141:
  if (p_drv_buf->data_digest_set) {
   p_buf->p_val = &p_drv_buf->data_digest;
   return sizeof(p_drv_buf->data_digest);
  }
  break;
 case 142:
  if (p_drv_buf->auth_method_set) {
   p_buf->p_val = &p_drv_buf->auth_method;
   return sizeof(p_drv_buf->auth_method);
  }
  break;
 case 138:
  if (p_drv_buf->boot_taget_portal_set) {
   p_buf->p_val = &p_drv_buf->boot_taget_portal;
   return sizeof(p_drv_buf->boot_taget_portal);
  }
  break;
 case 133:
  if (p_drv_buf->frame_size_set) {
   p_buf->p_val = &p_drv_buf->frame_size;
   return sizeof(p_drv_buf->frame_size);
  }
  break;
 case 130:
  if (p_drv_buf->tx_desc_size_set) {
   p_buf->p_val = &p_drv_buf->tx_desc_size;
   return sizeof(p_drv_buf->tx_desc_size);
  }
  break;
 case 131:
  if (p_drv_buf->rx_desc_size_set) {
   p_buf->p_val = &p_drv_buf->rx_desc_size;
   return sizeof(p_drv_buf->rx_desc_size);
  }
  break;
 case 139:
  if (p_drv_buf->boot_progress_set) {
   p_buf->p_val = &p_drv_buf->boot_progress;
   return sizeof(p_drv_buf->boot_progress);
  }
  break;
 case 129:
  if (p_drv_buf->tx_desc_qdepth_set) {
   p_buf->p_val = &p_drv_buf->tx_desc_qdepth;
   return sizeof(p_drv_buf->tx_desc_qdepth);
  }
  break;
 case 132:
  if (p_drv_buf->rx_desc_qdepth_set) {
   p_buf->p_val = &p_drv_buf->rx_desc_qdepth;
   return sizeof(p_drv_buf->rx_desc_qdepth);
  }
  break;
 case 136:
  if (p_drv_buf->rx_frames_set) {
   p_buf->p_val = &p_drv_buf->rx_frames;
   return sizeof(p_drv_buf->rx_frames);
  }
  break;
 case 137:
  if (p_drv_buf->rx_bytes_set) {
   p_buf->p_val = &p_drv_buf->rx_bytes;
   return sizeof(p_drv_buf->rx_bytes);
  }
  break;
 case 134:
  if (p_drv_buf->tx_frames_set) {
   p_buf->p_val = &p_drv_buf->tx_frames;
   return sizeof(p_drv_buf->tx_frames);
  }
  break;
 case 135:
  if (p_drv_buf->tx_bytes_set) {
   p_buf->p_val = &p_drv_buf->tx_bytes;
   return sizeof(p_drv_buf->tx_bytes);
  }
  break;
 default:
  break;
 }

 return -1;
}
