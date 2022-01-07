
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_instruction_bits {int istatus; } ;


 int CBS_ACTIVE ;

__attribute__((used)) static void gru_cb_set_istatus_active(struct gru_instruction_bits *cbk)
{
 if (cbk) {
  cbk->istatus = CBS_ACTIVE;
 }
}
