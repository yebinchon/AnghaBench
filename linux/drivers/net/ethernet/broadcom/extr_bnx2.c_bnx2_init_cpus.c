
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bnx2_rv2p_fw_file {int proc2; int proc1; } ;
struct bnx2_mips_fw_file {int cp; int com; int tpat; int txp; int rxp; } ;
struct bnx2 {TYPE_2__* rv2p_firmware; TYPE_1__* mips_firmware; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_3__ {scalar_t__ data; } ;


 int RV2P_PROC1 ;
 int RV2P_PROC2 ;
 int cpu_reg_com ;
 int cpu_reg_cp ;
 int cpu_reg_rxp ;
 int cpu_reg_tpat ;
 int cpu_reg_txp ;
 int load_cpu_fw (struct bnx2*,int *,int *) ;
 int load_rv2p_fw (struct bnx2*,int ,int *) ;

__attribute__((used)) static int
bnx2_init_cpus(struct bnx2 *bp)
{
 const struct bnx2_mips_fw_file *mips_fw =
  (const struct bnx2_mips_fw_file *) bp->mips_firmware->data;
 const struct bnx2_rv2p_fw_file *rv2p_fw =
  (const struct bnx2_rv2p_fw_file *) bp->rv2p_firmware->data;
 int rc;


 load_rv2p_fw(bp, RV2P_PROC1, &rv2p_fw->proc1);
 load_rv2p_fw(bp, RV2P_PROC2, &rv2p_fw->proc2);


 rc = load_cpu_fw(bp, &cpu_reg_rxp, &mips_fw->rxp);
 if (rc)
  goto init_cpu_err;


 rc = load_cpu_fw(bp, &cpu_reg_txp, &mips_fw->txp);
 if (rc)
  goto init_cpu_err;


 rc = load_cpu_fw(bp, &cpu_reg_tpat, &mips_fw->tpat);
 if (rc)
  goto init_cpu_err;


 rc = load_cpu_fw(bp, &cpu_reg_com, &mips_fw->com);
 if (rc)
  goto init_cpu_err;


 rc = load_cpu_fw(bp, &cpu_reg_cp, &mips_fw->cp);

init_cpu_err:
 return rc;
}
