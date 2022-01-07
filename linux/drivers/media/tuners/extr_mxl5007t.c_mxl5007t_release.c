
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxl5007t_state {int dummy; } ;
struct dvb_frontend {struct mxl5007t_state* tuner_priv; } ;


 int hybrid_tuner_release_state (struct mxl5007t_state*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int mxl5007t_list_mutex ;

__attribute__((used)) static void mxl5007t_release(struct dvb_frontend *fe)
{
 struct mxl5007t_state *state = fe->tuner_priv;

 mutex_lock(&mxl5007t_list_mutex);

 if (state)
  hybrid_tuner_release_state(state);

 mutex_unlock(&mxl5007t_list_mutex);

 fe->tuner_priv = ((void*)0);
}
