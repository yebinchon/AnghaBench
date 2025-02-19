
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct b53_device {int ds; } ;


 int B53_CPU_PORT ;
 int B53_CPU_PORT_25 ;
 int B53_CTRL_PAGE ;
 int B53_PORT_CTRL (int) ;
 int PORT_CTRL_RX_BCST_EN ;
 int PORT_CTRL_RX_MCST_EN ;
 int PORT_CTRL_RX_UCST_EN ;
 int b53_brcm_hdr_setup (int ,int) ;
 int b53_write8 (struct b53_device*,int ,int ,int) ;
 scalar_t__ is5325 (struct b53_device*) ;
 scalar_t__ is5365 (struct b53_device*) ;

__attribute__((used)) static void b53_enable_cpu_port(struct b53_device *dev, int port)
{
 u8 port_ctrl;


 if ((is5325(dev) || is5365(dev)) && port == B53_CPU_PORT_25)
  port = B53_CPU_PORT;

 port_ctrl = PORT_CTRL_RX_BCST_EN |
      PORT_CTRL_RX_MCST_EN |
      PORT_CTRL_RX_UCST_EN;
 b53_write8(dev, B53_CTRL_PAGE, B53_PORT_CTRL(port), port_ctrl);

 b53_brcm_hdr_setup(dev->ds, port);
}
