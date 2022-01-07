
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int bus_width; } ;
struct TYPE_5__ {TYPE_1__ parallel; } ;
struct v4l2_fwnode_endpoint {TYPE_2__ bus; } ;
struct TYPE_6__ {int mode_reg2; int pix_width_ctrl_emb; int pix_width_ctrl; int data_selection_ctrl; } ;
struct mipid02_dev {TYPE_3__ r; struct v4l2_fwnode_endpoint tx; } ;


 int MODE_HSYNC_ACTIVE_HIGH ;
 int MODE_VSYNC_ACTIVE_HIGH ;
 int SELECTION_MANUAL_WIDTH ;
 int V4L2_MBUS_HSYNC_ACTIVE_HIGH ;
 int V4L2_MBUS_VSYNC_ACTIVE_HIGH ;

__attribute__((used)) static int mipid02_configure_from_tx(struct mipid02_dev *bridge)
{
 struct v4l2_fwnode_endpoint *ep = &bridge->tx;

 bridge->r.data_selection_ctrl = SELECTION_MANUAL_WIDTH;
 bridge->r.pix_width_ctrl = ep->bus.parallel.bus_width;
 bridge->r.pix_width_ctrl_emb = ep->bus.parallel.bus_width;
 if (ep->bus.parallel.flags & V4L2_MBUS_HSYNC_ACTIVE_HIGH)
  bridge->r.mode_reg2 |= MODE_HSYNC_ACTIVE_HIGH;
 if (ep->bus.parallel.flags & V4L2_MBUS_VSYNC_ACTIVE_HIGH)
  bridge->r.mode_reg2 |= MODE_VSYNC_ACTIVE_HIGH;

 return 0;
}
