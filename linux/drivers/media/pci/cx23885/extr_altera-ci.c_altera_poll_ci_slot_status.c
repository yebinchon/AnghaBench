
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_ca_en50221 {struct altera_ci_state* data; } ;
struct altera_ci_state {int status; } ;


 int EINVAL ;

__attribute__((used)) static int altera_poll_ci_slot_status(struct dvb_ca_en50221 *en50221,
          int slot, int open)
{
 struct altera_ci_state *state = en50221->data;

 if (0 != slot)
  return -EINVAL;

 return state->status;
}
