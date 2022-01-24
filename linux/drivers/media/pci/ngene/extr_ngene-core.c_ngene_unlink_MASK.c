#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int address; int data; } ;
struct TYPE_4__ {int Length; int /*<<< orphan*/  Opcode; } ;
struct TYPE_5__ {TYPE_3__ MemoryWrite; TYPE_1__ hdr; } ;
struct ngene_command {int in_len; int out_len; TYPE_2__ cmd; } ;
struct ngene {int /*<<< orphan*/  cmd_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_MEM_WRITE ; 
 int /*<<< orphan*/  NGENE_INT_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ngene*,struct ngene_command*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ngene *dev)
{
	struct ngene_command com;

	com.cmd.hdr.Opcode = CMD_MEM_WRITE;
	com.cmd.hdr.Length = 3;
	com.cmd.MemoryWrite.address = 0x910c;
	com.cmd.MemoryWrite.data = 0xff;
	com.in_len = 3;
	com.out_len = 1;

	FUNC0(&dev->cmd_mutex);
	FUNC3(0, NGENE_INT_ENABLE);
	FUNC2(dev, &com);
	FUNC1(&dev->cmd_mutex);
}