
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fjes_hw {int txrx_stop_req_bit; } ;


 int test_bit (int,int *) ;

__attribute__((used)) static bool fjes_hw_epid_is_stop_requested(struct fjes_hw *hw, int src_epid)
{
 return test_bit(src_epid, &hw->txrx_stop_req_bit);
}
