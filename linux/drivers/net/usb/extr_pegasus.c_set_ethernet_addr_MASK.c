#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int features; TYPE_1__* net; } ;
typedef  TYPE_2__ pegasus_t ;
typedef  int /*<<< orphan*/  node_id ;
typedef  int /*<<< orphan*/  __u8 ;
struct TYPE_7__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  EthID ; 
 int PEGASUS_II ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(pegasus_t *pegasus)
{
	__u8 node_id[6];

	if (pegasus->features & PEGASUS_II) {
		FUNC1(pegasus, 0x10, sizeof(node_id), node_id);
	} else {
		FUNC0(pegasus, node_id);
		FUNC3(pegasus, EthID, sizeof(node_id), node_id);
	}
	FUNC2(pegasus->net->dev_addr, node_id, sizeof(node_id));
}