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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct mlx4_mad_ifc {int method; int class_version; int mgmt_class; int base_version; scalar_t__ data; int /*<<< orphan*/  status; void* attr_id; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int /*<<< orphan*/  dma; scalar_t__ buf; } ;
struct mlx4_cable_info {int /*<<< orphan*/  data; void* size; scalar_t__ i2c_addr; scalar_t__ page_num; void* dev_mem_address; } ;

/* Variables and functions */
 scalar_t__ CABLE_INF_I2C_ADDR ; 
 scalar_t__ I2C_ADDR_HIGH ; 
 scalar_t__ I2C_ADDR_LOW ; 
 scalar_t__ I2C_PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct mlx4_cmd_mailbox*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  MLX4_CMD_MAD_IFC ; 
 int /*<<< orphan*/  MLX4_CMD_NATIVE ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_C ; 
 scalar_t__ MODULE_INFO_MAX_READ ; 
 int FUNC2 (struct mlx4_cmd_mailbox*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 void* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 struct mlx4_cmd_mailbox* FUNC7 (struct mlx4_dev*) ; 
 int FUNC8 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx4_dev*,char*,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 

int FUNC11(struct mlx4_dev *dev, u8 port,
			 u16 offset, u16 size, u8 *data)
{
	struct mlx4_cmd_mailbox *inbox, *outbox;
	struct mlx4_mad_ifc *inmad, *outmad;
	struct mlx4_cable_info *cable_info;
	u16 i2c_addr;
	int ret;

	if (size > MODULE_INFO_MAX_READ)
		size = MODULE_INFO_MAX_READ;

	inbox = FUNC7(dev);
	if (FUNC0(inbox))
		return FUNC2(inbox);

	outbox = FUNC7(dev);
	if (FUNC0(outbox)) {
		FUNC9(dev, inbox);
		return FUNC2(outbox);
	}

	inmad = (struct mlx4_mad_ifc *)(inbox->buf);
	outmad = (struct mlx4_mad_ifc *)(outbox->buf);

	inmad->method = 0x1; /* Get */
	inmad->class_version = 0x1;
	inmad->mgmt_class = 0x1;
	inmad->base_version = 0x1;
	inmad->attr_id = FUNC5(0xFF60); /* Module Info */

	if (offset < I2C_PAGE_SIZE && offset + size > I2C_PAGE_SIZE)
		/* Cross pages reads are not allowed
		 * read until offset 256 in low page
		 */
		size -= offset + size - I2C_PAGE_SIZE;

	i2c_addr = I2C_ADDR_LOW;

	cable_info = (struct mlx4_cable_info *)inmad->data;
	cable_info->dev_mem_address = FUNC5(offset);
	cable_info->page_num = 0;
	cable_info->i2c_addr = i2c_addr;
	cable_info->size = FUNC5(size);

	ret = FUNC8(dev, inbox->dma, outbox->dma, port, 3,
			   MLX4_CMD_MAD_IFC, MLX4_CMD_TIME_CLASS_C,
			   MLX4_CMD_NATIVE);
	if (ret)
		goto out;

	if (FUNC3(outmad->status)) {
		/* Mad returned with bad status */
		ret = FUNC3(outmad->status);
		FUNC10(dev,
			  "MLX4_CMD_MAD_IFC Get Module info attr(%x) port(%d) i2c_addr(%x) offset(%d) size(%d): Response Mad Status(%x) - %s\n",
			  0xFF60, port, i2c_addr, offset, size,
			  ret, FUNC4(ret));

		if (i2c_addr == I2C_ADDR_HIGH &&
		    FUNC1(ret) == CABLE_INF_I2C_ADDR)
			/* Some SFP cables do not support i2c slave
			 * address 0x51 (high page), abort silently.
			 */
			ret = 0;
		else
			ret = -ret;
		goto out;
	}
	cable_info = (struct mlx4_cable_info *)outmad->data;
	FUNC6(data, cable_info->data, size);
	ret = size;
out:
	FUNC9(dev, inbox);
	FUNC9(dev, outbox);
	return ret;
}