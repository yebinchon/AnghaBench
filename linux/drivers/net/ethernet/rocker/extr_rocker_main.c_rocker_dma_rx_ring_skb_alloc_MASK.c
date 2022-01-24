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
struct rocker_port {struct net_device* dev; } ;
struct rocker_desc_info {scalar_t__ tlv_size; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (struct net_device*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct rocker_desc_info*,struct sk_buff*) ; 
 int FUNC3 (struct rocker_port const*,struct rocker_desc_info*,struct sk_buff*,size_t) ; 
 size_t FUNC4 (struct rocker_port const*) ; 

__attribute__((used)) static int FUNC5(const struct rocker_port *rocker_port,
					struct rocker_desc_info *desc_info)
{
	struct net_device *dev = rocker_port->dev;
	struct sk_buff *skb;
	size_t buf_len = FUNC4(rocker_port);
	int err;

	/* Ensure that hw will see tlv_size zero in case of an error.
	 * That tells hw to use another descriptor.
	 */
	FUNC2(desc_info, NULL);
	desc_info->tlv_size = 0;

	skb = FUNC1(dev, buf_len);
	if (!skb)
		return -ENOMEM;
	err = FUNC3(rocker_port, desc_info, skb, buf_len);
	if (err) {
		FUNC0(skb);
		return err;
	}
	FUNC2(desc_info, skb);
	return 0;
}