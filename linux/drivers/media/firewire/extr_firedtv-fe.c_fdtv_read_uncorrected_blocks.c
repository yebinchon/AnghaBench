
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dvb_frontend {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int fdtv_read_uncorrected_blocks(struct dvb_frontend *fe, u32 *ucblocks)
{
 return -EOPNOTSUPP;
}
