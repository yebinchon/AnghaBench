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
struct tun_struct {int /*<<< orphan*/  flow_count; } ;
struct tun_flow_entry {int /*<<< orphan*/  hash_link; int /*<<< orphan*/  queue_index; int /*<<< orphan*/  rxhash; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tun_flow_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct tun_struct*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct tun_struct *tun, struct tun_flow_entry *e)
{
	FUNC2(KERN_INFO, tun, "delete flow: hash %u index %u\n",
		  e->rxhash, e->queue_index);
	FUNC0(&e->hash_link);
	FUNC1(e, rcu);
	--tun->flow_count;
}