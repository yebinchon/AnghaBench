
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda10021_state {int dummy; } ;
struct dvb_frontend {struct tda10021_state* demodulator_priv; } ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;


 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int FE_HAS_SYNC ;
 int FE_HAS_VITERBI ;
 int tda10021_readreg (struct tda10021_state*,int) ;

__attribute__((used)) static int tda10021_read_status(struct dvb_frontend *fe,
    enum fe_status *status)
{
 struct tda10021_state* state = fe->demodulator_priv;
 int sync;

 *status = 0;





 sync = tda10021_readreg (state, 0x11);

 if (sync & 2)
  *status |= FE_HAS_SIGNAL|FE_HAS_CARRIER;

 if (sync & 4)
  *status |= FE_HAS_SYNC|FE_HAS_VITERBI;

 if (sync & 8)
  *status |= FE_HAS_LOCK;

 return 0;
}
