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
typedef  size_t u32 ;
struct octeon_device {TYPE_1__* pci_dev; struct octeon_console* console; } ;
struct octeon_console {char* leftover; scalar_t__ waiting; } ;
typedef  int s32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int OCTEON_UBOOT_VER_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct octeon_device*,size_t) ; 
 int FUNC6 (struct octeon_device*,size_t,char*,int) ; 
 scalar_t__ FUNC7 (struct octeon_device*,char*,int) ; 
 char* FUNC8 (char*,char*) ; 

__attribute__((used)) static void FUNC9(struct octeon_device *oct)
{
	s32 bytes_read, tries, total_read;
	struct octeon_console *console;
	u32 console_num = 0;
	char *uboot_ver;
	char *buf;
	char *p;

#define OCTEON_UBOOT_VER_BUF_SIZE 512
	buf = FUNC4(OCTEON_UBOOT_VER_BUF_SIZE, GFP_KERNEL);
	if (!buf)
		return;

	if (FUNC7(oct, "setenv stdout pci\n", 50)) {
		FUNC3(buf);
		return;
	}

	if (FUNC7(oct, "version\n", 1)) {
		FUNC3(buf);
		return;
	}

	console = &oct->console[console_num];
	tries = 0;
	total_read = 0;

	do {
		/* Take console output regardless of whether it will
		 * be logged
		 */
		bytes_read =
			FUNC6(oct,
					    console_num, buf + total_read,
					    OCTEON_UBOOT_VER_BUF_SIZE - 1 -
					    total_read);
		if (bytes_read > 0) {
			buf[bytes_read] = '\0';

			total_read += bytes_read;
			if (console->waiting)
				FUNC5(oct, console_num);
		} else if (bytes_read < 0) {
			FUNC1(&oct->pci_dev->dev, "Error reading console %u, ret=%d\n",
				console_num, bytes_read);
		}

		tries++;
	} while ((bytes_read > 0) && (tries < 16));

	/* If nothing is read after polling the console,
	 * output any leftovers if any
	 */
	if ((total_read == 0) && (console->leftover[0])) {
		FUNC0(&oct->pci_dev->dev, "%u: %s\n",
			console_num, console->leftover);
		console->leftover[0] = '\0';
	}

	buf[OCTEON_UBOOT_VER_BUF_SIZE - 1] = '\0';

	uboot_ver = FUNC8(buf, "U-Boot");
	if (uboot_ver) {
		p = FUNC8(uboot_ver, "mips");
		if (p) {
			p--;
			*p = '\0';
			FUNC2(&oct->pci_dev->dev, "%s\n", uboot_ver);
		}
	}

	FUNC3(buf);
	FUNC7(oct, "setenv stdout serial\n", 50);
}