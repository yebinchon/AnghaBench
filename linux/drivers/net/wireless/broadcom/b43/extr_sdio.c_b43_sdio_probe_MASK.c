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
typedef  int u16 ;
struct sdio_func_tuple {int code; int* data; int size; struct sdio_func_tuple* next; } ;
struct sdio_func {int /*<<< orphan*/  dev; struct sdio_func_tuple* tuples; } ;
struct sdio_device_id {int dummy; } ;
struct b43_sdio {int /*<<< orphan*/  ssb; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_SDIO_BLOCK_SIZE ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  HNBU_CHIPID 128 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_sdio*) ; 
 struct b43_sdio* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC6 (struct sdio_func*) ; 
 int FUNC7 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC8 (struct sdio_func*) ; 
 int FUNC9 (struct sdio_func*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sdio_func*,struct b43_sdio*) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct sdio_func*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct sdio_func *func,
				    const struct sdio_device_id *id)
{
	struct b43_sdio *sdio;
	struct sdio_func_tuple *tuple;
	u16 vendor = 0, device = 0;
	int error;

	/* Look for the card chip identifier. */
	tuple = func->tuples;
	while (tuple) {
		switch (tuple->code) {
		case 0x80:
			switch (tuple->data[0]) {
			case HNBU_CHIPID:
				if (tuple->size != 5)
					break;
				vendor = tuple->data[1] | (tuple->data[2]<<8);
				device = tuple->data[3] | (tuple->data[4]<<8);
				FUNC2(&func->dev, "Chip ID %04x:%04x\n",
					 vendor, device);
				break;
			default:
				break;
			}
			break;
		default:
			break;
		}
		tuple = tuple->next;
	}
	if (!vendor || !device) {
		error = -ENODEV;
		goto out;
	}

	FUNC5(func);
	error = FUNC9(func, B43_SDIO_BLOCK_SIZE);
	if (error) {
		FUNC1(&func->dev, "failed to set block size to %u bytes,"
			" error %d\n", B43_SDIO_BLOCK_SIZE, error);
		goto err_release_host;
	}
	error = FUNC7(func);
	if (error) {
		FUNC1(&func->dev, "failed to enable func, error %d\n", error);
		goto err_release_host;
	}
	FUNC8(func);

	sdio = FUNC4(sizeof(*sdio), GFP_KERNEL);
	if (!sdio) {
		error = -ENOMEM;
		FUNC1(&func->dev, "failed to allocate ssb bus\n");
		goto err_disable_func;
	}
	error = FUNC11(&sdio->ssb, func,
					 FUNC0(vendor, device));
	if (error) {
		FUNC1(&func->dev, "failed to register ssb sdio bus,"
			" error %d\n", error);
		goto err_free_ssb;
	}
	FUNC10(func, sdio);

	return 0;

err_free_ssb:
	FUNC3(sdio);
err_disable_func:
	FUNC5(func);
	FUNC6(func);
err_release_host:
	FUNC8(func);
out:
	return error;
}