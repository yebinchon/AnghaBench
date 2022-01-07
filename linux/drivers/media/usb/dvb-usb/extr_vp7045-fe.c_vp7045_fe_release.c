
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vp7045_fe_state {int dummy; } ;
struct dvb_frontend {struct vp7045_fe_state* demodulator_priv; } ;


 int kfree (struct vp7045_fe_state*) ;

__attribute__((used)) static void vp7045_fe_release(struct dvb_frontend* fe)
{
 struct vp7045_fe_state *state = fe->demodulator_priv;
 kfree(state);
}
