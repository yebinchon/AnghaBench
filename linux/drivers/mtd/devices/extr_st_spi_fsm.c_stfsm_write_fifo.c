
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct stfsm {scalar_t__ base; int dev; } ;


 int BUG_ON (int) ;
 scalar_t__ SPI_FAST_SEQ_DATA_REG ;
 int dev_dbg (int ,char*,int) ;
 int writesl (scalar_t__,int const*,int) ;

__attribute__((used)) static int stfsm_write_fifo(struct stfsm *fsm, const uint32_t *buf,
       uint32_t size)
{
 uint32_t words = size >> 2;

 dev_dbg(fsm->dev, "writing %d bytes to FIFO\n", size);

 BUG_ON((((uintptr_t)buf) & 0x3) || (size & 0x3));

 writesl(fsm->base + SPI_FAST_SEQ_DATA_REG, buf, words);

 return size;
}
