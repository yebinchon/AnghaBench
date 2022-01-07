
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ttusb_dec {int filter_stream_count; int filter_info_list_lock; } ;
struct filter_info {int stream_id; int filter_info_list; } ;
struct dvb_demux_feed {scalar_t__ priv; TYPE_1__* demux; } ;
typedef int b0 ;
struct TYPE_2__ {struct ttusb_dec* priv; } ;


 int kfree (struct filter_info*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int ttusb_dec_send_command (struct ttusb_dec*,int,int,int*,int *,int *) ;
 int ttusb_dec_stop_iso_xfer (struct ttusb_dec*) ;

__attribute__((used)) static int ttusb_dec_stop_sec_feed(struct dvb_demux_feed *dvbdmxfeed)
{
 struct ttusb_dec *dec = dvbdmxfeed->demux->priv;
 u8 b0[] = { 0x00, 0x00 };
 struct filter_info *finfo = (struct filter_info *)dvbdmxfeed->priv;
 unsigned long flags;

 b0[1] = finfo->stream_id;
 spin_lock_irqsave(&dec->filter_info_list_lock, flags);
 list_del(&finfo->filter_info_list);
 spin_unlock_irqrestore(&dec->filter_info_list_lock, flags);
 kfree(finfo);
 ttusb_dec_send_command(dec, 0x62, sizeof(b0), b0, ((void*)0), ((void*)0));

 dec->filter_stream_count--;

 ttusb_dec_stop_iso_xfer(dec);

 return 0;
}
