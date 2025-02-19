
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct lme2510_state {size_t tuner_config; } ;
struct dvb_usb_device {char* name; } ;
struct dvb_usb_adapter {TYPE_3__** fe; } ;
struct TYPE_4__ {char* name; } ;
struct TYPE_5__ {TYPE_1__ info; } ;
struct TYPE_6__ {TYPE_2__ ops; } ;


 struct dvb_usb_device* adap_to_d (struct dvb_usb_adapter*) ;
 struct lme2510_state* adap_to_priv (struct dvb_usb_adapter*) ;
 int strlcat (char*,char const* const,int) ;
 int strscpy (char*,char const*,int) ;

__attribute__((used)) static int lme_name(struct dvb_usb_adapter *adap)
{
 struct dvb_usb_device *d = adap_to_d(adap);
 struct lme2510_state *st = adap_to_priv(adap);
 const char *desc = d->name;
 static const char * const fe_name[] = {
  "", " LG TDQY-P001F", " SHARP:BS2F7HZ7395",
  " SHARP:BS2F7HZ0194", " RS2000"};
 char *name = adap->fe[0]->ops.info.name;

 strscpy(name, desc, 128);
 strlcat(name, fe_name[st->tuner_config], 128);

 return 0;
}
