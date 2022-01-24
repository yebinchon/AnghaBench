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
struct sock {int dummy; } ;
struct inet_sock {int /*<<< orphan*/  inet_dport; int /*<<< orphan*/  inet_sport; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dst_port ; 
 struct inet_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  src_port ; 
 int /*<<< orphan*/  tls_flow ; 

__attribute__((used)) static void FUNC4(void *flow, struct sock *sk)
{
	struct inet_sock *inet = FUNC2(sk);

	FUNC3(FUNC0(tls_flow, flow, src_port), &inet->inet_sport,
	       FUNC1(tls_flow, src_port));
	FUNC3(FUNC0(tls_flow, flow, dst_port), &inet->inet_dport,
	       FUNC1(tls_flow, dst_port));
}