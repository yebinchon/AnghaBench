
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mantis_pci {size_t last_block; size_t busy_block; int * buf_cpu; int demux; struct mantis_hwconfig* hwconfig; } ;
struct mantis_hwconfig {scalar_t__ ts_size; } ;


 size_t MANTIS_BLOCK_BYTES ;
 int MANTIS_BLOCK_COUNT ;
 int MANTIS_DEBUG ;
 int dprintk (int ,int,char*,size_t,size_t) ;
 int dvb_dmx_swfilter (int *,int *,size_t) ;
 int dvb_dmx_swfilter_204 (int *,int *,size_t) ;
 int stub1 (int *,int *,size_t) ;

void mantis_dma_xfer(unsigned long data)
{
 struct mantis_pci *mantis = (struct mantis_pci *) data;
 struct mantis_hwconfig *config = mantis->hwconfig;

 while (mantis->last_block != mantis->busy_block) {
  dprintk(MANTIS_DEBUG, 1, "last block=[%d] finished block=[%d]",
   mantis->last_block, mantis->busy_block);

  (config->ts_size ? dvb_dmx_swfilter_204 : dvb_dmx_swfilter)
  (&mantis->demux, &mantis->buf_cpu[mantis->last_block * MANTIS_BLOCK_BYTES], MANTIS_BLOCK_BYTES);
  mantis->last_block = (mantis->last_block + 1) % MANTIS_BLOCK_COUNT;
 }
}
