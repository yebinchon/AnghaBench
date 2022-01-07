
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct s5k5baf {int dummy; } ;


 int s5k5baf_write_arr_seq (struct s5k5baf*,int ,int,int const*) ;

__attribute__((used)) static void s5k5baf_write_nseq(struct s5k5baf *state, const u16 *nseq)
{
 int count;

 while ((count = *nseq++)) {
  u16 addr = *nseq++;
  --count;

  s5k5baf_write_arr_seq(state, addr, count, nseq);
  nseq += count;
 }
}
