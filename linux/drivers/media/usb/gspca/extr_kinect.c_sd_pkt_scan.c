
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ u8 ;
struct sd {int stream_flag; } ;
struct pkt_hdr {char* magic; scalar_t__ flag; } ;
struct gspca_dev {int dummy; } ;


 int FIRST_PACKET ;
 int INTER_PACKET ;
 int LAST_PACKET ;
 int gspca_frame_add (struct gspca_dev*,int ,scalar_t__*,int) ;
 int pr_warn (char*,...) ;

__attribute__((used)) static void sd_pkt_scan(struct gspca_dev *gspca_dev, u8 *__data, int len)
{
 struct sd *sd = (struct sd *) gspca_dev;

 struct pkt_hdr *hdr = (void *)__data;
 uint8_t *data = __data + sizeof(*hdr);
 int datalen = len - sizeof(*hdr);

 uint8_t sof = sd->stream_flag | 1;
 uint8_t mof = sd->stream_flag | 2;
 uint8_t eof = sd->stream_flag | 5;

 if (len < 12)
  return;

 if (hdr->magic[0] != 'R' || hdr->magic[1] != 'B') {
  pr_warn("[Stream %02x] Invalid magic %02x%02x\n",
   sd->stream_flag, hdr->magic[0], hdr->magic[1]);
  return;
 }

 if (hdr->flag == sof)
  gspca_frame_add(gspca_dev, FIRST_PACKET, data, datalen);

 else if (hdr->flag == mof)
  gspca_frame_add(gspca_dev, INTER_PACKET, data, datalen);

 else if (hdr->flag == eof)
  gspca_frame_add(gspca_dev, LAST_PACKET, data, datalen);

 else
  pr_warn("Packet type not recognized...\n");
}
