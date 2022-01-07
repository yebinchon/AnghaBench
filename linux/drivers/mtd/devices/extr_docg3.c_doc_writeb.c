
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct docg3 {TYPE_1__* cascade; } ;
struct TYPE_2__ {scalar_t__ base; } ;


 int trace_docg3_io (int,int,scalar_t__,int ) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static inline void doc_writeb(struct docg3 *docg3, u8 val, u16 reg)
{
 writeb(val, docg3->cascade->base + reg);
 trace_docg3_io(1, 8, reg, val);
}
