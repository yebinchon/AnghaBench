
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int card; scalar_t__ chan; } ;
typedef TYPE_1__ port_t ;


 int IER0 ;
 int sca_inl (int ,int ) ;
 int sca_outl (int,int ,int ) ;

__attribute__((used)) static inline void disable_intr(port_t *port)
{
 sca_outl(sca_inl(IER0, port->card) &
   (port->chan ? 0x00FF00FF : 0xFF00FF00), IER0, port->card);
}
