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
struct fastrpc_buf {int /*<<< orphan*/  phys; int /*<<< orphan*/  virt; int /*<<< orphan*/  size; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fastrpc_buf*) ; 

__attribute__((used)) static void FUNC3(struct fastrpc_buf *buf)
{
	FUNC1(buf->dev, buf->size, buf->virt,
			  FUNC0(buf->phys));
	FUNC2(buf);
}