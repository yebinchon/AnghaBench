
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct dma_info {int nrxd; } ;


 int xxd (int ,int ) ;

__attribute__((used)) static uint rxd(struct dma_info *di, uint x)
{
 return xxd(x, di->nrxd);
}
