
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xge_raw_desc {int m0; } ;


 int E ;
 scalar_t__ GET_BITS (int ,int ) ;
 int PKT_SIZE ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static bool is_tx_hw_done(struct xge_raw_desc *raw_desc)
{
 if (GET_BITS(E, le64_to_cpu(raw_desc->m0)) &&
     !GET_BITS(PKT_SIZE, le64_to_cpu(raw_desc->m0)))
  return 1;

 return 0;
}
