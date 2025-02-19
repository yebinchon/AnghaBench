
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ves1820_state {int dummy; } ;
struct dvb_frontend {struct ves1820_state* demodulator_priv; } ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;


 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int FE_HAS_SYNC ;
 int FE_HAS_VITERBI ;
 int ves1820_readreg (struct ves1820_state*,int) ;

__attribute__((used)) static int ves1820_read_status(struct dvb_frontend *fe,
          enum fe_status *status)
{
 struct ves1820_state* state = fe->demodulator_priv;
 int sync;

 *status = 0;
 sync = ves1820_readreg(state, 0x11);

 if (sync & 1)
  *status |= FE_HAS_SIGNAL;

 if (sync & 2)
  *status |= FE_HAS_CARRIER;

 if (sync & 2)
  *status |= FE_HAS_VITERBI;

 if (sync & 4)
  *status |= FE_HAS_SYNC;

 if (sync & 8)
  *status |= FE_HAS_LOCK;

 return 0;
}
