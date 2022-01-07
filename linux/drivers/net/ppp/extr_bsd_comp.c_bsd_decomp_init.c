
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bsd_init (void*,unsigned char*,int,int,int,int) ;

__attribute__((used)) static int bsd_decomp_init (void *state, unsigned char *options,
       int opt_len, int unit, int opthdr, int mru,
       int debug)
  {
    return bsd_init (state, options, opt_len, unit, debug, 1);
  }
