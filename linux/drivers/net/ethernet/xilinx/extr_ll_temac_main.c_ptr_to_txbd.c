
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cdmac_bd {scalar_t__ app4; } ;



__attribute__((used)) static void ptr_to_txbd(void *p, struct cdmac_bd *bd)
{
 bd->app4 = (u32)p;
}
