
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at86rf230_local {int dummy; } ;


 int __at86rf230_read (struct at86rf230_local*,unsigned int,unsigned int*) ;

__attribute__((used)) static inline int
at86rf230_read_subreg(struct at86rf230_local *lp,
        unsigned int addr, unsigned int mask,
        unsigned int shift, unsigned int *data)
{
 int rc;

 rc = __at86rf230_read(lp, addr, data);
 if (!rc)
  *data = (*data & mask) >> shift;

 return rc;
}
