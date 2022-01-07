
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int h_source; } ;
struct macsec_eth_header {TYPE_1__ eth; int secure_channel_id; } ;
typedef int sci_t ;


 int MACSEC_PORT_ES ;
 int make_sci (int ,int ) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static sci_t macsec_frame_sci(struct macsec_eth_header *hdr, bool sci_present)
{
 sci_t sci;

 if (sci_present)
  memcpy(&sci, hdr->secure_channel_id,
         sizeof(hdr->secure_channel_id));
 else
  sci = make_sci(hdr->eth.h_source, MACSEC_PORT_ES);

 return sci;
}
