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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_5__ {int /*<<< orphan*/  config; } ;
struct TYPE_4__ {int Length; int /*<<< orphan*/  Opcode; } ;
struct TYPE_6__ {TYPE_2__ ConfigureBuffers; TYPE_1__ hdr; } ;
struct ngene_command {int in_len; scalar_t__ out_len; TYPE_3__ cmd; } ;
struct ngene {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_CONFIGURE_FREE_BUFFER ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (struct ngene*,struct ngene_command*) ; 

__attribute__((used)) static int FUNC2(struct ngene *dev, u8 *config)
{
	struct ngene_command com;

	com.cmd.hdr.Opcode = CMD_CONFIGURE_FREE_BUFFER;
	com.cmd.hdr.Length = 6;
	FUNC0(&com.cmd.ConfigureBuffers.config, config, 6);
	com.in_len = 6;
	com.out_len = 0;

	if (FUNC1(dev, &com) < 0)
		return -EIO;

	return 0;
}