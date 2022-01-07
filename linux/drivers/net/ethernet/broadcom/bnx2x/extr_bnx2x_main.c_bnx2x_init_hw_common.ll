; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_init_hw_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_init_hw_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ilt_client_info = type { i32, i64, i64 }
%struct.bnx2x_ilt = type { i32, i64, i64 }

@NETIF_MSG_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"starting common init  func %d\0A\00", align 1
@HW_LOCK_RESOURCE_RESET = common dso_local global i32 0, align 4
@GRCBASE_MISC = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_1_SET = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_MSTAT0 = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_MSTAT1 = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_SET = common dso_local global i32 0, align 4
@BLOCK_MISC = common dso_local global i32 0, align 4
@PHASE_COMMON = common dso_local global i32 0, align 4
@E2_FUNC_MAX = common dso_local global i32 0, align 4
@PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER = common dso_local global i32 0, align 4
@BLOCK_PXP = common dso_local global i32 0, align 4
@PXP_REG_PXP_INT_MASK_0 = common dso_local global i32 0, align 4
@BLOCK_PXP2 = common dso_local global i32 0, align 4
@INITOP_SET = common dso_local global i32 0, align 4
@PXP2_REG_PGL_TAGS_LIMIT = common dso_local global i32 0, align 4
@PXP2_REG_RQ_CFG_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"PXP2 CFG failed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@PXP2_REG_RD_INIT_DONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"PXP2 RD_INIT failed\0A\00", align 1
@ILT_NUM_PAGE_ENTRIES = common dso_local global i64 0, align 8
@ILT_CLIENT_TM = common dso_local global i32 0, align 4
@INITOP_CLEAR = common dso_local global i32 0, align 4
@PXP2_REG_RQ_DRAM_ALIGN = common dso_local global i32 0, align 4
@BNX2X_PXP_DRAM_ALIGN = common dso_local global i32 0, align 4
@PXP2_REG_RQ_DRAM_ALIGN_RD = common dso_local global i32 0, align 4
@PXP2_REG_RQ_DRAM_ALIGN_SEL = common dso_local global i32 0, align 4
@PXP2_REG_RQ_DISABLE_INPUTS = common dso_local global i32 0, align 4
@PXP2_REG_RD_DISABLE_INPUTS = common dso_local global i32 0, align 4
@BLOCK_PGLUE_B = common dso_local global i32 0, align 4
@BLOCK_ATC = common dso_local global i32 0, align 4
@ATC_REG_ATC_INIT_DONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"ATC_INIT failed\0A\00", align 1
@BLOCK_DMAE = common dso_local global i32 0, align 4
@TSEM_REG_PRAM = common dso_local global i32 0, align 4
@BLOCK_TCM = common dso_local global i32 0, align 4
@BLOCK_UCM = common dso_local global i32 0, align 4
@BLOCK_CCM = common dso_local global i32 0, align 4
@BLOCK_XCM = common dso_local global i32 0, align 4
@XSEM_REG_PASSIVE_BUFFER = common dso_local global i32 0, align 4
@CSEM_REG_PASSIVE_BUFFER = common dso_local global i32 0, align 4
@TSEM_REG_PASSIVE_BUFFER = common dso_local global i32 0, align 4
@USEM_REG_PASSIVE_BUFFER = common dso_local global i32 0, align 4
@BLOCK_QM = common dso_local global i32 0, align 4
@QM_REG_SOFT_RESET = common dso_local global i32 0, align 4
@BLOCK_TM = common dso_local global i32 0, align 4
@BLOCK_DORQ = common dso_local global i32 0, align 4
@DORQ_REG_DORQ_INT_MASK = common dso_local global i32 0, align 4
@BLOCK_BRB1 = common dso_local global i32 0, align 4
@BLOCK_PRS = common dso_local global i32 0, align 4
@PRS_REG_A_PRSU_20 = common dso_local global i32 0, align 4
@PRS_REG_E1HOV_MODE = common dso_local global i32 0, align 4
@PRS_REG_HDRS_AFTER_BASIC = common dso_local global i32 0, align 4
@PRS_REG_MUST_HAVE_HDRS = common dso_local global i32 0, align 4
@PRS_REG_HDRS_AFTER_TAG_0 = common dso_local global i32 0, align 4
@PRS_REG_TAG_ETHERTYPE_0 = common dso_local global i32 0, align 4
@PRS_REG_TAG_LEN_0 = common dso_local global i32 0, align 4
@BLOCK_TSDM = common dso_local global i32 0, align 4
@BLOCK_CSDM = common dso_local global i32 0, align 4
@BLOCK_USDM = common dso_local global i32 0, align 4
@BLOCK_XSDM = common dso_local global i32 0, align 4
@TSEM_REG_FAST_MEMORY = common dso_local global i32 0, align 4
@VFC_REG_MEMORIES_RST = common dso_local global i32 0, align 4
@VFC_MEMORIES_RST_REG_CAM_RST = common dso_local global i32 0, align 4
@VFC_MEMORIES_RST_REG_RAM_RST = common dso_local global i32 0, align 4
@XSEM_REG_FAST_MEMORY = common dso_local global i32 0, align 4
@BLOCK_TSEM = common dso_local global i32 0, align 4
@BLOCK_USEM = common dso_local global i32 0, align 4
@BLOCK_CSEM = common dso_local global i32 0, align 4
@BLOCK_XSEM = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_1_CLEAR = common dso_local global i32 0, align 4
@BLOCK_UPB = common dso_local global i32 0, align 4
@BLOCK_XPB = common dso_local global i32 0, align 4
@BLOCK_PBF = common dso_local global i32 0, align 4
@PBF_REG_HDRS_AFTER_BASIC = common dso_local global i32 0, align 4
@PBF_REG_MUST_HAVE_HDRS = common dso_local global i32 0, align 4
@PBF_REG_HDRS_AFTER_TAG_0 = common dso_local global i32 0, align 4
@PBF_REG_TAG_ETHERTYPE_0 = common dso_local global i32 0, align 4
@PBF_REG_TAG_LEN_0 = common dso_local global i32 0, align 4
@SRC_REG_SOFT_RST = common dso_local global i32 0, align 4
@BLOCK_SRC = common dso_local global i32 0, align 4
@SRC_REG_KEYSEARCH_0 = common dso_local global i32 0, align 4
@SRC_REG_KEYSEARCH_1 = common dso_local global i32 0, align 4
@SRC_REG_KEYSEARCH_2 = common dso_local global i32 0, align 4
@SRC_REG_KEYSEARCH_3 = common dso_local global i32 0, align 4
@SRC_REG_KEYSEARCH_4 = common dso_local global i32 0, align 4
@SRC_REG_KEYSEARCH_5 = common dso_local global i32 0, align 4
@SRC_REG_KEYSEARCH_6 = common dso_local global i32 0, align 4
@SRC_REG_KEYSEARCH_7 = common dso_local global i32 0, align 4
@SRC_REG_KEYSEARCH_8 = common dso_local global i32 0, align 4
@SRC_REG_KEYSEARCH_9 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"please adjust the size of cdu_context(%ld)\0A\00", align 1
@BLOCK_CDU = common dso_local global i32 0, align 4
@CDU_REG_CDU_GLOBAL_PARAMS = common dso_local global i32 0, align 4
@BLOCK_CFC = common dso_local global i32 0, align 4
@CFC_REG_INIT_REG = common dso_local global i32 0, align 4
@CFC_REG_CFC_INT_MASK = common dso_local global i32 0, align 4
@CFC_REG_DEBUG0 = common dso_local global i32 0, align 4
@BLOCK_HC = common dso_local global i32 0, align 4
@IGU_REG_RESET_MEMORIES = common dso_local global i32 0, align 4
@BLOCK_IGU = common dso_local global i32 0, align 4
@BLOCK_MISC_AEU = common dso_local global i32 0, align 4
@PCICFG_OFFSET = common dso_local global i32 0, align 4
@PXPCS_TL_CONTROL_5 = common dso_local global i32 0, align 4
@PXPCS_TL_CONTROL_5_ERR_UNSPPORT1 = common dso_local global i32 0, align 4
@PXPCS_TL_CONTROL_5_ERR_UNSPPORT = common dso_local global i32 0, align 4
@PXPCS_TL_FUNC345_STAT = common dso_local global i32 0, align 4
@PXPCS_TL_FUNC345_STAT_ERR_UNSPPORT4 = common dso_local global i32 0, align 4
@PXPCS_TL_FUNC345_STAT_ERR_UNSPPORT3 = common dso_local global i32 0, align 4
@PXPCS_TL_FUNC345_STAT_ERR_UNSPPORT2 = common dso_local global i32 0, align 4
@PXPCS_TL_FUNC678_STAT = common dso_local global i32 0, align 4
@PXPCS_TL_FUNC678_STAT_ERR_UNSPPORT7 = common dso_local global i32 0, align 4
@PXPCS_TL_FUNC678_STAT_ERR_UNSPPORT6 = common dso_local global i32 0, align 4
@PXPCS_TL_FUNC678_STAT_ERR_UNSPPORT5 = common dso_local global i32 0, align 4
@BLOCK_NIG = common dso_local global i32 0, align 4
@NIG_REG_LLH_MF_MODE = common dso_local global i32 0, align 4
@NIG_REG_LLH_E1HOV_MODE = common dso_local global i32 0, align 4
@CFC_REG_LL_INIT_DONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"CFC LL_INIT failed\0A\00", align 1
@CFC_REG_AC_INIT_DONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"CFC AC_INIT failed\0A\00", align 1
@CFC_REG_CAM_INIT_DONE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"CFC CAM_INIT failed\0A\00", align 1
@NIG_REG_STAT2_BRB_OCTET = common dso_local global i32 0, align 4
@wb_data = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [31 x i8] c"internal mem self test failed\0A\00", align 1
@PXP2_REG_PXP2_INT_STS_CLR_0 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [47 x i8] c"Bootcode is missing - can not initialize link\0A\00", align 1
@netproc_fw_ver = common dso_local global i32 0, align 4
@XSEM_REG_PRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_init_hw_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_init_hw_common(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ilt_client_info, align 8
  %7 = alloca %struct.bnx2x_ilt, align 8
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  %9 = load i32, i32* @NETIF_MSG_HW, align 4
  %10 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %11 = call i32 @BP_ABS_FUNC(%struct.bnx2x* %10)
  %12 = call i32 @DP(i32 %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %14 = load i32, i32* @HW_LOCK_RESOURCE_RESET, align 4
  %15 = call i32 @bnx2x_acquire_hw_lock(%struct.bnx2x* %13, i32 %14)
  %16 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %17 = call i32 @bnx2x_reset_common(%struct.bnx2x* %16)
  %18 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %19 = load i32, i32* @GRCBASE_MISC, align 4
  %20 = load i32, i32* @MISC_REGISTERS_RESET_REG_1_SET, align 4
  %21 = add nsw i32 %19, %20
  %22 = call i32 @REG_WR(%struct.bnx2x* %18, i32 %21, i32 -1)
  store i32 65532, i32* %4, align 4
  %23 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %24 = call i64 @CHIP_IS_E3(%struct.bnx2x* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  %27 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_MSTAT0, align 4
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_MSTAT1, align 4
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %26, %1
  %34 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %35 = load i32, i32* @GRCBASE_MISC, align 4
  %36 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_SET, align 4
  %37 = add nsw i32 %35, %36
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @REG_WR(%struct.bnx2x* %34, i32 %37, i32 %38)
  %40 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %41 = load i32, i32* @HW_LOCK_RESOURCE_RESET, align 4
  %42 = call i32 @bnx2x_release_hw_lock(%struct.bnx2x* %40, i32 %41)
  %43 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %44 = load i32, i32* @BLOCK_MISC, align 4
  %45 = load i32, i32* @PHASE_COMMON, align 4
  %46 = call i32 @bnx2x_init_block(%struct.bnx2x* %43, i32 %44, i32 %45)
  %47 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %48 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %81, label %50

50:                                               ; preds = %33
  %51 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %52 = call i32 @BP_PATH(%struct.bnx2x* %51)
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %77, %50
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @E2_FUNC_MAX, align 4
  %56 = mul nsw i32 %55, 2
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %80

58:                                               ; preds = %53
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %61 = call i32 @BP_ABS_FUNC(%struct.bnx2x* %60)
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %65 = load i32, i32* @PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER, align 4
  %66 = call i32 @REG_WR(%struct.bnx2x* %64, i32 %65, i32 1)
  br label %77

67:                                               ; preds = %58
  %68 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @bnx2x_pretend_func(%struct.bnx2x* %68, i32 %69)
  %71 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %72 = call i32 @bnx2x_pf_disable(%struct.bnx2x* %71)
  %73 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %74 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %75 = call i32 @BP_ABS_FUNC(%struct.bnx2x* %74)
  %76 = call i32 @bnx2x_pretend_func(%struct.bnx2x* %73, i32 %75)
  br label %77

77:                                               ; preds = %67, %63
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 2
  store i32 %79, i32* %5, align 4
  br label %53

80:                                               ; preds = %53
  br label %81

81:                                               ; preds = %80, %33
  %82 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %83 = load i32, i32* @BLOCK_PXP, align 4
  %84 = load i32, i32* @PHASE_COMMON, align 4
  %85 = call i32 @bnx2x_init_block(%struct.bnx2x* %82, i32 %83, i32 %84)
  %86 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %87 = call i64 @CHIP_IS_E1(%struct.bnx2x* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  %90 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %91 = load i32, i32* @PXP_REG_PXP_INT_MASK_0, align 4
  %92 = call i32 @REG_WR(%struct.bnx2x* %90, i32 %91, i32 0)
  br label %93

93:                                               ; preds = %89, %81
  %94 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %95 = load i32, i32* @BLOCK_PXP2, align 4
  %96 = load i32, i32* @PHASE_COMMON, align 4
  %97 = call i32 @bnx2x_init_block(%struct.bnx2x* %94, i32 %95, i32 %96)
  %98 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %99 = call i32 @bnx2x_init_pxp(%struct.bnx2x* %98)
  %100 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %101 = call i32 @bnx2x_set_endianity(%struct.bnx2x* %100)
  %102 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %103 = load i32, i32* @INITOP_SET, align 4
  %104 = call i32 @bnx2x_ilt_init_page_size(%struct.bnx2x* %102, i32 %103)
  %105 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %106 = call i64 @CHIP_REV_IS_FPGA(%struct.bnx2x* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %93
  %109 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %110 = call i64 @CHIP_IS_E1H(%struct.bnx2x* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %114 = load i32, i32* @PXP2_REG_PGL_TAGS_LIMIT, align 4
  %115 = call i32 @REG_WR(%struct.bnx2x* %113, i32 %114, i32 1)
  br label %116

116:                                              ; preds = %112, %108, %93
  %117 = call i32 @msleep(i32 100)
  %118 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %119 = load i32, i32* @PXP2_REG_RQ_CFG_DONE, align 4
  %120 = call i32 @REG_RD(%struct.bnx2x* %118, i32 %119)
  store i32 %120, i32* %4, align 4
  %121 = load i32, i32* %4, align 4
  %122 = icmp ne i32 %121, 1
  br i1 %122, label %123, label %127

123:                                              ; preds = %116
  %124 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %125 = load i32, i32* @EBUSY, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %2, align 4
  br label %737

127:                                              ; preds = %116
  %128 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %129 = load i32, i32* @PXP2_REG_RD_INIT_DONE, align 4
  %130 = call i32 @REG_RD(%struct.bnx2x* %128, i32 %129)
  store i32 %130, i32* %4, align 4
  %131 = load i32, i32* %4, align 4
  %132 = icmp ne i32 %131, 1
  br i1 %132, label %133, label %137

133:                                              ; preds = %127
  %134 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %135 = load i32, i32* @EBUSY, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %2, align 4
  br label %737

137:                                              ; preds = %127
  %138 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %139 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %175, label %141

141:                                              ; preds = %137
  %142 = call i32 @memset(%struct.ilt_client_info* %6, i32 0, i32 24)
  %143 = bitcast %struct.bnx2x_ilt* %7 to %struct.ilt_client_info*
  %144 = call i32 @memset(%struct.ilt_client_info* %143, i32 0, i32 24)
  %145 = getelementptr inbounds %struct.ilt_client_info, %struct.ilt_client_info* %6, i32 0, i32 2
  store i64 0, i64* %145, align 8
  %146 = load i64, i64* @ILT_NUM_PAGE_ENTRIES, align 8
  %147 = sub nsw i64 %146, 1
  %148 = getelementptr inbounds %struct.ilt_client_info, %struct.ilt_client_info* %6, i32 0, i32 1
  store i64 %147, i64* %148, align 8
  %149 = load i32, i32* @ILT_CLIENT_TM, align 4
  %150 = getelementptr inbounds %struct.ilt_client_info, %struct.ilt_client_info* %6, i32 0, i32 0
  store i32 %149, i32* %150, align 8
  %151 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %152 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %153 = call i32 @BP_PATH(%struct.bnx2x* %152)
  %154 = add nsw i32 %153, 6
  %155 = call i32 @bnx2x_pretend_func(%struct.bnx2x* %151, i32 %154)
  %156 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %157 = bitcast %struct.bnx2x_ilt* %7 to %struct.ilt_client_info*
  %158 = load i32, i32* @INITOP_CLEAR, align 4
  %159 = call i32 @bnx2x_ilt_client_init_op_ilt(%struct.bnx2x* %156, %struct.ilt_client_info* %157, %struct.ilt_client_info* %6, i32 %158)
  %160 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %161 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %162 = call i32 @BP_ABS_FUNC(%struct.bnx2x* %161)
  %163 = call i32 @bnx2x_pretend_func(%struct.bnx2x* %160, i32 %162)
  %164 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %165 = load i32, i32* @PXP2_REG_RQ_DRAM_ALIGN, align 4
  %166 = load i32, i32* @BNX2X_PXP_DRAM_ALIGN, align 4
  %167 = call i32 @REG_WR(%struct.bnx2x* %164, i32 %165, i32 %166)
  %168 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %169 = load i32, i32* @PXP2_REG_RQ_DRAM_ALIGN_RD, align 4
  %170 = load i32, i32* @BNX2X_PXP_DRAM_ALIGN, align 4
  %171 = call i32 @REG_WR(%struct.bnx2x* %168, i32 %169, i32 %170)
  %172 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %173 = load i32, i32* @PXP2_REG_RQ_DRAM_ALIGN_SEL, align 4
  %174 = call i32 @REG_WR(%struct.bnx2x* %172, i32 %173, i32 1)
  br label %175

175:                                              ; preds = %141, %137
  %176 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %177 = load i32, i32* @PXP2_REG_RQ_DISABLE_INPUTS, align 4
  %178 = call i32 @REG_WR(%struct.bnx2x* %176, i32 %177, i32 0)
  %179 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %180 = load i32, i32* @PXP2_REG_RD_DISABLE_INPUTS, align 4
  %181 = call i32 @REG_WR(%struct.bnx2x* %179, i32 %180, i32 0)
  %182 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %183 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %228, label %185

185:                                              ; preds = %175
  %186 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %187 = call i64 @CHIP_REV_IS_EMUL(%struct.bnx2x* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %185
  br label %196

190:                                              ; preds = %185
  %191 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %192 = call i64 @CHIP_REV_IS_FPGA(%struct.bnx2x* %191)
  %193 = icmp ne i64 %192, 0
  %194 = zext i1 %193 to i64
  %195 = select i1 %193, i32 400, i32 0
  br label %196

196:                                              ; preds = %190, %189
  %197 = phi i32 [ 1000, %189 ], [ %195, %190 ]
  store i32 %197, i32* %8, align 4
  %198 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %199 = load i32, i32* @BLOCK_PGLUE_B, align 4
  %200 = load i32, i32* @PHASE_COMMON, align 4
  %201 = call i32 @bnx2x_init_block(%struct.bnx2x* %198, i32 %199, i32 %200)
  %202 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %203 = load i32, i32* @BLOCK_ATC, align 4
  %204 = load i32, i32* @PHASE_COMMON, align 4
  %205 = call i32 @bnx2x_init_block(%struct.bnx2x* %202, i32 %203, i32 %204)
  br label %206

206:                                              ; preds = %218, %196
  %207 = call i32 @msleep(i32 200)
  %208 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %209 = load i32, i32* @ATC_REG_ATC_INIT_DONE, align 4
  %210 = call i32 @REG_RD(%struct.bnx2x* %208, i32 %209)
  store i32 %210, i32* %4, align 4
  br label %211

211:                                              ; preds = %206
  %212 = load i32, i32* %8, align 4
  %213 = add nsw i32 %212, -1
  store i32 %213, i32* %8, align 4
  %214 = icmp ne i32 %212, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %211
  %216 = load i32, i32* %4, align 4
  %217 = icmp ne i32 %216, 1
  br label %218

218:                                              ; preds = %215, %211
  %219 = phi i1 [ false, %211 ], [ %217, %215 ]
  br i1 %219, label %206, label %220

220:                                              ; preds = %218
  %221 = load i32, i32* %4, align 4
  %222 = icmp ne i32 %221, 1
  br i1 %222, label %223, label %227

223:                                              ; preds = %220
  %224 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %225 = load i32, i32* @EBUSY, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %2, align 4
  br label %737

227:                                              ; preds = %220
  br label %228

228:                                              ; preds = %227, %175
  %229 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %230 = load i32, i32* @BLOCK_DMAE, align 4
  %231 = load i32, i32* @PHASE_COMMON, align 4
  %232 = call i32 @bnx2x_init_block(%struct.bnx2x* %229, i32 %230, i32 %231)
  %233 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %234 = call i32 @bnx2x_iov_init_dmae(%struct.bnx2x* %233)
  %235 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %236 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %235, i32 0, i32 0
  store i32 1, i32* %236, align 8
  %237 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %238 = load i32, i32* @TSEM_REG_PRAM, align 4
  %239 = call i32 @bnx2x_init_fill(%struct.bnx2x* %237, i32 %238, i32 0, i32 8, i32 1)
  %240 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %241 = load i32, i32* @BLOCK_TCM, align 4
  %242 = load i32, i32* @PHASE_COMMON, align 4
  %243 = call i32 @bnx2x_init_block(%struct.bnx2x* %240, i32 %241, i32 %242)
  %244 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %245 = load i32, i32* @BLOCK_UCM, align 4
  %246 = load i32, i32* @PHASE_COMMON, align 4
  %247 = call i32 @bnx2x_init_block(%struct.bnx2x* %244, i32 %245, i32 %246)
  %248 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %249 = load i32, i32* @BLOCK_CCM, align 4
  %250 = load i32, i32* @PHASE_COMMON, align 4
  %251 = call i32 @bnx2x_init_block(%struct.bnx2x* %248, i32 %249, i32 %250)
  %252 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %253 = load i32, i32* @BLOCK_XCM, align 4
  %254 = load i32, i32* @PHASE_COMMON, align 4
  %255 = call i32 @bnx2x_init_block(%struct.bnx2x* %252, i32 %253, i32 %254)
  %256 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %257 = load i32, i32* @XSEM_REG_PASSIVE_BUFFER, align 4
  %258 = call i32 @bnx2x_read_dmae(%struct.bnx2x* %256, i32 %257, i32 3)
  %259 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %260 = load i32, i32* @CSEM_REG_PASSIVE_BUFFER, align 4
  %261 = call i32 @bnx2x_read_dmae(%struct.bnx2x* %259, i32 %260, i32 3)
  %262 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %263 = load i32, i32* @TSEM_REG_PASSIVE_BUFFER, align 4
  %264 = call i32 @bnx2x_read_dmae(%struct.bnx2x* %262, i32 %263, i32 3)
  %265 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %266 = load i32, i32* @USEM_REG_PASSIVE_BUFFER, align 4
  %267 = call i32 @bnx2x_read_dmae(%struct.bnx2x* %265, i32 %266, i32 3)
  %268 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %269 = load i32, i32* @BLOCK_QM, align 4
  %270 = load i32, i32* @PHASE_COMMON, align 4
  %271 = call i32 @bnx2x_init_block(%struct.bnx2x* %268, i32 %269, i32 %270)
  %272 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %273 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %274 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @INITOP_SET, align 4
  %277 = call i32 @bnx2x_qm_init_ptr_table(%struct.bnx2x* %272, i32 %275, i32 %276)
  %278 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %279 = load i32, i32* @QM_REG_SOFT_RESET, align 4
  %280 = call i32 @REG_WR(%struct.bnx2x* %278, i32 %279, i32 1)
  %281 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %282 = load i32, i32* @QM_REG_SOFT_RESET, align 4
  %283 = call i32 @REG_WR(%struct.bnx2x* %281, i32 %282, i32 0)
  %284 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %285 = call i64 @CNIC_SUPPORT(%struct.bnx2x* %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %292

287:                                              ; preds = %228
  %288 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %289 = load i32, i32* @BLOCK_TM, align 4
  %290 = load i32, i32* @PHASE_COMMON, align 4
  %291 = call i32 @bnx2x_init_block(%struct.bnx2x* %288, i32 %289, i32 %290)
  br label %292

292:                                              ; preds = %287, %228
  %293 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %294 = load i32, i32* @BLOCK_DORQ, align 4
  %295 = load i32, i32* @PHASE_COMMON, align 4
  %296 = call i32 @bnx2x_init_block(%struct.bnx2x* %293, i32 %294, i32 %295)
  %297 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %298 = call i64 @CHIP_REV_IS_SLOW(%struct.bnx2x* %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %304, label %300

300:                                              ; preds = %292
  %301 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %302 = load i32, i32* @DORQ_REG_DORQ_INT_MASK, align 4
  %303 = call i32 @REG_WR(%struct.bnx2x* %301, i32 %302, i32 0)
  br label %304

304:                                              ; preds = %300, %292
  %305 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %306 = load i32, i32* @BLOCK_BRB1, align 4
  %307 = load i32, i32* @PHASE_COMMON, align 4
  %308 = call i32 @bnx2x_init_block(%struct.bnx2x* %305, i32 %306, i32 %307)
  %309 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %310 = load i32, i32* @BLOCK_PRS, align 4
  %311 = load i32, i32* @PHASE_COMMON, align 4
  %312 = call i32 @bnx2x_init_block(%struct.bnx2x* %309, i32 %310, i32 %311)
  %313 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %314 = load i32, i32* @PRS_REG_A_PRSU_20, align 4
  %315 = call i32 @REG_WR(%struct.bnx2x* %313, i32 %314, i32 15)
  %316 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %317 = call i64 @CHIP_IS_E1(%struct.bnx2x* %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %326, label %319

319:                                              ; preds = %304
  %320 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %321 = load i32, i32* @PRS_REG_E1HOV_MODE, align 4
  %322 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %323 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @REG_WR(%struct.bnx2x* %320, i32 %321, i32 %324)
  br label %326

326:                                              ; preds = %319, %304
  %327 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %328 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %327)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %365, label %330

330:                                              ; preds = %326
  %331 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %332 = call i32 @CHIP_IS_E3B0(%struct.bnx2x* %331)
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %365, label %334

334:                                              ; preds = %330
  %335 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %336 = call i64 @IS_MF_AFEX(%struct.bnx2x* %335)
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %354

338:                                              ; preds = %334
  %339 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %340 = load i32, i32* @PRS_REG_HDRS_AFTER_BASIC, align 4
  %341 = call i32 @REG_WR(%struct.bnx2x* %339, i32 %340, i32 14)
  %342 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %343 = load i32, i32* @PRS_REG_MUST_HAVE_HDRS, align 4
  %344 = call i32 @REG_WR(%struct.bnx2x* %342, i32 %343, i32 10)
  %345 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %346 = load i32, i32* @PRS_REG_HDRS_AFTER_TAG_0, align 4
  %347 = call i32 @REG_WR(%struct.bnx2x* %345, i32 %346, i32 6)
  %348 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %349 = load i32, i32* @PRS_REG_TAG_ETHERTYPE_0, align 4
  %350 = call i32 @REG_WR(%struct.bnx2x* %348, i32 %349, i32 35110)
  %351 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %352 = load i32, i32* @PRS_REG_TAG_LEN_0, align 4
  %353 = call i32 @REG_WR(%struct.bnx2x* %351, i32 %352, i32 4)
  br label %364

354:                                              ; preds = %334
  %355 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %356 = load i32, i32* @PRS_REG_HDRS_AFTER_BASIC, align 4
  %357 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %358 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = icmp ne i32 %359, 0
  %361 = zext i1 %360 to i64
  %362 = select i1 %360, i32 7, i32 6
  %363 = call i32 @REG_WR(%struct.bnx2x* %355, i32 %356, i32 %362)
  br label %364

364:                                              ; preds = %354, %338
  br label %365

365:                                              ; preds = %364, %330, %326
  %366 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %367 = load i32, i32* @BLOCK_TSDM, align 4
  %368 = load i32, i32* @PHASE_COMMON, align 4
  %369 = call i32 @bnx2x_init_block(%struct.bnx2x* %366, i32 %367, i32 %368)
  %370 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %371 = load i32, i32* @BLOCK_CSDM, align 4
  %372 = load i32, i32* @PHASE_COMMON, align 4
  %373 = call i32 @bnx2x_init_block(%struct.bnx2x* %370, i32 %371, i32 %372)
  %374 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %375 = load i32, i32* @BLOCK_USDM, align 4
  %376 = load i32, i32* @PHASE_COMMON, align 4
  %377 = call i32 @bnx2x_init_block(%struct.bnx2x* %374, i32 %375, i32 %376)
  %378 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %379 = load i32, i32* @BLOCK_XSDM, align 4
  %380 = load i32, i32* @PHASE_COMMON, align 4
  %381 = call i32 @bnx2x_init_block(%struct.bnx2x* %378, i32 %379, i32 %380)
  %382 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %383 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %382)
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %403, label %385

385:                                              ; preds = %365
  %386 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %387 = load i32, i32* @TSEM_REG_FAST_MEMORY, align 4
  %388 = load i32, i32* @VFC_REG_MEMORIES_RST, align 4
  %389 = add nsw i32 %387, %388
  %390 = load i32, i32* @VFC_MEMORIES_RST_REG_CAM_RST, align 4
  %391 = load i32, i32* @VFC_MEMORIES_RST_REG_RAM_RST, align 4
  %392 = or i32 %390, %391
  %393 = call i32 @REG_WR(%struct.bnx2x* %386, i32 %389, i32 %392)
  %394 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %395 = load i32, i32* @XSEM_REG_FAST_MEMORY, align 4
  %396 = load i32, i32* @VFC_REG_MEMORIES_RST, align 4
  %397 = add nsw i32 %395, %396
  %398 = load i32, i32* @VFC_MEMORIES_RST_REG_CAM_RST, align 4
  %399 = load i32, i32* @VFC_MEMORIES_RST_REG_RAM_RST, align 4
  %400 = or i32 %398, %399
  %401 = call i32 @REG_WR(%struct.bnx2x* %394, i32 %397, i32 %400)
  %402 = call i32 @msleep(i32 20)
  br label %403

403:                                              ; preds = %385, %365
  %404 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %405 = load i32, i32* @BLOCK_TSEM, align 4
  %406 = load i32, i32* @PHASE_COMMON, align 4
  %407 = call i32 @bnx2x_init_block(%struct.bnx2x* %404, i32 %405, i32 %406)
  %408 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %409 = load i32, i32* @BLOCK_USEM, align 4
  %410 = load i32, i32* @PHASE_COMMON, align 4
  %411 = call i32 @bnx2x_init_block(%struct.bnx2x* %408, i32 %409, i32 %410)
  %412 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %413 = load i32, i32* @BLOCK_CSEM, align 4
  %414 = load i32, i32* @PHASE_COMMON, align 4
  %415 = call i32 @bnx2x_init_block(%struct.bnx2x* %412, i32 %413, i32 %414)
  %416 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %417 = load i32, i32* @BLOCK_XSEM, align 4
  %418 = load i32, i32* @PHASE_COMMON, align 4
  %419 = call i32 @bnx2x_init_block(%struct.bnx2x* %416, i32 %417, i32 %418)
  %420 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %421 = load i32, i32* @GRCBASE_MISC, align 4
  %422 = load i32, i32* @MISC_REGISTERS_RESET_REG_1_CLEAR, align 4
  %423 = add nsw i32 %421, %422
  %424 = call i32 @REG_WR(%struct.bnx2x* %420, i32 %423, i32 -2147483648)
  %425 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %426 = load i32, i32* @GRCBASE_MISC, align 4
  %427 = load i32, i32* @MISC_REGISTERS_RESET_REG_1_SET, align 4
  %428 = add nsw i32 %426, %427
  %429 = call i32 @REG_WR(%struct.bnx2x* %425, i32 %428, i32 -2147483648)
  %430 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %431 = load i32, i32* @BLOCK_UPB, align 4
  %432 = load i32, i32* @PHASE_COMMON, align 4
  %433 = call i32 @bnx2x_init_block(%struct.bnx2x* %430, i32 %431, i32 %432)
  %434 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %435 = load i32, i32* @BLOCK_XPB, align 4
  %436 = load i32, i32* @PHASE_COMMON, align 4
  %437 = call i32 @bnx2x_init_block(%struct.bnx2x* %434, i32 %435, i32 %436)
  %438 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %439 = load i32, i32* @BLOCK_PBF, align 4
  %440 = load i32, i32* @PHASE_COMMON, align 4
  %441 = call i32 @bnx2x_init_block(%struct.bnx2x* %438, i32 %439, i32 %440)
  %442 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %443 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %442)
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %476, label %445

445:                                              ; preds = %403
  %446 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %447 = call i64 @IS_MF_AFEX(%struct.bnx2x* %446)
  %448 = icmp ne i64 %447, 0
  br i1 %448, label %449, label %465

449:                                              ; preds = %445
  %450 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %451 = load i32, i32* @PBF_REG_HDRS_AFTER_BASIC, align 4
  %452 = call i32 @REG_WR(%struct.bnx2x* %450, i32 %451, i32 14)
  %453 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %454 = load i32, i32* @PBF_REG_MUST_HAVE_HDRS, align 4
  %455 = call i32 @REG_WR(%struct.bnx2x* %453, i32 %454, i32 10)
  %456 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %457 = load i32, i32* @PBF_REG_HDRS_AFTER_TAG_0, align 4
  %458 = call i32 @REG_WR(%struct.bnx2x* %456, i32 %457, i32 6)
  %459 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %460 = load i32, i32* @PBF_REG_TAG_ETHERTYPE_0, align 4
  %461 = call i32 @REG_WR(%struct.bnx2x* %459, i32 %460, i32 35110)
  %462 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %463 = load i32, i32* @PBF_REG_TAG_LEN_0, align 4
  %464 = call i32 @REG_WR(%struct.bnx2x* %462, i32 %463, i32 4)
  br label %475

465:                                              ; preds = %445
  %466 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %467 = load i32, i32* @PBF_REG_HDRS_AFTER_BASIC, align 4
  %468 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %469 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 4
  %471 = icmp ne i32 %470, 0
  %472 = zext i1 %471 to i64
  %473 = select i1 %471, i32 7, i32 6
  %474 = call i32 @REG_WR(%struct.bnx2x* %466, i32 %467, i32 %473)
  br label %475

475:                                              ; preds = %465, %449
  br label %476

476:                                              ; preds = %475, %403
  %477 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %478 = load i32, i32* @SRC_REG_SOFT_RST, align 4
  %479 = call i32 @REG_WR(%struct.bnx2x* %477, i32 %478, i32 1)
  %480 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %481 = load i32, i32* @BLOCK_SRC, align 4
  %482 = load i32, i32* @PHASE_COMMON, align 4
  %483 = call i32 @bnx2x_init_block(%struct.bnx2x* %480, i32 %481, i32 %482)
  %484 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %485 = call i64 @CNIC_SUPPORT(%struct.bnx2x* %484)
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %487, label %518

487:                                              ; preds = %476
  %488 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %489 = load i32, i32* @SRC_REG_KEYSEARCH_0, align 4
  %490 = call i32 @REG_WR(%struct.bnx2x* %488, i32 %489, i32 1663587954)
  %491 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %492 = load i32, i32* @SRC_REG_KEYSEARCH_1, align 4
  %493 = call i32 @REG_WR(%struct.bnx2x* %491, i32 %492, i32 616100556)
  %494 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %495 = load i32, i32* @SRC_REG_KEYSEARCH_2, align 4
  %496 = call i32 @REG_WR(%struct.bnx2x* %494, i32 %495, i32 574287771)
  %497 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %498 = load i32, i32* @SRC_REG_KEYSEARCH_3, align 4
  %499 = call i32 @REG_WR(%struct.bnx2x* %497, i32 %498, i32 637541946)
  %500 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %501 = load i32, i32* @SRC_REG_KEYSEARCH_4, align 4
  %502 = call i32 @REG_WR(%struct.bnx2x* %500, i32 %501, i32 2062094614)
  %503 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %504 = load i32, i32* @SRC_REG_KEYSEARCH_5, align 4
  %505 = call i32 @REG_WR(%struct.bnx2x* %503, i32 %504, i32 1558520587)
  %506 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %507 = load i32, i32* @SRC_REG_KEYSEARCH_6, align 4
  %508 = call i32 @REG_WR(%struct.bnx2x* %506, i32 %507, i32 697141983)
  %509 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %510 = load i32, i32* @SRC_REG_KEYSEARCH_7, align 4
  %511 = call i32 @REG_WR(%struct.bnx2x* %509, i32 %510, i32 1857093385)
  %512 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %513 = load i32, i32* @SRC_REG_KEYSEARCH_8, align 4
  %514 = call i32 @REG_WR(%struct.bnx2x* %512, i32 %513, i32 405862447)
  %515 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %516 = load i32, i32* @SRC_REG_KEYSEARCH_9, align 4
  %517 = call i32 @REG_WR(%struct.bnx2x* %515, i32 %516, i32 31747047)
  br label %518

518:                                              ; preds = %487, %476
  %519 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %520 = load i32, i32* @SRC_REG_SOFT_RST, align 4
  %521 = call i32 @REG_WR(%struct.bnx2x* %519, i32 %520, i32 0)
  %522 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %523 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %522, i32 0, i32 2
  %524 = load %struct.TYPE_2__*, %struct.TYPE_2__** %523, align 8
  %525 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %524, i32 0, i32 0
  %526 = call i32 @dev_alert(i32* %525, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i64 4)
  %527 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %528 = load i32, i32* @BLOCK_CDU, align 4
  %529 = load i32, i32* @PHASE_COMMON, align 4
  %530 = call i32 @bnx2x_init_block(%struct.bnx2x* %527, i32 %528, i32 %529)
  store i32 67109888, i32* %4, align 4
  %531 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %532 = load i32, i32* @CDU_REG_CDU_GLOBAL_PARAMS, align 4
  %533 = load i32, i32* %4, align 4
  %534 = call i32 @REG_WR(%struct.bnx2x* %531, i32 %532, i32 %533)
  %535 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %536 = load i32, i32* @BLOCK_CFC, align 4
  %537 = load i32, i32* @PHASE_COMMON, align 4
  %538 = call i32 @bnx2x_init_block(%struct.bnx2x* %535, i32 %536, i32 %537)
  %539 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %540 = load i32, i32* @CFC_REG_INIT_REG, align 4
  %541 = call i32 @REG_WR(%struct.bnx2x* %539, i32 %540, i32 2047)
  %542 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %543 = load i32, i32* @CFC_REG_CFC_INT_MASK, align 4
  %544 = call i32 @REG_WR(%struct.bnx2x* %542, i32 %543, i32 0)
  %545 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %546 = load i32, i32* @CFC_REG_DEBUG0, align 4
  %547 = call i32 @REG_WR(%struct.bnx2x* %545, i32 %546, i32 537001984)
  %548 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %549 = load i32, i32* @BLOCK_HC, align 4
  %550 = load i32, i32* @PHASE_COMMON, align 4
  %551 = call i32 @bnx2x_init_block(%struct.bnx2x* %548, i32 %549, i32 %550)
  %552 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %553 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %552)
  %554 = icmp ne i64 %553, 0
  br i1 %554, label %563, label %555

555:                                              ; preds = %518
  %556 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %557 = call i64 @BP_NOMCP(%struct.bnx2x* %556)
  %558 = icmp ne i64 %557, 0
  br i1 %558, label %559, label %563

559:                                              ; preds = %555
  %560 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %561 = load i32, i32* @IGU_REG_RESET_MEMORIES, align 4
  %562 = call i32 @REG_WR(%struct.bnx2x* %560, i32 %561, i32 54)
  br label %563

563:                                              ; preds = %559, %555, %518
  %564 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %565 = load i32, i32* @BLOCK_IGU, align 4
  %566 = load i32, i32* @PHASE_COMMON, align 4
  %567 = call i32 @bnx2x_init_block(%struct.bnx2x* %564, i32 %565, i32 %566)
  %568 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %569 = load i32, i32* @BLOCK_MISC_AEU, align 4
  %570 = load i32, i32* @PHASE_COMMON, align 4
  %571 = call i32 @bnx2x_init_block(%struct.bnx2x* %568, i32 %569, i32 %570)
  %572 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %573 = call i32 @REG_WR(%struct.bnx2x* %572, i32 10260, i32 -1)
  %574 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %575 = call i32 @REG_WR(%struct.bnx2x* %574, i32 14368, i32 -1)
  %576 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %577 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %576)
  %578 = icmp ne i64 %577, 0
  br i1 %578, label %608, label %579

579:                                              ; preds = %563
  %580 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %581 = load i32, i32* @PCICFG_OFFSET, align 4
  %582 = load i32, i32* @PXPCS_TL_CONTROL_5, align 4
  %583 = add nsw i32 %581, %582
  %584 = load i32, i32* @PXPCS_TL_CONTROL_5_ERR_UNSPPORT1, align 4
  %585 = load i32, i32* @PXPCS_TL_CONTROL_5_ERR_UNSPPORT, align 4
  %586 = or i32 %584, %585
  %587 = call i32 @REG_WR(%struct.bnx2x* %580, i32 %583, i32 %586)
  %588 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %589 = load i32, i32* @PCICFG_OFFSET, align 4
  %590 = load i32, i32* @PXPCS_TL_FUNC345_STAT, align 4
  %591 = add nsw i32 %589, %590
  %592 = load i32, i32* @PXPCS_TL_FUNC345_STAT_ERR_UNSPPORT4, align 4
  %593 = load i32, i32* @PXPCS_TL_FUNC345_STAT_ERR_UNSPPORT3, align 4
  %594 = or i32 %592, %593
  %595 = load i32, i32* @PXPCS_TL_FUNC345_STAT_ERR_UNSPPORT2, align 4
  %596 = or i32 %594, %595
  %597 = call i32 @REG_WR(%struct.bnx2x* %588, i32 %591, i32 %596)
  %598 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %599 = load i32, i32* @PCICFG_OFFSET, align 4
  %600 = load i32, i32* @PXPCS_TL_FUNC678_STAT, align 4
  %601 = add nsw i32 %599, %600
  %602 = load i32, i32* @PXPCS_TL_FUNC678_STAT_ERR_UNSPPORT7, align 4
  %603 = load i32, i32* @PXPCS_TL_FUNC678_STAT_ERR_UNSPPORT6, align 4
  %604 = or i32 %602, %603
  %605 = load i32, i32* @PXPCS_TL_FUNC678_STAT_ERR_UNSPPORT5, align 4
  %606 = or i32 %604, %605
  %607 = call i32 @REG_WR(%struct.bnx2x* %598, i32 %601, i32 %606)
  br label %608

608:                                              ; preds = %579, %563
  %609 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %610 = load i32, i32* @BLOCK_NIG, align 4
  %611 = load i32, i32* @PHASE_COMMON, align 4
  %612 = call i32 @bnx2x_init_block(%struct.bnx2x* %609, i32 %610, i32 %611)
  %613 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %614 = call i64 @CHIP_IS_E1(%struct.bnx2x* %613)
  %615 = icmp ne i64 %614, 0
  br i1 %615, label %627, label %616

616:                                              ; preds = %608
  %617 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %618 = call i64 @CHIP_IS_E3(%struct.bnx2x* %617)
  %619 = icmp ne i64 %618, 0
  br i1 %619, label %626, label %620

620:                                              ; preds = %616
  %621 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %622 = load i32, i32* @NIG_REG_LLH_MF_MODE, align 4
  %623 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %624 = call i32 @IS_MF(%struct.bnx2x* %623)
  %625 = call i32 @REG_WR(%struct.bnx2x* %621, i32 %622, i32 %624)
  br label %626

626:                                              ; preds = %620, %616
  br label %627

627:                                              ; preds = %626, %608
  %628 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %629 = call i64 @CHIP_IS_E1H(%struct.bnx2x* %628)
  %630 = icmp ne i64 %629, 0
  br i1 %630, label %631, label %637

631:                                              ; preds = %627
  %632 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %633 = load i32, i32* @NIG_REG_LLH_E1HOV_MODE, align 4
  %634 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %635 = call i32 @IS_MF_SD(%struct.bnx2x* %634)
  %636 = call i32 @REG_WR(%struct.bnx2x* %632, i32 %633, i32 %635)
  br label %637

637:                                              ; preds = %631, %627
  %638 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %639 = call i64 @CHIP_REV_IS_SLOW(%struct.bnx2x* %638)
  %640 = icmp ne i64 %639, 0
  br i1 %640, label %641, label %643

641:                                              ; preds = %637
  %642 = call i32 @msleep(i32 200)
  br label %643

643:                                              ; preds = %641, %637
  %644 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %645 = load i32, i32* @CFC_REG_LL_INIT_DONE, align 4
  %646 = call i32 @reg_poll(%struct.bnx2x* %644, i32 %645, i32 1, i32 100, i32 10)
  store i32 %646, i32* %4, align 4
  %647 = load i32, i32* %4, align 4
  %648 = icmp ne i32 %647, 1
  br i1 %648, label %649, label %653

649:                                              ; preds = %643
  %650 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %651 = load i32, i32* @EBUSY, align 4
  %652 = sub nsw i32 0, %651
  store i32 %652, i32* %2, align 4
  br label %737

653:                                              ; preds = %643
  %654 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %655 = load i32, i32* @CFC_REG_AC_INIT_DONE, align 4
  %656 = call i32 @reg_poll(%struct.bnx2x* %654, i32 %655, i32 1, i32 100, i32 10)
  store i32 %656, i32* %4, align 4
  %657 = load i32, i32* %4, align 4
  %658 = icmp ne i32 %657, 1
  br i1 %658, label %659, label %663

659:                                              ; preds = %653
  %660 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %661 = load i32, i32* @EBUSY, align 4
  %662 = sub nsw i32 0, %661
  store i32 %662, i32* %2, align 4
  br label %737

663:                                              ; preds = %653
  %664 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %665 = load i32, i32* @CFC_REG_CAM_INIT_DONE, align 4
  %666 = call i32 @reg_poll(%struct.bnx2x* %664, i32 %665, i32 1, i32 100, i32 10)
  store i32 %666, i32* %4, align 4
  %667 = load i32, i32* %4, align 4
  %668 = icmp ne i32 %667, 1
  br i1 %668, label %669, label %673

669:                                              ; preds = %663
  %670 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %671 = load i32, i32* @EBUSY, align 4
  %672 = sub nsw i32 0, %671
  store i32 %672, i32* %2, align 4
  br label %737

673:                                              ; preds = %663
  %674 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %675 = load i32, i32* @CFC_REG_DEBUG0, align 4
  %676 = call i32 @REG_WR(%struct.bnx2x* %674, i32 %675, i32 0)
  %677 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %678 = call i64 @CHIP_IS_E1(%struct.bnx2x* %677)
  %679 = icmp ne i64 %678, 0
  br i1 %679, label %680, label %701

680:                                              ; preds = %673
  %681 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %682 = load i32, i32* @NIG_REG_STAT2_BRB_OCTET, align 4
  %683 = call i32 @bnx2x_read_dmae(%struct.bnx2x* %681, i32 %682, i32 2)
  %684 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %685 = load i32*, i32** @wb_data, align 8
  %686 = getelementptr inbounds i32, i32* %685, i64 0
  %687 = load i32, i32* %686, align 4
  %688 = call i32* @bnx2x_sp(%struct.bnx2x* %684, i32 %687)
  %689 = load i32, i32* %688, align 4
  store i32 %689, i32* %4, align 4
  %690 = load i32, i32* %4, align 4
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %692, label %700

692:                                              ; preds = %680
  %693 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %694 = call i64 @bnx2x_int_mem_test(%struct.bnx2x* %693)
  %695 = icmp ne i64 %694, 0
  br i1 %695, label %696, label %700

696:                                              ; preds = %692
  %697 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %698 = load i32, i32* @EBUSY, align 4
  %699 = sub nsw i32 0, %698
  store i32 %699, i32* %2, align 4
  br label %737

700:                                              ; preds = %692, %680
  br label %701

701:                                              ; preds = %700, %673
  %702 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %703 = call i32 @bnx2x_setup_fan_failure_detection(%struct.bnx2x* %702)
  %704 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %705 = load i32, i32* @PXP2_REG_PXP2_INT_STS_CLR_0, align 4
  %706 = call i32 @REG_RD(%struct.bnx2x* %704, i32 %705)
  %707 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %708 = call i32 @bnx2x_enable_blocks_attention(%struct.bnx2x* %707)
  %709 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %710 = call i32 @bnx2x_enable_blocks_parity(%struct.bnx2x* %709)
  %711 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %712 = call i64 @BP_NOMCP(%struct.bnx2x* %711)
  %713 = icmp ne i64 %712, 0
  br i1 %713, label %722, label %714

714:                                              ; preds = %701
  %715 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %716 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %715)
  %717 = icmp ne i64 %716, 0
  br i1 %717, label %718, label %721

718:                                              ; preds = %714
  %719 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %720 = call i32 @bnx2x__common_init_phy(%struct.bnx2x* %719)
  br label %721

721:                                              ; preds = %718, %714
  br label %724

722:                                              ; preds = %701
  %723 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0))
  br label %724

724:                                              ; preds = %722, %721
  %725 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %726 = load i32, i32* @netproc_fw_ver, align 4
  %727 = call i64 @SHMEM2_HAS(%struct.bnx2x* %725, i32 %726)
  %728 = icmp ne i64 %727, 0
  br i1 %728, label %729, label %736

729:                                              ; preds = %724
  %730 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %731 = load i32, i32* @netproc_fw_ver, align 4
  %732 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %733 = load i32, i32* @XSEM_REG_PRAM, align 4
  %734 = call i32 @REG_RD(%struct.bnx2x* %732, i32 %733)
  %735 = call i32 @SHMEM2_WR(%struct.bnx2x* %730, i32 %731, i32 %734)
  br label %736

736:                                              ; preds = %729, %724
  store i32 0, i32* %2, align 4
  br label %737

737:                                              ; preds = %736, %696, %669, %659, %649, %223, %133, %123
  %738 = load i32, i32* %2, align 4
  ret i32 %738
}

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @BP_ABS_FUNC(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_acquire_hw_lock(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_reset_common(%struct.bnx2x*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i64 @CHIP_IS_E3(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_release_hw_lock(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_init_block(%struct.bnx2x*, i32, i32) #1

declare dso_local i64 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i32 @BP_PATH(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_pretend_func(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_pf_disable(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E1(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_init_pxp(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_set_endianity(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_ilt_init_page_size(%struct.bnx2x*, i32) #1

declare dso_local i64 @CHIP_REV_IS_FPGA(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E1H(%struct.bnx2x*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

declare dso_local i32 @memset(%struct.ilt_client_info*, i32, i32) #1

declare dso_local i32 @bnx2x_ilt_client_init_op_ilt(%struct.bnx2x*, %struct.ilt_client_info*, %struct.ilt_client_info*, i32) #1

declare dso_local i64 @CHIP_REV_IS_EMUL(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_iov_init_dmae(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_init_fill(%struct.bnx2x*, i32, i32, i32, i32) #1

declare dso_local i32 @bnx2x_read_dmae(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_qm_init_ptr_table(%struct.bnx2x*, i32, i32) #1

declare dso_local i64 @CNIC_SUPPORT(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_REV_IS_SLOW(%struct.bnx2x*) #1

declare dso_local i32 @CHIP_IS_E3B0(%struct.bnx2x*) #1

declare dso_local i64 @IS_MF_AFEX(%struct.bnx2x*) #1

declare dso_local i32 @dev_alert(i32*, i8*, i64) #1

declare dso_local i64 @BP_NOMCP(%struct.bnx2x*) #1

declare dso_local i32 @IS_MF(%struct.bnx2x*) #1

declare dso_local i32 @IS_MF_SD(%struct.bnx2x*) #1

declare dso_local i32 @reg_poll(%struct.bnx2x*, i32, i32, i32, i32) #1

declare dso_local i32* @bnx2x_sp(%struct.bnx2x*, i32) #1

declare dso_local i64 @bnx2x_int_mem_test(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_setup_fan_failure_detection(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_enable_blocks_attention(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_enable_blocks_parity(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x__common_init_phy(%struct.bnx2x*) #1

declare dso_local i64 @SHMEM2_HAS(%struct.bnx2x*, i32) #1

declare dso_local i32 @SHMEM2_WR(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
