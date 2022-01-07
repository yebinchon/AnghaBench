
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {unsigned int port_num; } ;



__attribute__((used)) static inline unsigned int ef4_port_num(struct ef4_nic *efx)
{
 return efx->port_num;
}
