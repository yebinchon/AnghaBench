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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  u8 ;
struct spi_nor {struct mtk_nor* priv; } ;
struct mtk_nor {int /*<<< orphan*/  dev; } ;
typedef  int ssize_t ;
typedef  size_t loff_t ;

/* Variables and functions */
 size_t SFLASH_WRBUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct mtk_nor*,size_t,int /*<<< orphan*/  const*) ; 
 int FUNC3 (struct mtk_nor*) ; 
 int FUNC4 (struct mtk_nor*) ; 
 int FUNC5 (struct mtk_nor*,size_t,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(struct spi_nor *nor, loff_t to, size_t len,
			     const u_char *buf)
{
	int ret;
	struct mtk_nor *mtk_nor = nor->priv;
	size_t i;

	ret = FUNC4(mtk_nor);
	if (ret < 0) {
		FUNC1(mtk_nor->dev, "write buffer enable failed!\n");
		return ret;
	}

	for (i = 0; i + SFLASH_WRBUF_SIZE <= len; i += SFLASH_WRBUF_SIZE) {
		ret = FUNC2(mtk_nor, to, buf);
		if (ret < 0) {
			FUNC0(mtk_nor->dev, "write buffer failed!\n");
			return ret;
		}
		to += SFLASH_WRBUF_SIZE;
		buf += SFLASH_WRBUF_SIZE;
	}
	ret = FUNC3(mtk_nor);
	if (ret < 0) {
		FUNC1(mtk_nor->dev, "write buffer disable failed!\n");
		return ret;
	}

	if (i < len) {
		ret = FUNC5(mtk_nor, to,
						(int)(len - i), (u8 *)buf);
		if (ret < 0) {
			FUNC0(mtk_nor->dev, "write single byte failed!\n");
			return ret;
		}
	}

	return len;
}