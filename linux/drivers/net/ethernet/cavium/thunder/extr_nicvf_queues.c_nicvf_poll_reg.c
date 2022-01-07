
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nicvf {int netdev; } ;


 int netdev_err (int ,char*,int) ;
 int nicvf_queue_reg_read (struct nicvf*,int,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int nicvf_poll_reg(struct nicvf *nic, int qidx,
     u64 reg, int bit_pos, int bits, int val)
{
 u64 bit_mask;
 u64 reg_val;
 int timeout = 10;

 bit_mask = (1ULL << bits) - 1;
 bit_mask = (bit_mask << bit_pos);

 while (timeout) {
  reg_val = nicvf_queue_reg_read(nic, reg, qidx);
  if (((reg_val & bit_mask) >> bit_pos) == val)
   return 0;
  usleep_range(1000, 2000);
  timeout--;
 }
 netdev_err(nic->netdev, "Poll on reg 0x%llx failed\n", reg);
 return 1;
}
