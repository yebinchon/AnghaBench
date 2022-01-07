; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_init_hw_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_init_hw_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@PHASE_PORT1 = common dso_local global i32 0, align 4
@PHASE_PORT0 = common dso_local global i32 0, align 4
@NETIF_MSG_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"starting port init  port %d\0A\00", align 1
@NIG_REG_MASK_INTERRUPT_PORT0 = common dso_local global i32 0, align 4
@BLOCK_MISC = common dso_local global i32 0, align 4
@BLOCK_PXP = common dso_local global i32 0, align 4
@BLOCK_PXP2 = common dso_local global i32 0, align 4
@PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER = common dso_local global i32 0, align 4
@BLOCK_ATC = common dso_local global i32 0, align 4
@BLOCK_DMAE = common dso_local global i32 0, align 4
@BLOCK_PGLUE_B = common dso_local global i32 0, align 4
@BLOCK_QM = common dso_local global i32 0, align 4
@BLOCK_TCM = common dso_local global i32 0, align 4
@BLOCK_UCM = common dso_local global i32 0, align 4
@BLOCK_CCM = common dso_local global i32 0, align 4
@BLOCK_XCM = common dso_local global i32 0, align 4
@INITOP_SET = common dso_local global i32 0, align 4
@BLOCK_TM = common dso_local global i32 0, align 4
@TM_REG_LIN0_SCAN_TIME = common dso_local global i32 0, align 4
@TM_REG_LIN0_MAX_ACTIVE_CID = common dso_local global i32 0, align 4
@BLOCK_DORQ = common dso_local global i32 0, align 4
@BLOCK_BRB1 = common dso_local global i32 0, align 4
@ONE_PORT_FLAG = common dso_local global i32 0, align 4
@BRB1_REG_PAUSE_LOW_THRESHOLD_0 = common dso_local global i32 0, align 4
@BRB1_REG_PAUSE_HIGH_THRESHOLD_0 = common dso_local global i32 0, align 4
@BRB1_REG_MAC_GUARANTIED_1 = common dso_local global i32 0, align 4
@BRB1_REG_MAC_GUARANTIED_0 = common dso_local global i32 0, align 4
@BLOCK_PRS = common dso_local global i32 0, align 4
@PRS_REG_HDRS_AFTER_BASIC_PORT_1 = common dso_local global i32 0, align 4
@PRS_REG_HDRS_AFTER_BASIC_PORT_0 = common dso_local global i32 0, align 4
@PRS_REG_HDRS_AFTER_TAG_0_PORT_1 = common dso_local global i32 0, align 4
@PRS_REG_HDRS_AFTER_TAG_0_PORT_0 = common dso_local global i32 0, align 4
@PRS_REG_MUST_HAVE_HDRS_PORT_1 = common dso_local global i32 0, align 4
@PRS_REG_MUST_HAVE_HDRS_PORT_0 = common dso_local global i32 0, align 4
@BLOCK_TSDM = common dso_local global i32 0, align 4
@BLOCK_CSDM = common dso_local global i32 0, align 4
@BLOCK_USDM = common dso_local global i32 0, align 4
@BLOCK_XSDM = common dso_local global i32 0, align 4
@BLOCK_TSEM = common dso_local global i32 0, align 4
@BLOCK_USEM = common dso_local global i32 0, align 4
@BLOCK_CSEM = common dso_local global i32 0, align 4
@BLOCK_XSEM = common dso_local global i32 0, align 4
@BLOCK_UPB = common dso_local global i32 0, align 4
@BLOCK_XPB = common dso_local global i32 0, align 4
@BLOCK_PBF = common dso_local global i32 0, align 4
@PBF_REG_P0_PAUSE_ENABLE = common dso_local global i32 0, align 4
@PBF_REG_P0_ARB_THRSH = common dso_local global i32 0, align 4
@PBF_REG_P0_INIT_CRD = common dso_local global i32 0, align 4
@PBF_REG_INIT_P0 = common dso_local global i32 0, align 4
@BLOCK_SRC = common dso_local global i32 0, align 4
@BLOCK_CDU = common dso_local global i32 0, align 4
@BLOCK_CFC = common dso_local global i32 0, align 4
@HC_REG_LEADING_EDGE_0 = common dso_local global i32 0, align 4
@HC_REG_TRAILING_EDGE_0 = common dso_local global i32 0, align 4
@BLOCK_HC = common dso_local global i32 0, align 4
@BLOCK_IGU = common dso_local global i32 0, align 4
@BLOCK_MISC_AEU = common dso_local global i32 0, align 4
@MISC_REG_AEU_MASK_ATTN_FUNC_0 = common dso_local global i32 0, align 4
@MISC_REG_AEU_ENABLE4_NIG_1 = common dso_local global i32 0, align 4
@MISC_REG_AEU_ENABLE4_NIG_0 = common dso_local global i32 0, align 4
@AEU_INPUTS_ATTN_BITS_MCP_LATCHED_SCPAD_PARITY = common dso_local global i32 0, align 4
@MISC_REG_AEU_ENABLE4_PXP_1 = common dso_local global i32 0, align 4
@MISC_REG_AEU_ENABLE4_PXP_0 = common dso_local global i32 0, align 4
@BLOCK_NIG = common dso_local global i32 0, align 4
@NIG_REG_P1_HDRS_AFTER_BASIC = common dso_local global i32 0, align 4
@NIG_REG_P0_HDRS_AFTER_BASIC = common dso_local global i32 0, align 4
@NIG_REG_LLH1_MF_MODE = common dso_local global i32 0, align 4
@NIG_REG_LLH_MF_MODE = common dso_local global i32 0, align 4
@NIG_REG_XGXS_SERDES0_MODE_SEL = common dso_local global i32 0, align 4
@NIG_REG_LLH0_BRB1_DRV_MASK_MF = common dso_local global i32 0, align 4
@NIG_REG_LLH1_CLS_TYPE = common dso_local global i32 0, align 4
@NIG_REG_LLH0_CLS_TYPE = common dso_local global i32 0, align 4
@NIG_REG_LLFC_ENABLE_0 = common dso_local global i32 0, align 4
@NIG_REG_LLFC_OUT_EN_0 = common dso_local global i32 0, align 4
@NIG_REG_PAUSE_ENABLE_0 = common dso_local global i32 0, align 4
@MISC_REG_SPIO_EVENT_EN = common dso_local global i32 0, align 4
@MISC_SPIO_SPIO5 = common dso_local global i32 0, align 4
@MISC_REG_AEU_ENABLE1_FUNC_1_OUT_0 = common dso_local global i32 0, align 4
@MISC_REG_AEU_ENABLE1_FUNC_0_OUT_0 = common dso_local global i32 0, align 4
@AEU_INPUTS_ATTN_BITS_SPIO5 = common dso_local global i32 0, align 4
@PTP_SUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_init_hw_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_init_hw_port(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %10 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %11 = call i32 @BP_PORT(%struct.bnx2x* %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @PHASE_PORT1, align 4
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @PHASE_PORT0, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @NETIF_MSG_HW, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @DP(i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %24 = load i32, i32* @NIG_REG_MASK_INTERRUPT_PORT0, align 4
  %25 = load i32, i32* %3, align 4
  %26 = mul nsw i32 %25, 4
  %27 = add nsw i32 %24, %26
  %28 = call i32 @REG_WR(%struct.bnx2x* %23, i32 %27, i32 0)
  %29 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %30 = load i32, i32* @BLOCK_MISC, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @bnx2x_init_block(%struct.bnx2x* %29, i32 %30, i32 %31)
  %33 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %34 = load i32, i32* @BLOCK_PXP, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @bnx2x_init_block(%struct.bnx2x* %33, i32 %34, i32 %35)
  %37 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %38 = load i32, i32* @BLOCK_PXP2, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @bnx2x_init_block(%struct.bnx2x* %37, i32 %38, i32 %39)
  %41 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %42 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %18
  %45 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %46 = load i32, i32* @PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER, align 4
  %47 = call i32 @REG_WR(%struct.bnx2x* %45, i32 %46, i32 1)
  br label %48

48:                                               ; preds = %44, %18
  %49 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %50 = load i32, i32* @BLOCK_ATC, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @bnx2x_init_block(%struct.bnx2x* %49, i32 %50, i32 %51)
  %53 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %54 = load i32, i32* @BLOCK_DMAE, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @bnx2x_init_block(%struct.bnx2x* %53, i32 %54, i32 %55)
  %57 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %58 = load i32, i32* @BLOCK_PGLUE_B, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @bnx2x_init_block(%struct.bnx2x* %57, i32 %58, i32 %59)
  %61 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %62 = load i32, i32* @BLOCK_QM, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @bnx2x_init_block(%struct.bnx2x* %61, i32 %62, i32 %63)
  %65 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %66 = load i32, i32* @BLOCK_TCM, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @bnx2x_init_block(%struct.bnx2x* %65, i32 %66, i32 %67)
  %69 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %70 = load i32, i32* @BLOCK_UCM, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @bnx2x_init_block(%struct.bnx2x* %69, i32 %70, i32 %71)
  %73 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %74 = load i32, i32* @BLOCK_CCM, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @bnx2x_init_block(%struct.bnx2x* %73, i32 %74, i32 %75)
  %77 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %78 = load i32, i32* @BLOCK_XCM, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @bnx2x_init_block(%struct.bnx2x* %77, i32 %78, i32 %79)
  %81 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %82 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %83 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @INITOP_SET, align 4
  %86 = call i32 @bnx2x_qm_init_cid_count(%struct.bnx2x* %81, i32 %84, i32 %85)
  %87 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %88 = call i64 @CNIC_SUPPORT(%struct.bnx2x* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %48
  %91 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %92 = load i32, i32* @BLOCK_TM, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @bnx2x_init_block(%struct.bnx2x* %91, i32 %92, i32 %93)
  %95 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %96 = load i32, i32* @TM_REG_LIN0_SCAN_TIME, align 4
  %97 = load i32, i32* %3, align 4
  %98 = mul nsw i32 %97, 4
  %99 = add nsw i32 %96, %98
  %100 = call i32 @REG_WR(%struct.bnx2x* %95, i32 %99, i32 20)
  %101 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %102 = load i32, i32* @TM_REG_LIN0_MAX_ACTIVE_CID, align 4
  %103 = load i32, i32* %3, align 4
  %104 = mul nsw i32 %103, 4
  %105 = add nsw i32 %102, %104
  %106 = call i32 @REG_WR(%struct.bnx2x* %101, i32 %105, i32 31)
  br label %107

107:                                              ; preds = %90, %48
  %108 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %109 = load i32, i32* @BLOCK_DORQ, align 4
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @bnx2x_init_block(%struct.bnx2x* %108, i32 %109, i32 %110)
  %112 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %113 = load i32, i32* @BLOCK_BRB1, align 4
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @bnx2x_init_block(%struct.bnx2x* %112, i32 %113, i32 %114)
  %116 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %117 = call i64 @CHIP_IS_E1(%struct.bnx2x* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %107
  %120 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %121 = call i64 @CHIP_IS_E1H(%struct.bnx2x* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %194

123:                                              ; preds = %119, %107
  %124 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %125 = call i32 @IS_MF(%struct.bnx2x* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %123
  %128 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %129 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @ONE_PORT_FLAG, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i32 160, i32 246
  store i32 %135, i32* %5, align 4
  br label %177

136:                                              ; preds = %123
  %137 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %138 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %137, i32 0, i32 3
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp sgt i32 %141, 4096
  br i1 %142, label %143, label %167

143:                                              ; preds = %136
  %144 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %145 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @ONE_PORT_FLAG, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %143
  store i32 160, i32* %5, align 4
  br label %166

151:                                              ; preds = %143
  %152 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %153 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %152, i32 0, i32 3
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* %7, align 4
  %158 = sdiv i32 %157, 64
  %159 = add nsw i32 96, %158
  %160 = load i32, i32* %7, align 4
  %161 = srem i32 %160, 64
  %162 = icmp ne i32 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i32 1, i32 0
  %165 = add nsw i32 %159, %164
  store i32 %165, i32* %5, align 4
  br label %166

166:                                              ; preds = %151, %150
  br label %176

167:                                              ; preds = %136
  %168 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %169 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @ONE_PORT_FLAG, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i32 80, i32 160
  store i32 %175, i32* %5, align 4
  br label %176

176:                                              ; preds = %167, %166
  br label %177

177:                                              ; preds = %176, %127
  %178 = load i32, i32* %5, align 4
  %179 = add nsw i32 %178, 56
  store i32 %179, i32* %6, align 4
  %180 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %181 = load i32, i32* @BRB1_REG_PAUSE_LOW_THRESHOLD_0, align 4
  %182 = load i32, i32* %3, align 4
  %183 = mul nsw i32 %182, 4
  %184 = add nsw i32 %181, %183
  %185 = load i32, i32* %5, align 4
  %186 = call i32 @REG_WR(%struct.bnx2x* %180, i32 %184, i32 %185)
  %187 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %188 = load i32, i32* @BRB1_REG_PAUSE_HIGH_THRESHOLD_0, align 4
  %189 = load i32, i32* %3, align 4
  %190 = mul nsw i32 %189, 4
  %191 = add nsw i32 %188, %190
  %192 = load i32, i32* %6, align 4
  %193 = call i32 @REG_WR(%struct.bnx2x* %187, i32 %191, i32 %192)
  br label %194

194:                                              ; preds = %177, %119
  %195 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %196 = call i64 @CHIP_MODE_IS_4_PORT(%struct.bnx2x* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %210

198:                                              ; preds = %194
  %199 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %200 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %201 = call i32 @BP_PORT(%struct.bnx2x* %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %198
  %204 = load i32, i32* @BRB1_REG_MAC_GUARANTIED_1, align 4
  br label %207

205:                                              ; preds = %198
  %206 = load i32, i32* @BRB1_REG_MAC_GUARANTIED_0, align 4
  br label %207

207:                                              ; preds = %205, %203
  %208 = phi i32 [ %204, %203 ], [ %206, %205 ]
  %209 = call i32 @REG_WR(%struct.bnx2x* %199, i32 %208, i32 40)
  br label %210

210:                                              ; preds = %207, %194
  %211 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %212 = load i32, i32* @BLOCK_PRS, align 4
  %213 = load i32, i32* %4, align 4
  %214 = call i32 @bnx2x_init_block(%struct.bnx2x* %211, i32 %212, i32 %213)
  %215 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %216 = call i64 @CHIP_IS_E3B0(%struct.bnx2x* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %275

218:                                              ; preds = %210
  %219 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %220 = call i64 @IS_MF_AFEX(%struct.bnx2x* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %256

222:                                              ; preds = %218
  %223 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %224 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %225 = call i32 @BP_PORT(%struct.bnx2x* %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %222
  %228 = load i32, i32* @PRS_REG_HDRS_AFTER_BASIC_PORT_1, align 4
  br label %231

229:                                              ; preds = %222
  %230 = load i32, i32* @PRS_REG_HDRS_AFTER_BASIC_PORT_0, align 4
  br label %231

231:                                              ; preds = %229, %227
  %232 = phi i32 [ %228, %227 ], [ %230, %229 ]
  %233 = call i32 @REG_WR(%struct.bnx2x* %223, i32 %232, i32 14)
  %234 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %235 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %236 = call i32 @BP_PORT(%struct.bnx2x* %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %231
  %239 = load i32, i32* @PRS_REG_HDRS_AFTER_TAG_0_PORT_1, align 4
  br label %242

240:                                              ; preds = %231
  %241 = load i32, i32* @PRS_REG_HDRS_AFTER_TAG_0_PORT_0, align 4
  br label %242

242:                                              ; preds = %240, %238
  %243 = phi i32 [ %239, %238 ], [ %241, %240 ]
  %244 = call i32 @REG_WR(%struct.bnx2x* %234, i32 %243, i32 6)
  %245 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %246 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %247 = call i32 @BP_PORT(%struct.bnx2x* %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %242
  %250 = load i32, i32* @PRS_REG_MUST_HAVE_HDRS_PORT_1, align 4
  br label %253

251:                                              ; preds = %242
  %252 = load i32, i32* @PRS_REG_MUST_HAVE_HDRS_PORT_0, align 4
  br label %253

253:                                              ; preds = %251, %249
  %254 = phi i32 [ %250, %249 ], [ %252, %251 ]
  %255 = call i32 @REG_WR(%struct.bnx2x* %245, i32 %254, i32 10)
  br label %274

256:                                              ; preds = %218
  %257 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %258 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %259 = call i32 @BP_PORT(%struct.bnx2x* %258)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %256
  %262 = load i32, i32* @PRS_REG_HDRS_AFTER_BASIC_PORT_1, align 4
  br label %265

263:                                              ; preds = %256
  %264 = load i32, i32* @PRS_REG_HDRS_AFTER_BASIC_PORT_0, align 4
  br label %265

265:                                              ; preds = %263, %261
  %266 = phi i32 [ %262, %261 ], [ %264, %263 ]
  %267 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %268 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  %271 = zext i1 %270 to i64
  %272 = select i1 %270, i32 7, i32 6
  %273 = call i32 @REG_WR(%struct.bnx2x* %257, i32 %266, i32 %272)
  br label %274

274:                                              ; preds = %265, %253
  br label %275

275:                                              ; preds = %274, %210
  %276 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %277 = load i32, i32* @BLOCK_TSDM, align 4
  %278 = load i32, i32* %4, align 4
  %279 = call i32 @bnx2x_init_block(%struct.bnx2x* %276, i32 %277, i32 %278)
  %280 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %281 = load i32, i32* @BLOCK_CSDM, align 4
  %282 = load i32, i32* %4, align 4
  %283 = call i32 @bnx2x_init_block(%struct.bnx2x* %280, i32 %281, i32 %282)
  %284 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %285 = load i32, i32* @BLOCK_USDM, align 4
  %286 = load i32, i32* %4, align 4
  %287 = call i32 @bnx2x_init_block(%struct.bnx2x* %284, i32 %285, i32 %286)
  %288 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %289 = load i32, i32* @BLOCK_XSDM, align 4
  %290 = load i32, i32* %4, align 4
  %291 = call i32 @bnx2x_init_block(%struct.bnx2x* %288, i32 %289, i32 %290)
  %292 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %293 = load i32, i32* @BLOCK_TSEM, align 4
  %294 = load i32, i32* %4, align 4
  %295 = call i32 @bnx2x_init_block(%struct.bnx2x* %292, i32 %293, i32 %294)
  %296 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %297 = load i32, i32* @BLOCK_USEM, align 4
  %298 = load i32, i32* %4, align 4
  %299 = call i32 @bnx2x_init_block(%struct.bnx2x* %296, i32 %297, i32 %298)
  %300 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %301 = load i32, i32* @BLOCK_CSEM, align 4
  %302 = load i32, i32* %4, align 4
  %303 = call i32 @bnx2x_init_block(%struct.bnx2x* %300, i32 %301, i32 %302)
  %304 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %305 = load i32, i32* @BLOCK_XSEM, align 4
  %306 = load i32, i32* %4, align 4
  %307 = call i32 @bnx2x_init_block(%struct.bnx2x* %304, i32 %305, i32 %306)
  %308 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %309 = load i32, i32* @BLOCK_UPB, align 4
  %310 = load i32, i32* %4, align 4
  %311 = call i32 @bnx2x_init_block(%struct.bnx2x* %308, i32 %309, i32 %310)
  %312 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %313 = load i32, i32* @BLOCK_XPB, align 4
  %314 = load i32, i32* %4, align 4
  %315 = call i32 @bnx2x_init_block(%struct.bnx2x* %312, i32 %313, i32 %314)
  %316 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %317 = load i32, i32* @BLOCK_PBF, align 4
  %318 = load i32, i32* %4, align 4
  %319 = call i32 @bnx2x_init_block(%struct.bnx2x* %316, i32 %317, i32 %318)
  %320 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %321 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %355

323:                                              ; preds = %275
  %324 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %325 = load i32, i32* @PBF_REG_P0_PAUSE_ENABLE, align 4
  %326 = load i32, i32* %3, align 4
  %327 = mul nsw i32 %326, 4
  %328 = add nsw i32 %325, %327
  %329 = call i32 @REG_WR(%struct.bnx2x* %324, i32 %328, i32 0)
  %330 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %331 = load i32, i32* @PBF_REG_P0_ARB_THRSH, align 4
  %332 = load i32, i32* %3, align 4
  %333 = mul nsw i32 %332, 4
  %334 = add nsw i32 %331, %333
  %335 = call i32 @REG_WR(%struct.bnx2x* %330, i32 %334, i32 565)
  %336 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %337 = load i32, i32* @PBF_REG_P0_INIT_CRD, align 4
  %338 = load i32, i32* %3, align 4
  %339 = mul nsw i32 %338, 4
  %340 = add nsw i32 %337, %339
  %341 = call i32 @REG_WR(%struct.bnx2x* %336, i32 %340, i32 1096)
  %342 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %343 = load i32, i32* @PBF_REG_INIT_P0, align 4
  %344 = load i32, i32* %3, align 4
  %345 = mul nsw i32 %344, 4
  %346 = add nsw i32 %343, %345
  %347 = call i32 @REG_WR(%struct.bnx2x* %342, i32 %346, i32 1)
  %348 = call i32 @udelay(i32 50)
  %349 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %350 = load i32, i32* @PBF_REG_INIT_P0, align 4
  %351 = load i32, i32* %3, align 4
  %352 = mul nsw i32 %351, 4
  %353 = add nsw i32 %350, %352
  %354 = call i32 @REG_WR(%struct.bnx2x* %349, i32 %353, i32 0)
  br label %355

355:                                              ; preds = %323, %275
  %356 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %357 = call i64 @CNIC_SUPPORT(%struct.bnx2x* %356)
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %364

359:                                              ; preds = %355
  %360 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %361 = load i32, i32* @BLOCK_SRC, align 4
  %362 = load i32, i32* %4, align 4
  %363 = call i32 @bnx2x_init_block(%struct.bnx2x* %360, i32 %361, i32 %362)
  br label %364

364:                                              ; preds = %359, %355
  %365 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %366 = load i32, i32* @BLOCK_CDU, align 4
  %367 = load i32, i32* %4, align 4
  %368 = call i32 @bnx2x_init_block(%struct.bnx2x* %365, i32 %366, i32 %367)
  %369 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %370 = load i32, i32* @BLOCK_CFC, align 4
  %371 = load i32, i32* %4, align 4
  %372 = call i32 @bnx2x_init_block(%struct.bnx2x* %369, i32 %370, i32 %371)
  %373 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %374 = call i64 @CHIP_IS_E1(%struct.bnx2x* %373)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %389

376:                                              ; preds = %364
  %377 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %378 = load i32, i32* @HC_REG_LEADING_EDGE_0, align 4
  %379 = load i32, i32* %3, align 4
  %380 = mul nsw i32 %379, 8
  %381 = add nsw i32 %378, %380
  %382 = call i32 @REG_WR(%struct.bnx2x* %377, i32 %381, i32 0)
  %383 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %384 = load i32, i32* @HC_REG_TRAILING_EDGE_0, align 4
  %385 = load i32, i32* %3, align 4
  %386 = mul nsw i32 %385, 8
  %387 = add nsw i32 %384, %386
  %388 = call i32 @REG_WR(%struct.bnx2x* %383, i32 %387, i32 0)
  br label %389

389:                                              ; preds = %376, %364
  %390 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %391 = load i32, i32* @BLOCK_HC, align 4
  %392 = load i32, i32* %4, align 4
  %393 = call i32 @bnx2x_init_block(%struct.bnx2x* %390, i32 %391, i32 %392)
  %394 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %395 = load i32, i32* @BLOCK_IGU, align 4
  %396 = load i32, i32* %4, align 4
  %397 = call i32 @bnx2x_init_block(%struct.bnx2x* %394, i32 %395, i32 %396)
  %398 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %399 = load i32, i32* @BLOCK_MISC_AEU, align 4
  %400 = load i32, i32* %4, align 4
  %401 = call i32 @bnx2x_init_block(%struct.bnx2x* %398, i32 %399, i32 %400)
  %402 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %403 = call i32 @IS_MF(%struct.bnx2x* %402)
  %404 = icmp ne i32 %403, 0
  %405 = zext i1 %404 to i64
  %406 = select i1 %404, i32 247, i32 7
  store i32 %406, i32* %7, align 4
  %407 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %408 = call i64 @CHIP_IS_E1(%struct.bnx2x* %407)
  %409 = icmp ne i64 %408, 0
  %410 = zext i1 %409 to i64
  %411 = select i1 %409, i32 0, i32 16
  %412 = load i32, i32* %7, align 4
  %413 = or i32 %412, %411
  store i32 %413, i32* %7, align 4
  %414 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %415 = load i32, i32* @MISC_REG_AEU_MASK_ATTN_FUNC_0, align 4
  %416 = load i32, i32* %3, align 4
  %417 = mul nsw i32 %416, 4
  %418 = add nsw i32 %415, %417
  %419 = load i32, i32* %7, align 4
  %420 = call i32 @REG_WR(%struct.bnx2x* %414, i32 %418, i32 %419)
  %421 = load i32, i32* %3, align 4
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %425

423:                                              ; preds = %389
  %424 = load i32, i32* @MISC_REG_AEU_ENABLE4_NIG_1, align 4
  br label %427

425:                                              ; preds = %389
  %426 = load i32, i32* @MISC_REG_AEU_ENABLE4_NIG_0, align 4
  br label %427

427:                                              ; preds = %425, %423
  %428 = phi i32 [ %424, %423 ], [ %426, %425 ]
  store i32 %428, i32* %8, align 4
  %429 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %430 = load i32, i32* %8, align 4
  %431 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %432 = load i32, i32* %8, align 4
  %433 = call i32 @REG_RD(%struct.bnx2x* %431, i32 %432)
  %434 = load i32, i32* @AEU_INPUTS_ATTN_BITS_MCP_LATCHED_SCPAD_PARITY, align 4
  %435 = xor i32 %434, -1
  %436 = and i32 %433, %435
  %437 = call i32 @REG_WR(%struct.bnx2x* %429, i32 %430, i32 %436)
  %438 = load i32, i32* %3, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %442

440:                                              ; preds = %427
  %441 = load i32, i32* @MISC_REG_AEU_ENABLE4_PXP_1, align 4
  br label %444

442:                                              ; preds = %427
  %443 = load i32, i32* @MISC_REG_AEU_ENABLE4_PXP_0, align 4
  br label %444

444:                                              ; preds = %442, %440
  %445 = phi i32 [ %441, %440 ], [ %443, %442 ]
  store i32 %445, i32* %8, align 4
  %446 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %447 = load i32, i32* %8, align 4
  %448 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %449 = load i32, i32* %8, align 4
  %450 = call i32 @REG_RD(%struct.bnx2x* %448, i32 %449)
  %451 = load i32, i32* @AEU_INPUTS_ATTN_BITS_MCP_LATCHED_SCPAD_PARITY, align 4
  %452 = xor i32 %451, -1
  %453 = and i32 %450, %452
  %454 = call i32 @REG_WR(%struct.bnx2x* %446, i32 %447, i32 %453)
  %455 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %456 = load i32, i32* @BLOCK_NIG, align 4
  %457 = load i32, i32* %4, align 4
  %458 = call i32 @bnx2x_init_block(%struct.bnx2x* %455, i32 %456, i32 %457)
  %459 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %460 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %459)
  %461 = icmp ne i64 %460, 0
  br i1 %461, label %514, label %462

462:                                              ; preds = %444
  %463 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %464 = call i64 @IS_MF_AFEX(%struct.bnx2x* %463)
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %466, label %478

466:                                              ; preds = %462
  %467 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %468 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %469 = call i32 @BP_PORT(%struct.bnx2x* %468)
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %473

471:                                              ; preds = %466
  %472 = load i32, i32* @NIG_REG_P1_HDRS_AFTER_BASIC, align 4
  br label %475

473:                                              ; preds = %466
  %474 = load i32, i32* @NIG_REG_P0_HDRS_AFTER_BASIC, align 4
  br label %475

475:                                              ; preds = %473, %471
  %476 = phi i32 [ %472, %471 ], [ %474, %473 ]
  %477 = call i32 @REG_WR(%struct.bnx2x* %467, i32 %476, i32 14)
  br label %495

478:                                              ; preds = %462
  %479 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %480 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %481 = call i32 @BP_PORT(%struct.bnx2x* %480)
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %485

483:                                              ; preds = %478
  %484 = load i32, i32* @NIG_REG_P1_HDRS_AFTER_BASIC, align 4
  br label %487

485:                                              ; preds = %478
  %486 = load i32, i32* @NIG_REG_P0_HDRS_AFTER_BASIC, align 4
  br label %487

487:                                              ; preds = %485, %483
  %488 = phi i32 [ %484, %483 ], [ %486, %485 ]
  %489 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %490 = call i64 @IS_MF_SD(%struct.bnx2x* %489)
  %491 = icmp ne i64 %490, 0
  %492 = zext i1 %491 to i64
  %493 = select i1 %491, i32 7, i32 6
  %494 = call i32 @REG_WR(%struct.bnx2x* %479, i32 %488, i32 %493)
  br label %495

495:                                              ; preds = %487, %475
  %496 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %497 = call i64 @CHIP_IS_E3(%struct.bnx2x* %496)
  %498 = icmp ne i64 %497, 0
  br i1 %498, label %499, label %513

499:                                              ; preds = %495
  %500 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %501 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %502 = call i32 @BP_PORT(%struct.bnx2x* %501)
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %504, label %506

504:                                              ; preds = %499
  %505 = load i32, i32* @NIG_REG_LLH1_MF_MODE, align 4
  br label %508

506:                                              ; preds = %499
  %507 = load i32, i32* @NIG_REG_LLH_MF_MODE, align 4
  br label %508

508:                                              ; preds = %506, %504
  %509 = phi i32 [ %505, %504 ], [ %507, %506 ]
  %510 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %511 = call i32 @IS_MF(%struct.bnx2x* %510)
  %512 = call i32 @REG_WR(%struct.bnx2x* %500, i32 %509, i32 %511)
  br label %513

513:                                              ; preds = %508, %495
  br label %514

514:                                              ; preds = %513, %444
  %515 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %516 = call i64 @CHIP_IS_E3(%struct.bnx2x* %515)
  %517 = icmp ne i64 %516, 0
  br i1 %517, label %525, label %518

518:                                              ; preds = %514
  %519 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %520 = load i32, i32* @NIG_REG_XGXS_SERDES0_MODE_SEL, align 4
  %521 = load i32, i32* %3, align 4
  %522 = mul nsw i32 %521, 4
  %523 = add nsw i32 %520, %522
  %524 = call i32 @REG_WR(%struct.bnx2x* %519, i32 %523, i32 1)
  br label %525

525:                                              ; preds = %518, %514
  %526 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %527 = call i64 @CHIP_IS_E1(%struct.bnx2x* %526)
  %528 = icmp ne i64 %527, 0
  br i1 %528, label %582, label %529

529:                                              ; preds = %525
  %530 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %531 = load i32, i32* @NIG_REG_LLH0_BRB1_DRV_MASK_MF, align 4
  %532 = load i32, i32* %3, align 4
  %533 = mul nsw i32 %532, 4
  %534 = add nsw i32 %531, %533
  %535 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %536 = call i64 @IS_MF_SD(%struct.bnx2x* %535)
  %537 = icmp ne i64 %536, 0
  %538 = zext i1 %537 to i64
  %539 = select i1 %537, i32 1, i32 2
  %540 = call i32 @REG_WR(%struct.bnx2x* %530, i32 %534, i32 %539)
  %541 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %542 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %541)
  %543 = icmp ne i64 %542, 0
  br i1 %543, label %563, label %544

544:                                              ; preds = %529
  store i32 0, i32* %7, align 4
  %545 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %546 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %545, i32 0, i32 1
  %547 = load i32, i32* %546, align 4
  switch i32 %547, label %550 [
    i32 129, label %548
    i32 128, label %549
    i32 130, label %549
  ]

548:                                              ; preds = %544
  store i32 1, i32* %7, align 4
  br label %550

549:                                              ; preds = %544, %544
  store i32 2, i32* %7, align 4
  br label %550

550:                                              ; preds = %544, %549, %548
  %551 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %552 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %553 = call i32 @BP_PORT(%struct.bnx2x* %552)
  %554 = icmp ne i32 %553, 0
  br i1 %554, label %555, label %557

555:                                              ; preds = %550
  %556 = load i32, i32* @NIG_REG_LLH1_CLS_TYPE, align 4
  br label %559

557:                                              ; preds = %550
  %558 = load i32, i32* @NIG_REG_LLH0_CLS_TYPE, align 4
  br label %559

559:                                              ; preds = %557, %555
  %560 = phi i32 [ %556, %555 ], [ %558, %557 ]
  %561 = load i32, i32* %7, align 4
  %562 = call i32 @REG_WR(%struct.bnx2x* %551, i32 %560, i32 %561)
  br label %563

563:                                              ; preds = %559, %529
  %564 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %565 = load i32, i32* @NIG_REG_LLFC_ENABLE_0, align 4
  %566 = load i32, i32* %3, align 4
  %567 = mul nsw i32 %566, 4
  %568 = add nsw i32 %565, %567
  %569 = call i32 @REG_WR(%struct.bnx2x* %564, i32 %568, i32 0)
  %570 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %571 = load i32, i32* @NIG_REG_LLFC_OUT_EN_0, align 4
  %572 = load i32, i32* %3, align 4
  %573 = mul nsw i32 %572, 4
  %574 = add nsw i32 %571, %573
  %575 = call i32 @REG_WR(%struct.bnx2x* %570, i32 %574, i32 0)
  %576 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %577 = load i32, i32* @NIG_REG_PAUSE_ENABLE_0, align 4
  %578 = load i32, i32* %3, align 4
  %579 = mul nsw i32 %578, 4
  %580 = add nsw i32 %577, %579
  %581 = call i32 @REG_WR(%struct.bnx2x* %576, i32 %580, i32 1)
  br label %582

582:                                              ; preds = %563, %525
  %583 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %584 = load i32, i32* @MISC_REG_SPIO_EVENT_EN, align 4
  %585 = call i32 @REG_RD(%struct.bnx2x* %583, i32 %584)
  store i32 %585, i32* %7, align 4
  %586 = load i32, i32* %7, align 4
  %587 = load i32, i32* @MISC_SPIO_SPIO5, align 4
  %588 = and i32 %586, %587
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %590, label %609

590:                                              ; preds = %582
  %591 = load i32, i32* %3, align 4
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %593, label %595

593:                                              ; preds = %590
  %594 = load i32, i32* @MISC_REG_AEU_ENABLE1_FUNC_1_OUT_0, align 4
  br label %597

595:                                              ; preds = %590
  %596 = load i32, i32* @MISC_REG_AEU_ENABLE1_FUNC_0_OUT_0, align 4
  br label %597

597:                                              ; preds = %595, %593
  %598 = phi i32 [ %594, %593 ], [ %596, %595 ]
  store i32 %598, i32* %9, align 4
  %599 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %600 = load i32, i32* %9, align 4
  %601 = call i32 @REG_RD(%struct.bnx2x* %599, i32 %600)
  store i32 %601, i32* %7, align 4
  %602 = load i32, i32* @AEU_INPUTS_ATTN_BITS_SPIO5, align 4
  %603 = load i32, i32* %7, align 4
  %604 = or i32 %603, %602
  store i32 %604, i32* %7, align 4
  %605 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %606 = load i32, i32* %9, align 4
  %607 = load i32, i32* %7, align 4
  %608 = call i32 @REG_WR(%struct.bnx2x* %605, i32 %606, i32 %607)
  br label %609

609:                                              ; preds = %597, %582
  %610 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %611 = call i64 @CHIP_IS_E3B0(%struct.bnx2x* %610)
  %612 = icmp ne i64 %611, 0
  br i1 %612, label %613, label %619

613:                                              ; preds = %609
  %614 = load i32, i32* @PTP_SUPPORTED, align 4
  %615 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %616 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %615, i32 0, i32 0
  %617 = load i32, i32* %616, align 8
  %618 = or i32 %617, %614
  store i32 %618, i32* %616, align 8
  br label %619

619:                                              ; preds = %613, %609
  ret i32 0
}

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_init_block(%struct.bnx2x*, i32, i32) #1

declare dso_local i64 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_qm_init_cid_count(%struct.bnx2x*, i32, i32) #1

declare dso_local i64 @CNIC_SUPPORT(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E1(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E1H(%struct.bnx2x*) #1

declare dso_local i32 @IS_MF(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_MODE_IS_4_PORT(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E3B0(%struct.bnx2x*) #1

declare dso_local i64 @IS_MF_AFEX(%struct.bnx2x*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i64 @IS_MF_SD(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E3(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
