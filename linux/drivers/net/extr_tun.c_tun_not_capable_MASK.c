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
struct tun_struct {int /*<<< orphan*/  group; int /*<<< orphan*/  owner; int /*<<< orphan*/  dev; } ;
struct net {int /*<<< orphan*/  user_ns; } ;
struct cred {int /*<<< orphan*/  euid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 struct cred* FUNC0 () ; 
 struct net* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC7(struct tun_struct *tun)
{
	const struct cred *cred = FUNC0();
	struct net *net = FUNC1(tun->dev);

	return ((FUNC6(tun->owner) && !FUNC5(cred->euid, tun->owner)) ||
		  (FUNC2(tun->group) && !FUNC3(tun->group))) &&
		!FUNC4(net->user_ns, CAP_NET_ADMIN);
}