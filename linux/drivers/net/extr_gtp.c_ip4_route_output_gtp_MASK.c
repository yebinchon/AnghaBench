#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sock {int /*<<< orphan*/  sk_protocol; int /*<<< orphan*/  sk_bound_dev_if; } ;
struct rtable {int dummy; } ;
struct flowi4 {int /*<<< orphan*/  flowi4_proto; int /*<<< orphan*/  flowi4_tos; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  flowi4_oif; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  inet_saddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock const*) ; 
 TYPE_1__* FUNC1 (struct sock const*) ; 
 struct rtable* FUNC2 (int /*<<< orphan*/ ,struct flowi4*) ; 
 int /*<<< orphan*/  FUNC3 (struct flowi4*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sock const*) ; 

__attribute__((used)) static struct rtable *FUNC5(struct flowi4 *fl4,
					   const struct sock *sk,
					   __be32 daddr)
{
	FUNC3(fl4, 0, sizeof(*fl4));
	fl4->flowi4_oif		= sk->sk_bound_dev_if;
	fl4->daddr		= daddr;
	fl4->saddr		= FUNC1(sk)->inet_saddr;
	fl4->flowi4_tos		= FUNC0(sk);
	fl4->flowi4_proto	= sk->sk_protocol;

	return FUNC2(FUNC4(sk), fl4);
}