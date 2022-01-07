
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct xc2028_ctrl {int dummy; } ;
struct xc2028_config {struct xc2028_ctrl* ctrl; int i2c_addr; int * i2c_adap; } ;
struct TYPE_3__ {int * frontend; } ;
struct vb2_dvb_frontend {TYPE_1__ dvb; } ;
struct dvb_frontend {int dummy; } ;
struct cx8802_dev {TYPE_2__* core; int frontends; } ;
struct TYPE_4__ {int i2c_adap; } ;


 int EINVAL ;
 int cx88_setup_xc3028 (TYPE_2__*,struct xc2028_ctrl*) ;
 struct dvb_frontend* dvb_attach (int ,int *,struct xc2028_config*) ;
 int dvb_frontend_detach (int *) ;
 int dvb_unregister_frontend (int *) ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 struct vb2_dvb_frontend* vb2_dvb_get_frontend (int *,int) ;
 int xc2028_attach ;

__attribute__((used)) static int attach_xc3028(u8 addr, struct cx8802_dev *dev)
{
 struct dvb_frontend *fe;
 struct vb2_dvb_frontend *fe0 = ((void*)0);
 struct xc2028_ctrl ctl;
 struct xc2028_config cfg = {
  .i2c_adap = &dev->core->i2c_adap,
  .i2c_addr = addr,
  .ctrl = &ctl,
 };


 fe0 = vb2_dvb_get_frontend(&dev->frontends, 1);
 if (!fe0)
  return -EINVAL;

 if (!fe0->dvb.frontend) {
  pr_err("dvb frontend not attached. Can't attach xc3028\n");
  return -EINVAL;
 }






 cx88_setup_xc3028(dev->core, &ctl);

 fe = dvb_attach(xc2028_attach, fe0->dvb.frontend, &cfg);
 if (!fe) {
  pr_err("xc3028 attach failed\n");
  dvb_frontend_detach(fe0->dvb.frontend);
  dvb_unregister_frontend(fe0->dvb.frontend);
  fe0->dvb.frontend = ((void*)0);
  return -EINVAL;
 }

 pr_info("xc3028 attached\n");

 return 0;
}
