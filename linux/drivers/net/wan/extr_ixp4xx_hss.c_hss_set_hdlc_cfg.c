
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {int hdlc_cfg; int id; } ;
struct msg {int data8a; int data8b; int hss_port; int cmd; } ;
typedef int msg ;


 int PKT_EXTRA_FLAGS ;
 int PKT_PIPE_HDLC_CFG_WRITE ;
 int hss_npe_send (struct port*,struct msg*,char*) ;
 int memset (struct msg*,int ,int) ;

__attribute__((used)) static void hss_set_hdlc_cfg(struct port *port)
{
 struct msg msg;

 memset(&msg, 0, sizeof(msg));
 msg.cmd = PKT_PIPE_HDLC_CFG_WRITE;
 msg.hss_port = port->id;
 msg.data8a = port->hdlc_cfg;
 msg.data8b = port->hdlc_cfg | (PKT_EXTRA_FLAGS << 3);
 hss_npe_send(port, &msg, "HSS_SET_HDLC_CFG");
}
