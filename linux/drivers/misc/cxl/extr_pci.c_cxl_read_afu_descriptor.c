
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct cxl_afu {int pp_size; int crs_len; int eb_len; int dev; int eb_offset; int crs_offset; TYPE_1__* native; int pp_psa; int psa; int modes_supported; int crs_num; int max_procs_virtualised; int pp_irqs; } ;
struct TYPE_2__ {int pp_offset; } ;


 scalar_t__ AFUD_AFU_DIRECTED (int ) ;
 int AFUD_CR_LEN (int ) ;
 scalar_t__ AFUD_DEDICATED_PROCESS (int ) ;
 int AFUD_EB_LEN (int ) ;
 int AFUD_NUM_CRS (int ) ;
 int AFUD_NUM_INTS_PER_PROC (int ) ;
 int AFUD_NUM_PROCS (int ) ;
 int AFUD_PPPSA_LEN (int ) ;
 int AFUD_PPPSA_PP (int ) ;
 int AFUD_PPPSA_PSA (int ) ;
 int AFUD_READ_CR (struct cxl_afu*) ;
 int AFUD_READ_CR_OFF (struct cxl_afu*) ;
 int AFUD_READ_EB (struct cxl_afu*) ;
 int AFUD_READ_EB_OFF (struct cxl_afu*) ;
 int AFUD_READ_INFO (struct cxl_afu*) ;
 int AFUD_READ_PPPSA (struct cxl_afu*) ;
 int AFUD_READ_PPPSA_OFF (struct cxl_afu*) ;
 scalar_t__ AFUD_TIME_SLICED (int ) ;
 int CXL_MODE_DEDICATED ;
 int CXL_MODE_DIRECTED ;
 int CXL_MODE_TIME_SLICED ;
 scalar_t__ EXTRACT_PPC_BITS (int ,int ,int) ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*,int ) ;

__attribute__((used)) static int cxl_read_afu_descriptor(struct cxl_afu *afu)
{
 u64 val;

 val = AFUD_READ_INFO(afu);
 afu->pp_irqs = AFUD_NUM_INTS_PER_PROC(val);
 afu->max_procs_virtualised = AFUD_NUM_PROCS(val);
 afu->crs_num = AFUD_NUM_CRS(val);

 if (AFUD_AFU_DIRECTED(val))
  afu->modes_supported |= CXL_MODE_DIRECTED;
 if (AFUD_DEDICATED_PROCESS(val))
  afu->modes_supported |= CXL_MODE_DEDICATED;
 if (AFUD_TIME_SLICED(val))
  afu->modes_supported |= CXL_MODE_TIME_SLICED;

 val = AFUD_READ_PPPSA(afu);
 afu->pp_size = AFUD_PPPSA_LEN(val) * 4096;
 afu->psa = AFUD_PPPSA_PSA(val);
 if ((afu->pp_psa = AFUD_PPPSA_PP(val)))
  afu->native->pp_offset = AFUD_READ_PPPSA_OFF(afu);

 val = AFUD_READ_CR(afu);
 afu->crs_len = AFUD_CR_LEN(val) * 256;
 afu->crs_offset = AFUD_READ_CR_OFF(afu);



 afu->eb_len = AFUD_EB_LEN(AFUD_READ_EB(afu)) * 4096;
 afu->eb_offset = AFUD_READ_EB_OFF(afu);


 if (EXTRACT_PPC_BITS(afu->eb_offset, 0, 11) != 0) {
  dev_warn(&afu->dev,
    "Invalid AFU error buffer offset %Lx\n",
    afu->eb_offset);
  dev_info(&afu->dev,
    "Ignoring AFU error buffer in the descriptor\n");

  afu->eb_len = 0;
 }

 return 0;
}
