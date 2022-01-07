
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct z8530_channel {int ctrlio; } ;


 int z8530_write_port (int ,int ) ;

__attribute__((used)) static inline void write_zsctrl(struct z8530_channel *c, u8 val)
{
 z8530_write_port(c->ctrlio, val);
}
