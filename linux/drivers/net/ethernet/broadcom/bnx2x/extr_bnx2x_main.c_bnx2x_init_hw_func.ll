; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_init_hw_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_init_hw_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_8__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.bnx2x_ilt = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@PHASE_PF0 = common dso_local global i32 0, align 4
@NETIF_MSG_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"starting func init  func %d\0A\00", align 1
@INT_BLOCK_HC = common dso_local global i64 0, align 8
@HC_REG_CONFIG_1 = common dso_local global i32 0, align 4
@HC_REG_CONFIG_0 = common dso_local global i32 0, align 4
@HC_CONFIG_0_REG_MSI_ATTN_EN_0 = common dso_local global i32 0, align 4
@BLOCK_PXP = common dso_local global i32 0, align 4
@BLOCK_PXP2 = common dso_local global i32 0, align 4
@ILT_CLIENT_CDU = common dso_local global i64 0, align 8
@BNX2X_FIRST_VF_CID = common dso_local global i32 0, align 4
@ILT_PAGE_CIDS = common dso_local global i32 0, align 4
@INITOP_SET = common dso_local global i32 0, align 4
@PRS_REG_NIC_MODE = common dso_local global i32 0, align 4
@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"NIC MODE disabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"NIC MODE configured\0A\00", align 1
@IGU_PF_CONF_FUNC_EN = common dso_local global i32 0, align 4
@USING_MSIX_FLAG = common dso_local global i32 0, align 4
@IGU_PF_CONF_SINGLE_ISR_EN = common dso_local global i32 0, align 4
@PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER = common dso_local global i32 0, align 4
@IGU_REG_PF_CONFIGURATION = common dso_local global i32 0, align 4
@BLOCK_PGLUE_B = common dso_local global i32 0, align 4
@BLOCK_ATC = common dso_local global i32 0, align 4
@BLOCK_DMAE = common dso_local global i32 0, align 4
@BLOCK_NIG = common dso_local global i32 0, align 4
@BLOCK_SRC = common dso_local global i32 0, align 4
@BLOCK_MISC = common dso_local global i32 0, align 4
@BLOCK_TCM = common dso_local global i32 0, align 4
@BLOCK_UCM = common dso_local global i32 0, align 4
@BLOCK_CCM = common dso_local global i32 0, align 4
@BLOCK_XCM = common dso_local global i32 0, align 4
@BLOCK_TSEM = common dso_local global i32 0, align 4
@BLOCK_USEM = common dso_local global i32 0, align 4
@BLOCK_CSEM = common dso_local global i32 0, align 4
@BLOCK_XSEM = common dso_local global i32 0, align 4
@QM_REG_PF_EN = common dso_local global i32 0, align 4
@TSEM_REG_VFPF_ERR_NUM = common dso_local global i32 0, align 4
@BNX2X_MAX_NUM_OF_VFS = common dso_local global i32 0, align 4
@USEM_REG_VFPF_ERR_NUM = common dso_local global i32 0, align 4
@CSEM_REG_VFPF_ERR_NUM = common dso_local global i32 0, align 4
@XSEM_REG_VFPF_ERR_NUM = common dso_local global i32 0, align 4
@BLOCK_QM = common dso_local global i32 0, align 4
@BLOCK_TM = common dso_local global i32 0, align 4
@BLOCK_DORQ = common dso_local global i32 0, align 4
@DORQ_REG_MODE_ACT = common dso_local global i32 0, align 4
@BLOCK_BRB1 = common dso_local global i32 0, align 4
@BLOCK_PRS = common dso_local global i32 0, align 4
@BLOCK_TSDM = common dso_local global i32 0, align 4
@BLOCK_CSDM = common dso_local global i32 0, align 4
@BLOCK_USDM = common dso_local global i32 0, align 4
@BLOCK_XSDM = common dso_local global i32 0, align 4
@BLOCK_UPB = common dso_local global i32 0, align 4
@BLOCK_XPB = common dso_local global i32 0, align 4
@BLOCK_PBF = common dso_local global i32 0, align 4
@PBF_REG_DISABLE_PF = common dso_local global i32 0, align 4
@BLOCK_CDU = common dso_local global i32 0, align 4
@BLOCK_CFC = common dso_local global i32 0, align 4
@CFC_REG_WEAK_ENABLE_PF = common dso_local global i32 0, align 4
@NIG_REG_LLH0_FUNC_EN = common dso_local global i32 0, align 4
@NIG_REG_LLH0_FUNC_VLAN_ID = common dso_local global i32 0, align 4
@BLOCK_MISC_AEU = common dso_local global i32 0, align 4
@MISC_REG_AEU_GENERAL_ATTN_12 = common dso_local global i32 0, align 4
@HC_REG_LEADING_EDGE_0 = common dso_local global i32 0, align 4
@HC_REG_TRAILING_EDGE_0 = common dso_local global i32 0, align 4
@BLOCK_HC = common dso_local global i32 0, align 4
@IGU_REG_LEADING_EDGE_LATCH = common dso_local global i32 0, align 4
@IGU_REG_TRAILING_EDGE_LATCH = common dso_local global i32 0, align 4
@BLOCK_IGU = common dso_local global i32 0, align 4
@IGU_BC_NDSB_NUM_SEGS = common dso_local global i32 0, align 4
@IGU_NORM_NDSB_NUM_SEGS = common dso_local global i32 0, align 4
@IGU_REG_PROD_CONS_MEMORY = common dso_local global i32 0, align 4
@USTORM_ID = common dso_local global i32 0, align 4
@IGU_INT_NOP = common dso_local global i32 0, align 4
@IGU_BC_DSB_NUM_SEGS = common dso_local global i32 0, align 4
@IGU_NORM_DSB_NUM_SEGS = common dso_local global i32 0, align 4
@IGU_BC_BASE_DSB_PROD = common dso_local global i32 0, align 4
@IGU_NORM_BASE_DSB_PROD = common dso_local global i32 0, align 4
@E1HVN_MAX = common dso_local global i32 0, align 4
@CSTORM_ID = common dso_local global i32 0, align 4
@XSTORM_ID = common dso_local global i32 0, align 4
@TSTORM_ID = common dso_local global i32 0, align 4
@ATTENTION_ID = common dso_local global i32 0, align 4
@IGU_REG_SB_INT_BEFORE_MASK_LSB = common dso_local global i32 0, align 4
@IGU_REG_SB_INT_BEFORE_MASK_MSB = common dso_local global i32 0, align 4
@IGU_REG_SB_MASK_LSB = common dso_local global i32 0, align 4
@IGU_REG_SB_MASK_MSB = common dso_local global i32 0, align 4
@IGU_REG_PBA_STATUS_LSB = common dso_local global i32 0, align 4
@IGU_REG_PBA_STATUS_MSB = common dso_local global i32 0, align 4
@HC_REG_MAIN_MEMORY_SIZE = common dso_local global i32 0, align 4
@HC_REG_MAIN_MEMORY = common dso_local global i32 0, align 4
@HC_REG_HC_PRTY_STS_CLR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"Hmmm... Parity errors in HC block during function init (0x%x)!\0A\00", align 1
@wb_data = common dso_local global i32 0, align 4
@BAR_CSTRORM_INTMEM = common dso_local global i64 0, align 8
@BAR_TSTRORM_INTMEM = common dso_local global i64 0, align 8
@BAR_USTRORM_INTMEM = common dso_local global i64 0, align 8
@BAR_XSTRORM_INTMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_init_hw_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_init_hw_func(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x_ilt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  %22 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %23 = call i32 @BP_PORT(%struct.bnx2x* %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %25 = call i32 @BP_FUNC(%struct.bnx2x* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @PHASE_PF0, align 4
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %6, align 4
  %29 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %30 = call %struct.bnx2x_ilt* @BP_ILT(%struct.bnx2x* %29)
  store %struct.bnx2x_ilt* %30, %struct.bnx2x_ilt** %7, align 8
  %31 = load i32, i32* @NETIF_MSG_HW, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 (i32, i8*, ...) @DP(i32 %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %35 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %1
  %38 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %39 = call i32 @bnx2x_pf_flr_clnup(%struct.bnx2x* %38)
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %44 = call i32 @bnx2x_fw_dump(%struct.bnx2x* %43)
  %45 = load i32, i32* %16, align 4
  store i32 %45, i32* %2, align 4
  br label %741

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %1
  %48 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %49 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %48, i32 0, i32 7
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @INT_BLOCK_HC, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %47
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @HC_REG_CONFIG_1, align 4
  br label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @HC_REG_CONFIG_0, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  store i32 %62, i32* %9, align 4
  %63 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @REG_RD(%struct.bnx2x* %63, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* @HC_CONFIG_0_REG_MSI_ATTN_EN_0, align 4
  %67 = load i32, i32* %10, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %10, align 4
  %69 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @REG_WR(%struct.bnx2x* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %61, %47
  %74 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %75 = load i32, i32* @BLOCK_PXP, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @bnx2x_init_block(%struct.bnx2x* %74, i32 %75, i32 %76)
  %78 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %79 = load i32, i32* @BLOCK_PXP2, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @bnx2x_init_block(%struct.bnx2x* %78, i32 %79, i32 %80)
  %82 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %83 = call %struct.bnx2x_ilt* @BP_ILT(%struct.bnx2x* %82)
  store %struct.bnx2x_ilt* %83, %struct.bnx2x_ilt** %7, align 8
  %84 = load %struct.bnx2x_ilt*, %struct.bnx2x_ilt** %7, align 8
  %85 = getelementptr inbounds %struct.bnx2x_ilt, %struct.bnx2x_ilt* %84, i32 0, i32 1
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load i64, i64* @ILT_CLIENT_CDU, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %8, align 4
  %91 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %92 = call i64 @IS_SRIOV(%struct.bnx2x* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %73
  %95 = load i32, i32* @BNX2X_FIRST_VF_CID, align 4
  %96 = load i32, i32* @ILT_PAGE_CIDS, align 4
  %97 = sdiv i32 %95, %96
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %94, %73
  %101 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @bnx2x_iov_init_ilt(%struct.bnx2x* %101, i32 %102)
  store i32 %103, i32* %8, align 4
  %104 = load %struct.bnx2x_ilt*, %struct.bnx2x_ilt** %7, align 8
  %105 = getelementptr inbounds %struct.bnx2x_ilt, %struct.bnx2x_ilt* %104, i32 0, i32 1
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = load i64, i64* @ILT_CLIENT_CDU, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %8, align 4
  store i32 0, i32* %14, align 4
  br label %111

111:                                              ; preds = %168, %100
  %112 = load i32, i32* %14, align 4
  %113 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %114 = call i32 @L2_ILT_LINES(%struct.bnx2x* %113)
  %115 = icmp slt i32 %112, %114
  br i1 %115, label %116, label %171

116:                                              ; preds = %111
  %117 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %118 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %117, i32 0, i32 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.bnx2x_ilt*, %struct.bnx2x_ilt** %7, align 8
  %126 = getelementptr inbounds %struct.bnx2x_ilt, %struct.bnx2x_ilt* %125, i32 0, i32 0
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 2
  store i32 %124, i32* %133, align 4
  %134 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %135 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %134, i32 0, i32 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.bnx2x_ilt*, %struct.bnx2x_ilt** %7, align 8
  %143 = getelementptr inbounds %struct.bnx2x_ilt, %struct.bnx2x_ilt* %142, i32 0, i32 0
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %14, align 4
  %147 = add nsw i32 %145, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  store i32 %141, i32* %150, align 4
  %151 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %152 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %151, i32 0, i32 8
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = load i32, i32* %14, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.bnx2x_ilt*, %struct.bnx2x_ilt** %7, align 8
  %160 = getelementptr inbounds %struct.bnx2x_ilt, %struct.bnx2x_ilt* %159, i32 0, i32 0
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* %14, align 4
  %164 = add nsw i32 %162, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  store i32 %158, i32* %167, align 4
  br label %168

168:                                              ; preds = %116
  %169 = load i32, i32* %14, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %14, align 4
  br label %111

171:                                              ; preds = %111
  %172 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %173 = load i32, i32* @INITOP_SET, align 4
  %174 = call i32 @bnx2x_ilt_init_op(%struct.bnx2x* %172, i32 %173)
  %175 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %176 = call i32 @CONFIGURE_NIC_MODE(%struct.bnx2x* %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %186, label %178

178:                                              ; preds = %171
  %179 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %180 = call i32 @bnx2x_init_searcher(%struct.bnx2x* %179)
  %181 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %182 = load i32, i32* @PRS_REG_NIC_MODE, align 4
  %183 = call i32 @REG_WR(%struct.bnx2x* %181, i32 %182, i32 0)
  %184 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %185 = call i32 (i32, i8*, ...) @DP(i32 %184, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %192

186:                                              ; preds = %171
  %187 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %188 = load i32, i32* @PRS_REG_NIC_MODE, align 4
  %189 = call i32 @REG_WR(%struct.bnx2x* %187, i32 %188, i32 1)
  %190 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %191 = call i32 (i32, i8*, ...) @DP(i32 %190, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %192

192:                                              ; preds = %186, %178
  %193 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %194 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %217, label %196

196:                                              ; preds = %192
  %197 = load i32, i32* @IGU_PF_CONF_FUNC_EN, align 4
  store i32 %197, i32* %17, align 4
  %198 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %199 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @USING_MSIX_FLAG, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %208, label %204

204:                                              ; preds = %196
  %205 = load i32, i32* @IGU_PF_CONF_SINGLE_ISR_EN, align 4
  %206 = load i32, i32* %17, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %17, align 4
  br label %208

208:                                              ; preds = %204, %196
  %209 = call i32 @msleep(i32 20)
  %210 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %211 = load i32, i32* @PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER, align 4
  %212 = call i32 @REG_WR(%struct.bnx2x* %210, i32 %211, i32 1)
  %213 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %214 = load i32, i32* @IGU_REG_PF_CONFIGURATION, align 4
  %215 = load i32, i32* %17, align 4
  %216 = call i32 @REG_WR(%struct.bnx2x* %213, i32 %214, i32 %215)
  br label %217

217:                                              ; preds = %208, %192
  %218 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %219 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %218, i32 0, i32 1
  store i32 1, i32* %219, align 4
  %220 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %221 = load i32, i32* @BLOCK_PGLUE_B, align 4
  %222 = load i32, i32* %6, align 4
  %223 = call i32 @bnx2x_init_block(%struct.bnx2x* %220, i32 %221, i32 %222)
  %224 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %225 = call i32 @bnx2x_clean_pglue_errors(%struct.bnx2x* %224)
  %226 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %227 = load i32, i32* @BLOCK_ATC, align 4
  %228 = load i32, i32* %6, align 4
  %229 = call i32 @bnx2x_init_block(%struct.bnx2x* %226, i32 %227, i32 %228)
  %230 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %231 = load i32, i32* @BLOCK_DMAE, align 4
  %232 = load i32, i32* %6, align 4
  %233 = call i32 @bnx2x_init_block(%struct.bnx2x* %230, i32 %231, i32 %232)
  %234 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %235 = load i32, i32* @BLOCK_NIG, align 4
  %236 = load i32, i32* %6, align 4
  %237 = call i32 @bnx2x_init_block(%struct.bnx2x* %234, i32 %235, i32 %236)
  %238 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %239 = load i32, i32* @BLOCK_SRC, align 4
  %240 = load i32, i32* %6, align 4
  %241 = call i32 @bnx2x_init_block(%struct.bnx2x* %238, i32 %239, i32 %240)
  %242 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %243 = load i32, i32* @BLOCK_MISC, align 4
  %244 = load i32, i32* %6, align 4
  %245 = call i32 @bnx2x_init_block(%struct.bnx2x* %242, i32 %243, i32 %244)
  %246 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %247 = load i32, i32* @BLOCK_TCM, align 4
  %248 = load i32, i32* %6, align 4
  %249 = call i32 @bnx2x_init_block(%struct.bnx2x* %246, i32 %247, i32 %248)
  %250 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %251 = load i32, i32* @BLOCK_UCM, align 4
  %252 = load i32, i32* %6, align 4
  %253 = call i32 @bnx2x_init_block(%struct.bnx2x* %250, i32 %251, i32 %252)
  %254 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %255 = load i32, i32* @BLOCK_CCM, align 4
  %256 = load i32, i32* %6, align 4
  %257 = call i32 @bnx2x_init_block(%struct.bnx2x* %254, i32 %255, i32 %256)
  %258 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %259 = load i32, i32* @BLOCK_XCM, align 4
  %260 = load i32, i32* %6, align 4
  %261 = call i32 @bnx2x_init_block(%struct.bnx2x* %258, i32 %259, i32 %260)
  %262 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %263 = load i32, i32* @BLOCK_TSEM, align 4
  %264 = load i32, i32* %6, align 4
  %265 = call i32 @bnx2x_init_block(%struct.bnx2x* %262, i32 %263, i32 %264)
  %266 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %267 = load i32, i32* @BLOCK_USEM, align 4
  %268 = load i32, i32* %6, align 4
  %269 = call i32 @bnx2x_init_block(%struct.bnx2x* %266, i32 %267, i32 %268)
  %270 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %271 = load i32, i32* @BLOCK_CSEM, align 4
  %272 = load i32, i32* %6, align 4
  %273 = call i32 @bnx2x_init_block(%struct.bnx2x* %270, i32 %271, i32 %272)
  %274 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %275 = load i32, i32* @BLOCK_XSEM, align 4
  %276 = load i32, i32* %6, align 4
  %277 = call i32 @bnx2x_init_block(%struct.bnx2x* %274, i32 %275, i32 %276)
  %278 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %279 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %285, label %281

281:                                              ; preds = %217
  %282 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %283 = load i32, i32* @QM_REG_PF_EN, align 4
  %284 = call i32 @REG_WR(%struct.bnx2x* %282, i32 %283, i32 1)
  br label %285

285:                                              ; preds = %281, %217
  %286 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %287 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %314, label %289

289:                                              ; preds = %285
  %290 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %291 = load i32, i32* @TSEM_REG_VFPF_ERR_NUM, align 4
  %292 = load i32, i32* @BNX2X_MAX_NUM_OF_VFS, align 4
  %293 = load i32, i32* %5, align 4
  %294 = add nsw i32 %292, %293
  %295 = call i32 @REG_WR(%struct.bnx2x* %290, i32 %291, i32 %294)
  %296 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %297 = load i32, i32* @USEM_REG_VFPF_ERR_NUM, align 4
  %298 = load i32, i32* @BNX2X_MAX_NUM_OF_VFS, align 4
  %299 = load i32, i32* %5, align 4
  %300 = add nsw i32 %298, %299
  %301 = call i32 @REG_WR(%struct.bnx2x* %296, i32 %297, i32 %300)
  %302 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %303 = load i32, i32* @CSEM_REG_VFPF_ERR_NUM, align 4
  %304 = load i32, i32* @BNX2X_MAX_NUM_OF_VFS, align 4
  %305 = load i32, i32* %5, align 4
  %306 = add nsw i32 %304, %305
  %307 = call i32 @REG_WR(%struct.bnx2x* %302, i32 %303, i32 %306)
  %308 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %309 = load i32, i32* @XSEM_REG_VFPF_ERR_NUM, align 4
  %310 = load i32, i32* @BNX2X_MAX_NUM_OF_VFS, align 4
  %311 = load i32, i32* %5, align 4
  %312 = add nsw i32 %310, %311
  %313 = call i32 @REG_WR(%struct.bnx2x* %308, i32 %309, i32 %312)
  br label %314

314:                                              ; preds = %289, %285
  %315 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %316 = load i32, i32* @BLOCK_QM, align 4
  %317 = load i32, i32* %6, align 4
  %318 = call i32 @bnx2x_init_block(%struct.bnx2x* %315, i32 %316, i32 %317)
  %319 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %320 = load i32, i32* @BLOCK_TM, align 4
  %321 = load i32, i32* %6, align 4
  %322 = call i32 @bnx2x_init_block(%struct.bnx2x* %319, i32 %320, i32 %321)
  %323 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %324 = load i32, i32* @BLOCK_DORQ, align 4
  %325 = load i32, i32* %6, align 4
  %326 = call i32 @bnx2x_init_block(%struct.bnx2x* %323, i32 %324, i32 %325)
  %327 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %328 = load i32, i32* @DORQ_REG_MODE_ACT, align 4
  %329 = call i32 @REG_WR(%struct.bnx2x* %327, i32 %328, i32 1)
  %330 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %331 = call i32 @bnx2x_iov_init_dq(%struct.bnx2x* %330)
  %332 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %333 = load i32, i32* @BLOCK_BRB1, align 4
  %334 = load i32, i32* %6, align 4
  %335 = call i32 @bnx2x_init_block(%struct.bnx2x* %332, i32 %333, i32 %334)
  %336 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %337 = load i32, i32* @BLOCK_PRS, align 4
  %338 = load i32, i32* %6, align 4
  %339 = call i32 @bnx2x_init_block(%struct.bnx2x* %336, i32 %337, i32 %338)
  %340 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %341 = load i32, i32* @BLOCK_TSDM, align 4
  %342 = load i32, i32* %6, align 4
  %343 = call i32 @bnx2x_init_block(%struct.bnx2x* %340, i32 %341, i32 %342)
  %344 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %345 = load i32, i32* @BLOCK_CSDM, align 4
  %346 = load i32, i32* %6, align 4
  %347 = call i32 @bnx2x_init_block(%struct.bnx2x* %344, i32 %345, i32 %346)
  %348 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %349 = load i32, i32* @BLOCK_USDM, align 4
  %350 = load i32, i32* %6, align 4
  %351 = call i32 @bnx2x_init_block(%struct.bnx2x* %348, i32 %349, i32 %350)
  %352 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %353 = load i32, i32* @BLOCK_XSDM, align 4
  %354 = load i32, i32* %6, align 4
  %355 = call i32 @bnx2x_init_block(%struct.bnx2x* %352, i32 %353, i32 %354)
  %356 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %357 = load i32, i32* @BLOCK_UPB, align 4
  %358 = load i32, i32* %6, align 4
  %359 = call i32 @bnx2x_init_block(%struct.bnx2x* %356, i32 %357, i32 %358)
  %360 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %361 = load i32, i32* @BLOCK_XPB, align 4
  %362 = load i32, i32* %6, align 4
  %363 = call i32 @bnx2x_init_block(%struct.bnx2x* %360, i32 %361, i32 %362)
  %364 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %365 = load i32, i32* @BLOCK_PBF, align 4
  %366 = load i32, i32* %6, align 4
  %367 = call i32 @bnx2x_init_block(%struct.bnx2x* %364, i32 %365, i32 %366)
  %368 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %369 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %368)
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %375, label %371

371:                                              ; preds = %314
  %372 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %373 = load i32, i32* @PBF_REG_DISABLE_PF, align 4
  %374 = call i32 @REG_WR(%struct.bnx2x* %372, i32 %373, i32 0)
  br label %375

375:                                              ; preds = %371, %314
  %376 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %377 = load i32, i32* @BLOCK_CDU, align 4
  %378 = load i32, i32* %6, align 4
  %379 = call i32 @bnx2x_init_block(%struct.bnx2x* %376, i32 %377, i32 %378)
  %380 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %381 = load i32, i32* @BLOCK_CFC, align 4
  %382 = load i32, i32* %6, align 4
  %383 = call i32 @bnx2x_init_block(%struct.bnx2x* %380, i32 %381, i32 %382)
  %384 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %385 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %384)
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %391, label %387

387:                                              ; preds = %375
  %388 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %389 = load i32, i32* @CFC_REG_WEAK_ENABLE_PF, align 4
  %390 = call i32 @REG_WR(%struct.bnx2x* %388, i32 %389, i32 1)
  br label %391

391:                                              ; preds = %387, %375
  %392 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %393 = call i64 @IS_MF(%struct.bnx2x* %392)
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %420

395:                                              ; preds = %391
  %396 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %397 = call i64 @IS_MF_UFP(%struct.bnx2x* %396)
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %403

399:                                              ; preds = %395
  %400 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %401 = call i64 @BNX2X_IS_MF_SD_PROTOCOL_FCOE(%struct.bnx2x* %400)
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %419, label %403

403:                                              ; preds = %399, %395
  %404 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %405 = load i32, i32* @NIG_REG_LLH0_FUNC_EN, align 4
  %406 = load i32, i32* %4, align 4
  %407 = mul nsw i32 %406, 8
  %408 = add nsw i32 %405, %407
  %409 = call i32 @REG_WR(%struct.bnx2x* %404, i32 %408, i32 1)
  %410 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %411 = load i32, i32* @NIG_REG_LLH0_FUNC_VLAN_ID, align 4
  %412 = load i32, i32* %4, align 4
  %413 = mul nsw i32 %412, 8
  %414 = add nsw i32 %411, %413
  %415 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %416 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %415, i32 0, i32 2
  %417 = load i32, i32* %416, align 8
  %418 = call i32 @REG_WR(%struct.bnx2x* %410, i32 %414, i32 %417)
  br label %419

419:                                              ; preds = %403, %399
  br label %420

420:                                              ; preds = %419, %391
  %421 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %422 = load i32, i32* @BLOCK_MISC_AEU, align 4
  %423 = load i32, i32* %6, align 4
  %424 = call i32 @bnx2x_init_block(%struct.bnx2x* %421, i32 %422, i32 %423)
  %425 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %426 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %425, i32 0, i32 7
  %427 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %426, i32 0, i32 0
  %428 = load i64, i64* %427, align 8
  %429 = load i64, i64* @INT_BLOCK_HC, align 8
  %430 = icmp eq i64 %428, %429
  br i1 %430, label %431, label %459

431:                                              ; preds = %420
  %432 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %433 = call i64 @CHIP_IS_E1H(%struct.bnx2x* %432)
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %435, label %454

435:                                              ; preds = %431
  %436 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %437 = load i32, i32* @MISC_REG_AEU_GENERAL_ATTN_12, align 4
  %438 = load i32, i32* %5, align 4
  %439 = mul nsw i32 %438, 4
  %440 = add nsw i32 %437, %439
  %441 = call i32 @REG_WR(%struct.bnx2x* %436, i32 %440, i32 0)
  %442 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %443 = load i32, i32* @HC_REG_LEADING_EDGE_0, align 4
  %444 = load i32, i32* %4, align 4
  %445 = mul nsw i32 %444, 8
  %446 = add nsw i32 %443, %445
  %447 = call i32 @REG_WR(%struct.bnx2x* %442, i32 %446, i32 0)
  %448 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %449 = load i32, i32* @HC_REG_TRAILING_EDGE_0, align 4
  %450 = load i32, i32* %4, align 4
  %451 = mul nsw i32 %450, 8
  %452 = add nsw i32 %449, %451
  %453 = call i32 @REG_WR(%struct.bnx2x* %448, i32 %452, i32 0)
  br label %454

454:                                              ; preds = %435, %431
  %455 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %456 = load i32, i32* @BLOCK_HC, align 4
  %457 = load i32, i32* %6, align 4
  %458 = call i32 @bnx2x_init_block(%struct.bnx2x* %455, i32 %456, i32 %457)
  br label %678

459:                                              ; preds = %420
  %460 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %461 = load i32, i32* @MISC_REG_AEU_GENERAL_ATTN_12, align 4
  %462 = load i32, i32* %5, align 4
  %463 = mul nsw i32 %462, 4
  %464 = add nsw i32 %461, %463
  %465 = call i32 @REG_WR(%struct.bnx2x* %460, i32 %464, i32 0)
  %466 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %467 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %466)
  %468 = icmp ne i64 %467, 0
  br i1 %468, label %476, label %469

469:                                              ; preds = %459
  %470 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %471 = load i32, i32* @IGU_REG_LEADING_EDGE_LATCH, align 4
  %472 = call i32 @REG_WR(%struct.bnx2x* %470, i32 %471, i32 0)
  %473 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %474 = load i32, i32* @IGU_REG_TRAILING_EDGE_LATCH, align 4
  %475 = call i32 @REG_WR(%struct.bnx2x* %473, i32 %474, i32 0)
  br label %476

476:                                              ; preds = %469, %459
  %477 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %478 = load i32, i32* @BLOCK_IGU, align 4
  %479 = load i32, i32* %6, align 4
  %480 = call i32 @bnx2x_init_block(%struct.bnx2x* %477, i32 %478, i32 %479)
  %481 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %482 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %481)
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %677, label %484

484:                                              ; preds = %476
  store i32 0, i32* %21, align 4
  %485 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %486 = call i64 @CHIP_INT_MODE_IS_BC(%struct.bnx2x* %485)
  %487 = icmp ne i64 %486, 0
  br i1 %487, label %488, label %490

488:                                              ; preds = %484
  %489 = load i32, i32* @IGU_BC_NDSB_NUM_SEGS, align 4
  br label %492

490:                                              ; preds = %484
  %491 = load i32, i32* @IGU_NORM_NDSB_NUM_SEGS, align 4
  br label %492

492:                                              ; preds = %490, %488
  %493 = phi i32 [ %489, %488 ], [ %491, %490 ]
  store i32 %493, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %494

494:                                              ; preds = %542, %492
  %495 = load i32, i32* %19, align 4
  %496 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %497 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %496, i32 0, i32 3
  %498 = load i32, i32* %497, align 4
  %499 = icmp slt i32 %495, %498
  br i1 %499, label %500, label %545

500:                                              ; preds = %494
  %501 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %502 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %501, i32 0, i32 4
  %503 = load i32, i32* %502, align 8
  %504 = load i32, i32* %19, align 4
  %505 = add nsw i32 %503, %504
  %506 = load i32, i32* %18, align 4
  %507 = mul nsw i32 %505, %506
  store i32 %507, i32* %20, align 4
  store i32 0, i32* %14, align 4
  br label %508

508:                                              ; preds = %522, %500
  %509 = load i32, i32* %14, align 4
  %510 = load i32, i32* %18, align 4
  %511 = icmp slt i32 %509, %510
  br i1 %511, label %512, label %525

512:                                              ; preds = %508
  %513 = load i32, i32* @IGU_REG_PROD_CONS_MEMORY, align 4
  %514 = load i32, i32* %20, align 4
  %515 = load i32, i32* %14, align 4
  %516 = add nsw i32 %514, %515
  %517 = mul nsw i32 %516, 4
  %518 = add nsw i32 %513, %517
  store i32 %518, i32* %9, align 4
  %519 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %520 = load i32, i32* %9, align 4
  %521 = call i32 @REG_WR(%struct.bnx2x* %519, i32 %520, i32 0)
  br label %522

522:                                              ; preds = %512
  %523 = load i32, i32* %14, align 4
  %524 = add nsw i32 %523, 1
  store i32 %524, i32* %14, align 4
  br label %508

525:                                              ; preds = %508
  %526 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %527 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %528 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %527, i32 0, i32 4
  %529 = load i32, i32* %528, align 8
  %530 = load i32, i32* %19, align 4
  %531 = add nsw i32 %529, %530
  %532 = load i32, i32* @USTORM_ID, align 4
  %533 = load i32, i32* @IGU_INT_NOP, align 4
  %534 = call i32 @bnx2x_ack_sb(%struct.bnx2x* %526, i32 %531, i32 %532, i32 0, i32 %533, i32 1)
  %535 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %536 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %537 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %536, i32 0, i32 4
  %538 = load i32, i32* %537, align 8
  %539 = load i32, i32* %19, align 4
  %540 = add nsw i32 %538, %539
  %541 = call i32 @bnx2x_igu_clear_sb(%struct.bnx2x* %535, i32 %540)
  br label %542

542:                                              ; preds = %525
  %543 = load i32, i32* %19, align 4
  %544 = add nsw i32 %543, 1
  store i32 %544, i32* %19, align 4
  br label %494

545:                                              ; preds = %494
  %546 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %547 = call i64 @CHIP_INT_MODE_IS_BC(%struct.bnx2x* %546)
  %548 = icmp ne i64 %547, 0
  br i1 %548, label %549, label %551

549:                                              ; preds = %545
  %550 = load i32, i32* @IGU_BC_DSB_NUM_SEGS, align 4
  br label %553

551:                                              ; preds = %545
  %552 = load i32, i32* @IGU_NORM_DSB_NUM_SEGS, align 4
  br label %553

553:                                              ; preds = %551, %549
  %554 = phi i32 [ %550, %549 ], [ %552, %551 ]
  store i32 %554, i32* %18, align 4
  %555 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %556 = call i64 @CHIP_MODE_IS_4_PORT(%struct.bnx2x* %555)
  %557 = icmp ne i64 %556, 0
  br i1 %557, label %558, label %561

558:                                              ; preds = %553
  %559 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %560 = call i32 @BP_FUNC(%struct.bnx2x* %559)
  store i32 %560, i32* %21, align 4
  br label %564

561:                                              ; preds = %553
  %562 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %563 = call i32 @BP_VN(%struct.bnx2x* %562)
  store i32 %563, i32* %21, align 4
  br label %564

564:                                              ; preds = %561, %558
  %565 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %566 = call i64 @CHIP_INT_MODE_IS_BC(%struct.bnx2x* %565)
  %567 = icmp ne i64 %566, 0
  br i1 %567, label %568, label %572

568:                                              ; preds = %564
  %569 = load i32, i32* @IGU_BC_BASE_DSB_PROD, align 4
  %570 = load i32, i32* %21, align 4
  %571 = add nsw i32 %569, %570
  br label %576

572:                                              ; preds = %564
  %573 = load i32, i32* @IGU_NORM_BASE_DSB_PROD, align 4
  %574 = load i32, i32* %21, align 4
  %575 = add nsw i32 %573, %574
  br label %576

576:                                              ; preds = %572, %568
  %577 = phi i32 [ %571, %568 ], [ %575, %572 ]
  store i32 %577, i32* %20, align 4
  store i32 0, i32* %14, align 4
  br label %578

578:                                              ; preds = %594, %576
  %579 = load i32, i32* %14, align 4
  %580 = load i32, i32* %18, align 4
  %581 = load i32, i32* @E1HVN_MAX, align 4
  %582 = mul nsw i32 %580, %581
  %583 = icmp slt i32 %579, %582
  br i1 %583, label %584, label %598

584:                                              ; preds = %578
  %585 = load i32, i32* @IGU_REG_PROD_CONS_MEMORY, align 4
  %586 = load i32, i32* %20, align 4
  %587 = load i32, i32* %14, align 4
  %588 = add nsw i32 %586, %587
  %589 = mul nsw i32 %588, 4
  %590 = add nsw i32 %585, %589
  store i32 %590, i32* %9, align 4
  %591 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %592 = load i32, i32* %9, align 4
  %593 = call i32 @REG_WR(%struct.bnx2x* %591, i32 %592, i32 0)
  br label %594

594:                                              ; preds = %584
  %595 = load i32, i32* @E1HVN_MAX, align 4
  %596 = load i32, i32* %14, align 4
  %597 = add nsw i32 %596, %595
  store i32 %597, i32* %14, align 4
  br label %578

598:                                              ; preds = %578
  %599 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %600 = call i64 @CHIP_INT_MODE_IS_BC(%struct.bnx2x* %599)
  %601 = icmp ne i64 %600, 0
  br i1 %601, label %602, label %638

602:                                              ; preds = %598
  %603 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %604 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %605 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %604, i32 0, i32 5
  %606 = load i32, i32* %605, align 4
  %607 = load i32, i32* @USTORM_ID, align 4
  %608 = load i32, i32* @IGU_INT_NOP, align 4
  %609 = call i32 @bnx2x_ack_sb(%struct.bnx2x* %603, i32 %606, i32 %607, i32 0, i32 %608, i32 1)
  %610 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %611 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %612 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %611, i32 0, i32 5
  %613 = load i32, i32* %612, align 4
  %614 = load i32, i32* @CSTORM_ID, align 4
  %615 = load i32, i32* @IGU_INT_NOP, align 4
  %616 = call i32 @bnx2x_ack_sb(%struct.bnx2x* %610, i32 %613, i32 %614, i32 0, i32 %615, i32 1)
  %617 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %618 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %619 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %618, i32 0, i32 5
  %620 = load i32, i32* %619, align 4
  %621 = load i32, i32* @XSTORM_ID, align 4
  %622 = load i32, i32* @IGU_INT_NOP, align 4
  %623 = call i32 @bnx2x_ack_sb(%struct.bnx2x* %617, i32 %620, i32 %621, i32 0, i32 %622, i32 1)
  %624 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %625 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %626 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %625, i32 0, i32 5
  %627 = load i32, i32* %626, align 4
  %628 = load i32, i32* @TSTORM_ID, align 4
  %629 = load i32, i32* @IGU_INT_NOP, align 4
  %630 = call i32 @bnx2x_ack_sb(%struct.bnx2x* %624, i32 %627, i32 %628, i32 0, i32 %629, i32 1)
  %631 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %632 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %633 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %632, i32 0, i32 5
  %634 = load i32, i32* %633, align 4
  %635 = load i32, i32* @ATTENTION_ID, align 4
  %636 = load i32, i32* @IGU_INT_NOP, align 4
  %637 = call i32 @bnx2x_ack_sb(%struct.bnx2x* %631, i32 %634, i32 %635, i32 0, i32 %636, i32 1)
  br label %653

638:                                              ; preds = %598
  %639 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %640 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %641 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %640, i32 0, i32 5
  %642 = load i32, i32* %641, align 4
  %643 = load i32, i32* @USTORM_ID, align 4
  %644 = load i32, i32* @IGU_INT_NOP, align 4
  %645 = call i32 @bnx2x_ack_sb(%struct.bnx2x* %639, i32 %642, i32 %643, i32 0, i32 %644, i32 1)
  %646 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %647 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %648 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %647, i32 0, i32 5
  %649 = load i32, i32* %648, align 4
  %650 = load i32, i32* @ATTENTION_ID, align 4
  %651 = load i32, i32* @IGU_INT_NOP, align 4
  %652 = call i32 @bnx2x_ack_sb(%struct.bnx2x* %646, i32 %649, i32 %650, i32 0, i32 %651, i32 1)
  br label %653

653:                                              ; preds = %638, %602
  %654 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %655 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %656 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %655, i32 0, i32 5
  %657 = load i32, i32* %656, align 4
  %658 = call i32 @bnx2x_igu_clear_sb(%struct.bnx2x* %654, i32 %657)
  %659 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %660 = load i32, i32* @IGU_REG_SB_INT_BEFORE_MASK_LSB, align 4
  %661 = call i32 @REG_WR(%struct.bnx2x* %659, i32 %660, i32 0)
  %662 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %663 = load i32, i32* @IGU_REG_SB_INT_BEFORE_MASK_MSB, align 4
  %664 = call i32 @REG_WR(%struct.bnx2x* %662, i32 %663, i32 0)
  %665 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %666 = load i32, i32* @IGU_REG_SB_MASK_LSB, align 4
  %667 = call i32 @REG_WR(%struct.bnx2x* %665, i32 %666, i32 0)
  %668 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %669 = load i32, i32* @IGU_REG_SB_MASK_MSB, align 4
  %670 = call i32 @REG_WR(%struct.bnx2x* %668, i32 %669, i32 0)
  %671 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %672 = load i32, i32* @IGU_REG_PBA_STATUS_LSB, align 4
  %673 = call i32 @REG_WR(%struct.bnx2x* %671, i32 %672, i32 0)
  %674 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %675 = load i32, i32* @IGU_REG_PBA_STATUS_MSB, align 4
  %676 = call i32 @REG_WR(%struct.bnx2x* %674, i32 %675, i32 0)
  br label %677

677:                                              ; preds = %653, %476
  br label %678

678:                                              ; preds = %677, %454
  %679 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %680 = call i32 @REG_WR(%struct.bnx2x* %679, i32 8468, i32 -1)
  %681 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %682 = call i32 @REG_WR(%struct.bnx2x* %681, i32 8480, i32 -1)
  %683 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %684 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %683)
  %685 = icmp ne i64 %684, 0
  br i1 %685, label %686, label %737

686:                                              ; preds = %678
  %687 = load i32, i32* @HC_REG_MAIN_MEMORY_SIZE, align 4
  %688 = sdiv i32 %687, 2
  store i32 %688, i32* %12, align 4
  %689 = load i32, i32* @HC_REG_MAIN_MEMORY, align 4
  %690 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %691 = call i32 @BP_PORT(%struct.bnx2x* %690)
  %692 = load i32, i32* %12, align 4
  %693 = mul nsw i32 %692, 4
  %694 = mul nsw i32 %691, %693
  %695 = add nsw i32 %689, %694
  store i32 %695, i32* %11, align 4
  %696 = load i32, i32* @HC_REG_HC_PRTY_STS_CLR, align 4
  store i32 %696, i32* %13, align 4
  store i32 8, i32* %15, align 4
  %697 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %698 = load i32, i32* %13, align 4
  %699 = call i32 @REG_RD(%struct.bnx2x* %697, i32 %698)
  store i32 %699, i32* %10, align 4
  %700 = load i32, i32* %10, align 4
  %701 = icmp ne i32 %700, 0
  br i1 %701, label %702, label %706

702:                                              ; preds = %686
  %703 = load i32, i32* @NETIF_MSG_HW, align 4
  %704 = load i32, i32* %10, align 4
  %705 = call i32 (i32, i8*, ...) @DP(i32 %703, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %704)
  br label %706

706:                                              ; preds = %702, %686
  %707 = load i32, i32* %11, align 4
  store i32 %707, i32* %14, align 4
  br label %708

708:                                              ; preds = %729, %706
  %709 = load i32, i32* %14, align 4
  %710 = load i32, i32* %11, align 4
  %711 = load i32, i32* %12, align 4
  %712 = mul nsw i32 %711, 4
  %713 = add nsw i32 %710, %712
  %714 = icmp slt i32 %709, %713
  br i1 %714, label %715, label %733

715:                                              ; preds = %708
  %716 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %717 = load i32, i32* %14, align 4
  %718 = load i32, i32* %15, align 4
  %719 = sdiv i32 %718, 4
  %720 = call i32 @bnx2x_read_dmae(%struct.bnx2x* %716, i32 %717, i32 %719)
  %721 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %722 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %723 = load i32, i32* @wb_data, align 4
  %724 = call i32 @bnx2x_sp_mapping(%struct.bnx2x* %722, i32 %723)
  %725 = load i32, i32* %14, align 4
  %726 = load i32, i32* %15, align 4
  %727 = sdiv i32 %726, 4
  %728 = call i32 @bnx2x_write_dmae(%struct.bnx2x* %721, i32 %724, i32 %725, i32 %727)
  br label %729

729:                                              ; preds = %715
  %730 = load i32, i32* %15, align 4
  %731 = load i32, i32* %14, align 4
  %732 = add nsw i32 %731, %730
  store i32 %732, i32* %14, align 4
  br label %708

733:                                              ; preds = %708
  %734 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %735 = load i32, i32* %13, align 4
  %736 = call i32 @REG_RD(%struct.bnx2x* %734, i32 %735)
  br label %737

737:                                              ; preds = %733, %678
  %738 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %739 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %738, i32 0, i32 6
  %740 = call i32 @bnx2x_phy_probe(i32* %739)
  store i32 0, i32* %2, align 4
  br label %741

741:                                              ; preds = %737, %42
  %742 = load i32, i32* %2, align 4
  ret i32 %742
}

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @BP_FUNC(%struct.bnx2x*) #1

declare dso_local %struct.bnx2x_ilt* @BP_ILT(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i64 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_pf_flr_clnup(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_fw_dump(%struct.bnx2x*) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_init_block(%struct.bnx2x*, i32, i32) #1

declare dso_local i64 @IS_SRIOV(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_iov_init_ilt(%struct.bnx2x*, i32) #1

declare dso_local i32 @L2_ILT_LINES(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_ilt_init_op(%struct.bnx2x*, i32) #1

declare dso_local i32 @CONFIGURE_NIC_MODE(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_init_searcher(%struct.bnx2x*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @bnx2x_clean_pglue_errors(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_iov_init_dq(%struct.bnx2x*) #1

declare dso_local i64 @IS_MF(%struct.bnx2x*) #1

declare dso_local i64 @IS_MF_UFP(%struct.bnx2x*) #1

declare dso_local i64 @BNX2X_IS_MF_SD_PROTOCOL_FCOE(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E1H(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_INT_MODE_IS_BC(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_ack_sb(%struct.bnx2x*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bnx2x_igu_clear_sb(%struct.bnx2x*, i32) #1

declare dso_local i64 @CHIP_MODE_IS_4_PORT(%struct.bnx2x*) #1

declare dso_local i32 @BP_VN(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_read_dmae(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_write_dmae(%struct.bnx2x*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_sp_mapping(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_phy_probe(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
