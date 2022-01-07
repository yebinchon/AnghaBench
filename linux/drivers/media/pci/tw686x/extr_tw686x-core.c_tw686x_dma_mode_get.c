
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int dma_mode ;
 char* dma_mode_name (int ) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static int tw686x_dma_mode_get(char *buffer, const struct kernel_param *kp)
{
 return sprintf(buffer, "%s", dma_mode_name(dma_mode));
}
