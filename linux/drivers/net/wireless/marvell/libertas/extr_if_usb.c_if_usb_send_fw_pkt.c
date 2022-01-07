
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct if_usb_card {int totalbytes; int fwlastblksent; int fwfinalblk; TYPE_2__* udev; int fwseqnum; struct fwdata* ep_out_buf; int CRC_OK; TYPE_1__* fw; } ;
struct fwheader {int dummy; } ;
struct TYPE_6__ {int dnldcmd; int datalength; } ;
struct fwdata {TYPE_3__ hdr; int seqnum; TYPE_3__* data; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int * data; } ;


 int FW_HAS_DATA_TO_RECV ;
 int FW_HAS_LAST_BLOCK ;
 int cpu_to_le32 (int ) ;
 int lbs_deb_usb2 (int *,char*,...) ;
 int le32_to_cpu (int ) ;
 int memcpy (TYPE_3__*,int const*,int) ;
 int usb_tx_block (struct if_usb_card*,struct fwdata*,int) ;

__attribute__((used)) static int if_usb_send_fw_pkt(struct if_usb_card *cardp)
{
 struct fwdata *fwdata = cardp->ep_out_buf;
 const uint8_t *firmware = cardp->fw->data;



 if (!cardp->CRC_OK) {
  cardp->totalbytes = cardp->fwlastblksent;
  cardp->fwseqnum--;
 }

 lbs_deb_usb2(&cardp->udev->dev, "totalbytes = %d\n",
       cardp->totalbytes);





 memcpy(&fwdata->hdr, &firmware[cardp->totalbytes],
        sizeof(struct fwheader));

 cardp->fwlastblksent = cardp->totalbytes;
 cardp->totalbytes += sizeof(struct fwheader);

 memcpy(fwdata->data, &firmware[cardp->totalbytes],
        le32_to_cpu(fwdata->hdr.datalength));

 lbs_deb_usb2(&cardp->udev->dev, "Data length = %d\n",
       le32_to_cpu(fwdata->hdr.datalength));

 fwdata->seqnum = cpu_to_le32(++cardp->fwseqnum);
 cardp->totalbytes += le32_to_cpu(fwdata->hdr.datalength);

 usb_tx_block(cardp, cardp->ep_out_buf, sizeof(struct fwdata) +
       le32_to_cpu(fwdata->hdr.datalength));

 if (fwdata->hdr.dnldcmd == cpu_to_le32(FW_HAS_DATA_TO_RECV)) {
  lbs_deb_usb2(&cardp->udev->dev, "There are data to follow\n");
  lbs_deb_usb2(&cardp->udev->dev, "seqnum = %d totalbytes = %d\n",
        cardp->fwseqnum, cardp->totalbytes);
 } else if (fwdata->hdr.dnldcmd == cpu_to_le32(FW_HAS_LAST_BLOCK)) {
  lbs_deb_usb2(&cardp->udev->dev, "Host has finished FW downloading\n");
  lbs_deb_usb2(&cardp->udev->dev, "Downloading FW JUMP BLOCK\n");

  cardp->fwfinalblk = 1;
 }

 lbs_deb_usb2(&cardp->udev->dev, "Firmware download done; size %d\n",
       cardp->totalbytes);

 return 0;
}
