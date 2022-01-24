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
typedef  int /*<<< orphan*/  const u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct image_hdr {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  num_images; } ;
struct flash_section_info {TYPE_3__* fsec_entry; TYPE_2__ fsec_hdr; } ;
struct flash_file_hdr_g3 {int dummy; } ;
struct firmware {int size; int /*<<< orphan*/  const* data; } ;
struct device {int dummy; } ;
struct be_dma_mem {int dummy; } ;
struct be_adapter {TYPE_1__* pdev; } ;
struct TYPE_6__ {int optype; int /*<<< orphan*/  type; int /*<<< orphan*/  pad_size; int /*<<< orphan*/  offset; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EFAULT ; 
 int EINVAL ; 
#define  MCC_ADDL_STATUS_INVALID_SIGNATURE 129 
#define  MCC_ADDL_STATUS_MISSING_SIGNATURE 128 
 scalar_t__ MCC_STATUS_FAILED ; 
 scalar_t__ MCC_STATUS_ILLEGAL_FIELD ; 
 scalar_t__ MCC_STATUS_ILLEGAL_REQUEST ; 
 int OPTYPE_OFFSET_SPECIFIED ; 
 int OPTYPE_UFI_DIR ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct be_adapter*,int /*<<< orphan*/  const*,int,int,int,int,int*) ; 
 int FUNC3 (struct be_adapter*,int /*<<< orphan*/  const*,struct be_dma_mem*,int,int,int) ; 
 int FUNC4 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 struct flash_section_info* FUNC6 (struct be_adapter*,int,struct firmware const*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct be_adapter *adapter,
			    const struct firmware *fw,
			    struct be_dma_mem *flash_cmd, int num_of_images)
{
	int img_hdrs_size = num_of_images * sizeof(struct image_hdr);
	bool crc_match, old_fw_img, flash_offset_support = true;
	struct device *dev = &adapter->pdev->dev;
	struct flash_section_info *fsec = NULL;
	u32 img_offset, img_size, img_type;
	u16 img_optype, flash_optype;
	int status, i, filehdr_size;
	const u8 *p;

	filehdr_size = sizeof(struct flash_file_hdr_g3);
	fsec = FUNC6(adapter, filehdr_size + img_hdrs_size, fw);
	if (!fsec) {
		FUNC5(dev, "Invalid Cookie. FW image may be corrupted\n");
		return -EINVAL;
	}

retry_flash:
	for (i = 0; i < FUNC7(fsec->fsec_hdr.num_images); i++) {
		img_offset = FUNC7(fsec->fsec_entry[i].offset);
		img_size   = FUNC7(fsec->fsec_entry[i].pad_size);
		img_type   = FUNC7(fsec->fsec_entry[i].type);
		img_optype = FUNC4(fsec->fsec_entry[i]);
		old_fw_img = fsec->fsec_entry[i].optype == 0xFFFF;

		if (img_optype == 0xFFFF)
			continue;

		if (flash_offset_support)
			flash_optype = OPTYPE_OFFSET_SPECIFIED;
		else
			flash_optype = img_optype;

		/* Don't bother verifying CRC if an old FW image is being
		 * flashed
		 */
		if (old_fw_img)
			goto flash;

		status = FUNC2(adapter, fw->data, img_offset,
					    img_size, filehdr_size +
					    img_hdrs_size, flash_optype,
					    &crc_match);
		if (FUNC1(status) == MCC_STATUS_ILLEGAL_REQUEST ||
		    FUNC1(status) == MCC_STATUS_ILLEGAL_FIELD) {
			/* The current FW image on the card does not support
			 * OFFSET based flashing. Retry using older mechanism
			 * of OPTYPE based flashing
			 */
			if (flash_optype == OPTYPE_OFFSET_SPECIFIED) {
				flash_offset_support = false;
				goto retry_flash;
			}

			/* The current FW image on the card does not recognize
			 * the new FLASH op_type. The FW download is partially
			 * complete. Reboot the server now to enable FW image
			 * to recognize the new FLASH op_type. To complete the
			 * remaining process, download the same FW again after
			 * the reboot.
			 */
			FUNC5(dev, "Flash incomplete. Reset the server\n");
			FUNC5(dev, "Download FW image again after reset\n");
			return -EAGAIN;
		} else if (status) {
			FUNC5(dev, "Could not get CRC for 0x%x region\n",
				img_optype);
			return -EFAULT;
		}

		if (crc_match)
			continue;

flash:
		p = fw->data + filehdr_size + img_offset + img_hdrs_size;
		if (p + img_size > fw->data + fw->size)
			return -1;

		status = FUNC3(adapter, p, flash_cmd, flash_optype, img_size,
				  img_offset);

		/* The current FW image on the card does not support OFFSET
		 * based flashing. Retry using older mechanism of OPTYPE based
		 * flashing
		 */
		if (FUNC1(status) == MCC_STATUS_ILLEGAL_FIELD &&
		    flash_optype == OPTYPE_OFFSET_SPECIFIED) {
			flash_offset_support = false;
			goto retry_flash;
		}

		/* For old FW images ignore ILLEGAL_FIELD error or errors on
		 * UFI_DIR region
		 */
		if (old_fw_img &&
		    (FUNC1(status) == MCC_STATUS_ILLEGAL_FIELD ||
		     (img_optype == OPTYPE_UFI_DIR &&
		      FUNC1(status) == MCC_STATUS_FAILED))) {
			continue;
		} else if (status) {
			FUNC5(dev, "Flashing section type 0x%x failed\n",
				img_type);

			switch (FUNC0(status)) {
			case MCC_ADDL_STATUS_MISSING_SIGNATURE:
				FUNC5(dev,
					"Digital signature missing in FW\n");
				return -EINVAL;
			case MCC_ADDL_STATUS_INVALID_SIGNATURE:
				FUNC5(dev,
					"Invalid digital signature in FW\n");
				return -EINVAL;
			default:
				return -EFAULT;
			}
		}
	}
	return 0;
}