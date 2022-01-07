
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_sq {int saved_skb; } ;


 int vfree (int ) ;

__attribute__((used)) static void free_sq_skb_arr(struct hinic_sq *sq)
{
 vfree(sq->saved_skb);
}
