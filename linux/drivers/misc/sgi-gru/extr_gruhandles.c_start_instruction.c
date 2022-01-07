
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gru_flush_cache (void*) ;
 int wmb () ;

__attribute__((used)) static void start_instruction(void *h)
{
 unsigned long *w0 = h;

 wmb();
 *w0 = *w0 | 0x20001;
 gru_flush_cache(h);
}
