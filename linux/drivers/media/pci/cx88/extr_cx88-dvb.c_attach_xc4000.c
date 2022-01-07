
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xc4000_config {int dummy; } ;
struct TYPE_4__ {int * frontend; } ;
struct vb2_dvb_frontend {TYPE_2__ dvb; } ;
struct dvb_frontend {int dummy; } ;
struct cx8802_dev {TYPE_1__* core; int frontends; } ;
struct TYPE_3__ {int i2c_adap; } ;


 int EINVAL ;
 struct dvb_frontend* dvb_attach (int ,int *,int *,struct xc4000_config*) ;
 int dvb_frontend_detach (int *) ;
 int dvb_unregister_frontend (int *) ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 struct vb2_dvb_frontend* vb2_dvb_get_frontend (int *,int) ;
 int xc4000_attach ;

__attribute__((used)) static int attach_xc4000(struct cx8802_dev *dev, struct xc4000_config *cfg)
{
 struct dvb_frontend *fe;
 struct vb2_dvb_frontend *fe0 = ((void*)0);


 fe0 = vb2_dvb_get_frontend(&dev->frontends, 1);
 if (!fe0)
  return -EINVAL;

 if (!fe0->dvb.frontend) {
  pr_err("dvb frontend not attached. Can't attach xc4000\n");
  return -EINVAL;
 }

 fe = dvb_attach(xc4000_attach, fe0->dvb.frontend, &dev->core->i2c_adap,
   cfg);
 if (!fe) {
  pr_err("xc4000 attach failed\n");
  dvb_frontend_detach(fe0->dvb.frontend);
  dvb_unregister_frontend(fe0->dvb.frontend);
  fe0->dvb.frontend = ((void*)0);
  return -EINVAL;
 }

 pr_info("xc4000 attached\n");

 return 0;
}
