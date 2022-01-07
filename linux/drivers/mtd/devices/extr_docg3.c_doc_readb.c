
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct docg3 {TYPE_1__* cascade; } ;
struct TYPE_2__ {scalar_t__ base; } ;


 scalar_t__ readb (scalar_t__) ;
 int trace_docg3_io (int ,int,scalar_t__,int) ;

__attribute__((used)) static inline u8 doc_readb(struct docg3 *docg3, u16 reg)
{
 u8 val = readb(docg3->cascade->base + reg);

 trace_docg3_io(0, 8, reg, (int)val);
 return val;
}
