
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_window {int dummy; } ;
typedef int s64 ;
typedef int dma_addr_t ;


 int scif_off_to_dma_addr (struct scif_window*,int ,int *,int *) ;

__attribute__((used)) static inline
dma_addr_t __scif_off_to_dma_addr(struct scif_window *window, s64 off)
{
 return scif_off_to_dma_addr(window, off, ((void*)0), ((void*)0));
}
