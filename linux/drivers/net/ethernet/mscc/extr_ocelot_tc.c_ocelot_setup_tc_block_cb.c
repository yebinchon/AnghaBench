
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocelot_port {int dev; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int EOPNOTSUPP ;


 int netdev_dbg (int ,char*,...) ;
 int ocelot_setup_tc_cls_matchall (struct ocelot_port*,void*,int) ;
 int tc_cls_can_offload_and_chain0 (int ,void*) ;

__attribute__((used)) static int ocelot_setup_tc_block_cb(enum tc_setup_type type,
        void *type_data,
        void *cb_priv, bool ingress)
{
 struct ocelot_port *port = cb_priv;

 if (!tc_cls_can_offload_and_chain0(port->dev, type_data))
  return -EOPNOTSUPP;

 switch (type) {
 case 128:
  netdev_dbg(port->dev, "tc_block_cb: TC_SETUP_CLSMATCHALL %s\n",
      ingress ? "ingress" : "egress");

  return ocelot_setup_tc_cls_matchall(port, type_data, ingress);
 case 129:
  return 0;
 default:
  netdev_dbg(port->dev, "tc_block_cb: type %d %s\n",
      type,
      ingress ? "ingress" : "egress");

  return -EOPNOTSUPP;
 }
}
