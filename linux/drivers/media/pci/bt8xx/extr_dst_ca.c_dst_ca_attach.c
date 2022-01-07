
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_device {int dummy; } ;
struct dvb_adapter {int dummy; } ;
struct dst_state {struct dvb_device* dst_ca; } ;


 int DST_CA_ERROR ;
 int DVB_DEVICE_CA ;
 int dprintk (int ,int ,int,char*) ;
 scalar_t__ dvb_register_device (struct dvb_adapter*,struct dvb_device**,int *,struct dst_state*,int ,int ) ;
 int dvbdev_ca ;
 int verbose ;

struct dvb_device *dst_ca_attach(struct dst_state *dst, struct dvb_adapter *dvb_adapter)
{
 struct dvb_device *dvbdev;

 dprintk(verbose, DST_CA_ERROR, 1, "registering DST-CA device");
 if (dvb_register_device(dvb_adapter, &dvbdev, &dvbdev_ca, dst,
    DVB_DEVICE_CA, 0) == 0) {
  dst->dst_ca = dvbdev;
  return dst->dst_ca;
 }

 return ((void*)0);
}
