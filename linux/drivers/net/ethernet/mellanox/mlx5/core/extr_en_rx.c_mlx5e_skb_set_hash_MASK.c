#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct sk_buff {int dummy; } ;
struct mlx5_cqe64 {int rss_hash_type; int /*<<< orphan*/  rss_hash_result; } ;

/* Variables and functions */
 int CQE_RSS_HTYPE_IP ; 
 int CQE_RSS_HTYPE_L4 ; 
 int PKT_HASH_TYPE_L3 ; 
 int PKT_HASH_TYPE_L4 ; 
 int PKT_HASH_TYPE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(struct mlx5_cqe64 *cqe,
				      struct sk_buff *skb)
{
	u8 cht = cqe->rss_hash_type;
	int ht = (cht & CQE_RSS_HTYPE_L4) ? PKT_HASH_TYPE_L4 :
		 (cht & CQE_RSS_HTYPE_IP) ? PKT_HASH_TYPE_L3 :
					    PKT_HASH_TYPE_NONE;
	FUNC1(skb, FUNC0(cqe->rss_hash_result), ht);
}