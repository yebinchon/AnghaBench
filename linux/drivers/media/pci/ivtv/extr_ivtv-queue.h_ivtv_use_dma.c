
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv_stream {int dummy; } ;


 int ivtv_use_pio (struct ivtv_stream*) ;

__attribute__((used)) static inline int ivtv_use_dma(struct ivtv_stream *s)
{
 return !ivtv_use_pio(s);
}
