
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MAXVAL (int,int ) ;
 int MAX_PACKET_SIZE ;

__attribute__((used)) static u32 bnx2x_ets_get_credit_upper_bound(const u32 min_w_val)
{
 const u32 credit_upper_bound = (u32)MAXVAL((150 * min_w_val),
      MAX_PACKET_SIZE);
 return credit_upper_bound;
}
