
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int io ;
 int irq ;
 int * sv11_init (int ,int ) ;
 int * sv11_unit ;

int init_module(void)
{
 if ((sv11_unit = sv11_init(io, irq)) == ((void*)0))
  return -ENODEV;
 return 0;
}
