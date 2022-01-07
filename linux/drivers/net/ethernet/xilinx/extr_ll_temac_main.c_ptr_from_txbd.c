
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdmac_bd {scalar_t__ app4; } ;



__attribute__((used)) static void *ptr_from_txbd(struct cdmac_bd *bd)
{
 return (void *)(bd->app4);
}
