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
struct hif_scatter_req {int virt_scat; struct bus_request* busrequest; struct hif_scatter_req* virt_dma_buf; struct hif_scatter_req* sgentries; } ;
typedef  struct hif_scatter_req u8 ;
struct scatterlist {int dummy; } ;
struct hif_scatter_item {int dummy; } ;
struct bus_request {struct hif_scatter_req* scat_req; } ;
struct ath6kl_sdio {int /*<<< orphan*/  ar; } ;

/* Variables and functions */
 int ATH6KL_MAX_TRANSFER_SIZE_PER_SCATTER ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 int L1_CACHE_BYTES ; 
 struct bus_request* FUNC1 (struct ath6kl_sdio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct hif_scatter_req*) ; 
 int /*<<< orphan*/  FUNC3 (struct hif_scatter_req*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ath6kl_sdio *ar_sdio,
					   int n_scat_entry, int n_scat_req,
					   bool virt_scat)
{
	struct hif_scatter_req *s_req;
	struct bus_request *bus_req;
	int i, scat_req_sz, scat_list_sz, size;
	u8 *virt_buf;

	scat_list_sz = n_scat_entry * sizeof(struct hif_scatter_item);
	scat_req_sz = sizeof(*s_req) + scat_list_sz;

	if (!virt_scat)
		size = sizeof(struct scatterlist) * n_scat_entry;
	else
		size =  2 * L1_CACHE_BYTES +
			ATH6KL_MAX_TRANSFER_SIZE_PER_SCATTER;

	for (i = 0; i < n_scat_req; i++) {
		/* allocate the scatter request */
		s_req = FUNC4(scat_req_sz, GFP_KERNEL);
		if (!s_req)
			return -ENOMEM;

		if (virt_scat) {
			virt_buf = FUNC4(size, GFP_KERNEL);
			if (!virt_buf) {
				FUNC3(s_req);
				return -ENOMEM;
			}

			s_req->virt_dma_buf =
				(u8 *)FUNC0((unsigned long)virt_buf);
		} else {
			/* allocate sglist */
			s_req->sgentries = FUNC4(size, GFP_KERNEL);

			if (!s_req->sgentries) {
				FUNC3(s_req);
				return -ENOMEM;
			}
		}

		/* allocate a bus request for this scatter request */
		bus_req = FUNC1(ar_sdio);
		if (!bus_req) {
			FUNC3(s_req->sgentries);
			FUNC3(s_req->virt_dma_buf);
			FUNC3(s_req);
			return -ENOMEM;
		}

		/* assign the scatter request to this bus request */
		bus_req->scat_req = s_req;
		s_req->busrequest = bus_req;

		s_req->virt_scat = virt_scat;

		/* add it to the scatter pool */
		FUNC2(ar_sdio->ar, s_req);
	}

	return 0;
}