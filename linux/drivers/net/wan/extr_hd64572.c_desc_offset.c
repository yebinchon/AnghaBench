
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int port_t ;
typedef int pkt_desc ;


 int desc_abs_number (int *,int,int) ;

__attribute__((used)) static inline u16 desc_offset(port_t *port, u16 desc, int transmit)
{

 return desc_abs_number(port, desc, transmit) * sizeof(pkt_desc);
}
