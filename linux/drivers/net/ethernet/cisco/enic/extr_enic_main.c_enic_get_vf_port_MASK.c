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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct enic_port_profile {int set; int /*<<< orphan*/  host_uuid; int /*<<< orphan*/  instance_uuid; int /*<<< orphan*/  name; int /*<<< orphan*/  request; } ;
struct enic {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENIC_PORT_REQUEST_APPLIED ; 
 int /*<<< orphan*/  FUNC0 (struct enic*,int,struct enic_port_profile*,int*) ; 
 int ENIC_SET_HOST ; 
 int ENIC_SET_INSTANCE ; 
 int ENIC_SET_NAME ; 
 int ENODATA ; 
 int /*<<< orphan*/  IFLA_PORT_HOST_UUID ; 
 int /*<<< orphan*/  IFLA_PORT_INSTANCE_UUID ; 
 int /*<<< orphan*/  IFLA_PORT_PROFILE ; 
 int /*<<< orphan*/  IFLA_PORT_REQUEST ; 
 int /*<<< orphan*/  IFLA_PORT_RESPONSE ; 
 int /*<<< orphan*/  PORT_PROFILE_MAX ; 
 int /*<<< orphan*/  PORT_PROFILE_RESPONSE_SUCCESS ; 
 int /*<<< orphan*/  PORT_UUID_MAX ; 
 int FUNC1 (struct enic*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct enic* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev, int vf,
	struct sk_buff *skb)
{
	struct enic *enic = FUNC2(netdev);
	u16 response = PORT_PROFILE_RESPONSE_SUCCESS;
	struct enic_port_profile *pp;
	int err;

	FUNC0(enic, vf, pp, &err);
	if (err)
		return err;

	if (!(pp->set & ENIC_PORT_REQUEST_APPLIED))
		return -ENODATA;

	err = FUNC1(enic, vf, pp->request, &response);
	if (err)
		return err;

	if (FUNC4(skb, IFLA_PORT_REQUEST, pp->request) ||
	    FUNC4(skb, IFLA_PORT_RESPONSE, response) ||
	    ((pp->set & ENIC_SET_NAME) &&
	     FUNC3(skb, IFLA_PORT_PROFILE, PORT_PROFILE_MAX, pp->name)) ||
	    ((pp->set & ENIC_SET_INSTANCE) &&
	     FUNC3(skb, IFLA_PORT_INSTANCE_UUID, PORT_UUID_MAX,
		     pp->instance_uuid)) ||
	    ((pp->set & ENIC_SET_HOST) &&
	     FUNC3(skb, IFLA_PORT_HOST_UUID, PORT_UUID_MAX, pp->host_uuid)))
		goto nla_put_failure;
	return 0;

nla_put_failure:
	return -EMSGSIZE;
}