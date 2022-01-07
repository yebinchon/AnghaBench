
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hermes {int inten; } ;


 int INTEN ;
 int hermes_write_regn (struct hermes*,int ,int ) ;

__attribute__((used)) static inline void hermes_set_irqmask(struct hermes *hw, u16 events)
{
 hw->inten = events;
 hermes_write_regn(hw, INTEN, events);
}
