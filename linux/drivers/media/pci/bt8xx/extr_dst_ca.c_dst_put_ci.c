
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct dst_state {int dummy; } ;


 int DST_CA_NOTICE ;
 int EIO ;
 scalar_t__ RETRIES ;
 int dprintk (int ,int ,int,char*) ;
 scalar_t__ dst_ci_command (struct dst_state*,scalar_t__*,scalar_t__*,int,int) ;
 int dst_error_recovery (struct dst_state*) ;
 int verbose ;

__attribute__((used)) static int dst_put_ci(struct dst_state *state, u8 *data, int len, u8 *ca_string, int read)
{
 u8 dst_ca_comm_err = 0;

 while (dst_ca_comm_err < RETRIES) {
  dprintk(verbose, DST_CA_NOTICE, 1, " Put Command");
  if (dst_ci_command(state, data, ca_string, len, read)) {
   dst_error_recovery(state);
   dst_ca_comm_err++;
  } else {
   break;
  }
 }

 if(dst_ca_comm_err == RETRIES)
  return -EIO;

 return 0;
}
