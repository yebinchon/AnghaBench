
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_data_stream {struct dvb_usb_adapter* user_priv; } ;
struct dvb_usb_adapter {scalar_t__ feedcount; int state; int demux; } ;


 int DVB_USB_ADAP_STATE_DVB ;
 int dvb_dmx_swfilter_raw (int *,int *,size_t) ;

__attribute__((used)) static void dvb_usb_data_complete_raw(struct usb_data_stream *stream,
          u8 *buffer, size_t length)
{
 struct dvb_usb_adapter *adap = stream->user_priv;
 if (adap->feedcount > 0 && adap->state & DVB_USB_ADAP_STATE_DVB)
  dvb_dmx_swfilter_raw(&adap->demux, buffer, length);
}
