
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 scalar_t__ TLAN_DIO_ADR ;
 scalar_t__ TLAN_DIO_DATA ;
 scalar_t__ TLAN_NET_SIO ;
 int TLAN_NET_SIO_MCLK ;
 int TLAN_NET_SIO_MTXEN ;
 int outw (scalar_t__,scalar_t__) ;
 int tlan_clear_bit (int ,scalar_t__) ;
 int tlan_set_bit (int ,scalar_t__) ;

__attribute__((used)) static void tlan_mii_sync(u16 base_port)
{
 int i;
 u16 sio;

 outw(TLAN_NET_SIO, base_port + TLAN_DIO_ADR);
 sio = base_port + TLAN_DIO_DATA + TLAN_NET_SIO;

 tlan_clear_bit(TLAN_NET_SIO_MTXEN, sio);
 for (i = 0; i < 32; i++) {
  tlan_clear_bit(TLAN_NET_SIO_MCLK, sio);
  tlan_set_bit(TLAN_NET_SIO_MCLK, sio);
 }

}
