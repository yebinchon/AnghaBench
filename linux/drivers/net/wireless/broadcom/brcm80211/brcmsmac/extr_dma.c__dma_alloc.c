
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct dma_info {int dummy; } ;


 int dma64_alloc (struct dma_info*,int ) ;

__attribute__((used)) static bool _dma_alloc(struct dma_info *di, uint direction)
{
 return dma64_alloc(di, direction);
}
