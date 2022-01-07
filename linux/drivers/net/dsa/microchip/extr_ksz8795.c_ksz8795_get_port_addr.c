
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PORT_CTRL_ADDR (int,int) ;

__attribute__((used)) static u32 ksz8795_get_port_addr(int port, int offset)
{
 return PORT_CTRL_ADDR(port, offset);
}
