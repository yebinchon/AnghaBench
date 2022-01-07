
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;


 scalar_t__ TLAN_DIO_ADR ;
 scalar_t__ TLAN_DIO_DATA ;
 scalar_t__ TLAN_NET_SIO ;
 int TLAN_NET_SIO_ECLOK ;
 int TLAN_NET_SIO_EDATA ;
 int TLAN_NET_SIO_ETXEN ;
 int outw (scalar_t__,scalar_t__) ;
 int tlan_clear_bit (int ,scalar_t__) ;
 scalar_t__ tlan_get_bit (int ,scalar_t__) ;
 int tlan_set_bit (int ,scalar_t__) ;

__attribute__((used)) static void tlan_ee_receive_byte(u16 io_base, u8 *data, int stop)
{
 u8 place;
 u16 sio;

 outw(TLAN_NET_SIO, io_base + TLAN_DIO_ADR);
 sio = io_base + TLAN_DIO_DATA + TLAN_NET_SIO;
 *data = 0;


 tlan_clear_bit(TLAN_NET_SIO_ETXEN, sio);
 for (place = 0x80; place; place >>= 1) {
  tlan_set_bit(TLAN_NET_SIO_ECLOK, sio);
  if (tlan_get_bit(TLAN_NET_SIO_EDATA, sio))
   *data |= place;
  tlan_clear_bit(TLAN_NET_SIO_ECLOK, sio);
 }

 tlan_set_bit(TLAN_NET_SIO_ETXEN, sio);
 if (!stop) {
  tlan_clear_bit(TLAN_NET_SIO_EDATA, sio);
  tlan_set_bit(TLAN_NET_SIO_ECLOK, sio);
  tlan_clear_bit(TLAN_NET_SIO_ECLOK, sio);
 } else {
  tlan_set_bit(TLAN_NET_SIO_EDATA, sio);
  tlan_set_bit(TLAN_NET_SIO_ECLOK, sio);
  tlan_clear_bit(TLAN_NET_SIO_ECLOK, sio);

  tlan_clear_bit(TLAN_NET_SIO_EDATA, sio);
  tlan_set_bit(TLAN_NET_SIO_ECLOK, sio);
  tlan_set_bit(TLAN_NET_SIO_EDATA, sio);
 }

}
