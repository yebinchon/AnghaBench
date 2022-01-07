
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_data_stream {struct dvb_usb_adapter* user_priv; } ;
struct dvb_usb_adapter {int demux; } ;


 int dvb_dmx_swfilter_204 (int *,int *,size_t) ;

__attribute__((used)) static void dvb_usb_data_complete_204(struct usb_data_stream *stream, u8 *buf,
  size_t len)
{
 struct dvb_usb_adapter *adap = stream->user_priv;
 dvb_dmx_swfilter_204(&adap->demux, buf, len);
}
