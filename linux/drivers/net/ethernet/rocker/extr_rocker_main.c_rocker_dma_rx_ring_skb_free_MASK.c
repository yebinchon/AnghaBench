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
struct sk_buff {int dummy; } ;
struct rocker_tlv {int dummy; } ;
struct rocker_desc_info {int dummy; } ;
struct rocker {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ROCKER_TLV_RX_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (struct rocker_desc_info const*) ; 
 int /*<<< orphan*/  FUNC2 (struct rocker const*,struct rocker_tlv const**) ; 
 int /*<<< orphan*/  FUNC3 (struct rocker_tlv const**,int /*<<< orphan*/ ,struct rocker_desc_info const*) ; 

__attribute__((used)) static void FUNC4(const struct rocker *rocker,
					const struct rocker_desc_info *desc_info)
{
	const struct rocker_tlv *attrs[ROCKER_TLV_RX_MAX + 1];
	struct sk_buff *skb = FUNC1(desc_info);

	if (!skb)
		return;
	FUNC3(attrs, ROCKER_TLV_RX_MAX, desc_info);
	FUNC2(rocker, attrs);
	FUNC0(skb);
}