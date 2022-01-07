
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tmComResPSFormatDescrHeader {scalar_t__ bPackDataType; scalar_t__ wPackLength; scalar_t__ wPacketLength; scalar_t__ bFormatIndex; } ;
struct TYPE_2__ {int buffercount; scalar_t__ BARLocation; } ;
struct saa7164_port {scalar_t__ nr; TYPE_1__ hwcfg; scalar_t__ bufptr64; scalar_t__ bufptr32h; scalar_t__ bufptr32l; scalar_t__ bufoffset; scalar_t__ bufsize; scalar_t__ pitch; scalar_t__ bufcounter; } ;
struct saa7164_dev {int dummy; } ;


 int DBGLVL_API ;
 int dprintk (int ,char*,scalar_t__) ;

__attribute__((used)) static int
saa7164_api_configure_port_mpeg2ps(struct saa7164_dev *dev,
       struct saa7164_port *port,
       struct tmComResPSFormatDescrHeader *fmt)
{
 dprintk(DBGLVL_API, "    bFormatIndex = 0x%x\n", fmt->bFormatIndex);
 dprintk(DBGLVL_API, "    wPacketLength= 0x%x\n", fmt->wPacketLength);
 dprintk(DBGLVL_API, "    wPackLength=   0x%x\n", fmt->wPackLength);
 dprintk(DBGLVL_API, "    bPackDataType= 0x%x\n", fmt->bPackDataType);



 port->bufcounter = port->hwcfg.BARLocation;
 port->pitch = port->hwcfg.BARLocation + (2 * sizeof(u32));
 port->bufsize = port->hwcfg.BARLocation + (3 * sizeof(u32));
 port->bufoffset = port->hwcfg.BARLocation + (4 * sizeof(u32));
 port->bufptr32l = port->hwcfg.BARLocation +
  (4 * sizeof(u32)) +
  (sizeof(u32) * port->hwcfg.buffercount) + sizeof(u32);
 port->bufptr32h = port->hwcfg.BARLocation +
  (4 * sizeof(u32)) +
  (sizeof(u32) * port->hwcfg.buffercount);
 port->bufptr64 = port->hwcfg.BARLocation +
  (4 * sizeof(u32)) +
  (sizeof(u32) * port->hwcfg.buffercount);
 dprintk(DBGLVL_API, "   = port->hwcfg.BARLocation = 0x%x\n",
  port->hwcfg.BARLocation);

 dprintk(DBGLVL_API, "   = VS_FORMAT_MPEGPS (becomes dev->enc[%d])\n",
  port->nr);

 return 0;
}
