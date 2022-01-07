
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s2io_nic {scalar_t__ rxd_mode; struct net_device* dev; } ;
struct net_device {scalar_t__ mtu; } ;
struct RxD_t {int Control_2; } ;


 int BUF0_LEN ;
 scalar_t__ NET_IP_ALIGN ;
 scalar_t__ RXD_MODE_1 ;
 scalar_t__ RXD_MODE_3B ;
 int SET_BUFFER0_SIZE_1 (scalar_t__) ;
 int SET_BUFFER0_SIZE_3 (int ) ;
 int SET_BUFFER1_SIZE_3 (int) ;
 int SET_BUFFER2_SIZE_3 (scalar_t__) ;

__attribute__((used)) static void set_rxd_buffer_size(struct s2io_nic *sp, struct RxD_t *rxdp,
    int size)
{
 struct net_device *dev = sp->dev;
 if (sp->rxd_mode == RXD_MODE_1) {
  rxdp->Control_2 = SET_BUFFER0_SIZE_1(size - NET_IP_ALIGN);
 } else if (sp->rxd_mode == RXD_MODE_3B) {
  rxdp->Control_2 = SET_BUFFER0_SIZE_3(BUF0_LEN);
  rxdp->Control_2 |= SET_BUFFER1_SIZE_3(1);
  rxdp->Control_2 |= SET_BUFFER2_SIZE_3(dev->mtu + 4);
 }
}
