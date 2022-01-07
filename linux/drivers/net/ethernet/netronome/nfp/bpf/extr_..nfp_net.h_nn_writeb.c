
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ ctrl_bar; } ;
struct nfp_net {TYPE_1__ dp; } ;


 int writeb (int ,scalar_t__) ;

__attribute__((used)) static inline void nn_writeb(struct nfp_net *nn, int off, u8 val)
{
 writeb(val, nn->dp.ctrl_bar + off);
}
