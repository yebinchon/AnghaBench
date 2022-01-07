; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_hw_init_pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_hw_init_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { %struct.qed_mcp_function_info }
%struct.qed_mcp_function_info = type { i64 }
%struct.qed_ptt = type { i32 }
%struct.qed_tunnel_info = type { i32 }

@MODE_MF_SD = common dso_local global i32 0, align 4
@NETIF_MSG_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Configuring LLH_FUNC_TAG\0A\00", align 1
@NIG_REG_LLH_FUNC_TAG_EN_RT_OFFSET = common dso_local global i32 0, align 4
@NIG_REG_LLH_FUNC_TAG_VALUE_RT_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Configuring LLH_FUNC_FILTER_HDR_SEL\0A\00", align 1
@NIG_REG_LLH_FUNC_FILTER_HDR_SEL_RT_OFFSET = common dso_local global i32 0, align 4
@MODE_MF_SI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Configuring TAGMAC_CLS_TYPE\0A\00", align 1
@NIG_REG_LLH_FUNC_TAGMAC_CLS_TYPE_RT_OFFSET = common dso_local global i32 0, align 4
@PRS_REG_SEARCH_TCP_RT_OFFSET = common dso_local global i32 0, align 4
@QED_PCI_ISCSI = common dso_local global i64 0, align 8
@PRS_REG_SEARCH_FCOE_RT_OFFSET = common dso_local global i32 0, align 4
@QED_PCI_FCOE = common dso_local global i64 0, align 8
@PRS_REG_SEARCH_ROCE_RT_OFFSET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"pf_phase\00", align 1
@PHASE_PF = common dso_local global i32 0, align 4
@PHASE_QM_PF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Function start ramrod failed\0A\00", align 1
@PRS_REG_SEARCH_TAG1 = common dso_local global i32 0, align 4
@PRS_REG_PKT_LEN_STAT_TAGS_NOT_COUNTED_FIRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_tunnel_info*, i32, i32, i32, i32)* @qed_hw_init_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_hw_init_pf(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.qed_tunnel_info* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.qed_hwfn*, align 8
  %10 = alloca %struct.qed_ptt*, align 8
  %11 = alloca %struct.qed_tunnel_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.qed_mcp_function_info*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %9, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %10, align 8
  store %struct.qed_tunnel_info* %2, %struct.qed_tunnel_info** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %20 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %23 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %26, label %46

26:                                               ; preds = %7
  %27 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %28 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store %struct.qed_mcp_function_info* %30, %struct.qed_mcp_function_info** %18, align 8
  %31 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %18, align 8
  %32 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %18, align 8
  %37 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %40 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i64 %38, i64* %41, align 8
  br label %42

42:                                               ; preds = %35, %26
  %43 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %44 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 100000, i32* %45, align 8
  br label %46

46:                                               ; preds = %42, %7
  %47 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %48 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %49 = call i32 @qed_cxt_hw_init_pf(%struct.qed_hwfn* %47, %struct.qed_ptt* %48)
  %50 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %51 = call i32 @qed_int_igu_init_rt(%struct.qed_hwfn* %50)
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @MODE_MF_SD, align 4
  %54 = call i32 @BIT(i32 %53)
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %46
  %58 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %59 = load i32, i32* @NETIF_MSG_HW, align 4
  %60 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %58, i32 %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %61 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %62 = load i32, i32* @NIG_REG_LLH_FUNC_TAG_EN_RT_OFFSET, align 4
  %63 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %61, i32 %62, i32 1)
  %64 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %65 = load i32, i32* @NIG_REG_LLH_FUNC_TAG_VALUE_RT_OFFSET, align 4
  %66 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %67 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %64, i32 %65, i32 %69)
  %71 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %72 = load i32, i32* @NETIF_MSG_HW, align 4
  %73 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %71, i32 %72, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %75 = load i32, i32* @NIG_REG_LLH_FUNC_FILTER_HDR_SEL_RT_OFFSET, align 4
  %76 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %74, i32 %75, i32 1)
  br label %77

77:                                               ; preds = %57, %46
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @MODE_MF_SI, align 4
  %80 = call i32 @BIT(i32 %79)
  %81 = and i32 %78, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  %84 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %85 = load i32, i32* @NETIF_MSG_HW, align 4
  %86 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %84, i32 %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %87 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %88 = load i32, i32* @NIG_REG_LLH_FUNC_TAGMAC_CLS_TYPE_RT_OFFSET, align 4
  %89 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %87, i32 %88, i32 1)
  br label %90

90:                                               ; preds = %83, %77
  %91 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %92 = load i32, i32* @PRS_REG_SEARCH_TCP_RT_OFFSET, align 4
  %93 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %94 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @QED_PCI_ISCSI, align 8
  %98 = icmp eq i64 %96, %97
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 1, i32 0
  %101 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %91, i32 %92, i32 %100)
  %102 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %103 = load i32, i32* @PRS_REG_SEARCH_FCOE_RT_OFFSET, align 4
  %104 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %105 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @QED_PCI_FCOE, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 1, i32 0
  %112 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %102, i32 %103, i32 %111)
  %113 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %114 = load i32, i32* @PRS_REG_SEARCH_ROCE_RT_OFFSET, align 4
  %115 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %113, i32 %114, i32 0)
  %116 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %117 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %118 = call i32 @qed_dmae_sanity(%struct.qed_hwfn* %116, %struct.qed_ptt* %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 %118, i32* %17, align 4
  %119 = load i32, i32* %17, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %90
  %122 = load i32, i32* %17, align 4
  store i32 %122, i32* %8, align 4
  br label %208

123:                                              ; preds = %90
  %124 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %125 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %126 = load i32, i32* @PHASE_PF, align 4
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @qed_init_run(%struct.qed_hwfn* %124, %struct.qed_ptt* %125, i32 %126, i32 %127, i32 %128)
  store i32 %129, i32* %17, align 4
  %130 = load i32, i32* %17, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %123
  %133 = load i32, i32* %17, align 4
  store i32 %133, i32* %8, align 4
  br label %208

134:                                              ; preds = %123
  %135 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %136 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %137 = load i32, i32* @PHASE_QM_PF, align 4
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @qed_init_run(%struct.qed_hwfn* %135, %struct.qed_ptt* %136, i32 %137, i32 %138, i32 %139)
  store i32 %140, i32* %17, align 4
  %141 = load i32, i32* %17, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %134
  %144 = load i32, i32* %17, align 4
  store i32 %144, i32* %8, align 4
  br label %208

145:                                              ; preds = %134
  %146 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %147 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %148 = call i32 @qed_int_igu_init_pure_rt(%struct.qed_hwfn* %146, %struct.qed_ptt* %147, i32 1, i32 1)
  %149 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %150 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %151 = call i32 @qed_hw_init_pf_doorbell_bar(%struct.qed_hwfn* %149, %struct.qed_ptt* %150)
  store i32 %151, i32* %17, align 4
  %152 = load i32, i32* %17, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %145
  %155 = load i32, i32* %17, align 4
  store i32 %155, i32* %8, align 4
  br label %208

156:                                              ; preds = %145
  %157 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %158 = call i64 @IS_LEAD_HWFN(%struct.qed_hwfn* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %156
  %161 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %162 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %163 = call i32 @qed_llh_hw_init_pf(%struct.qed_hwfn* %161, %struct.qed_ptt* %162)
  store i32 %163, i32* %17, align 4
  %164 = load i32, i32* %17, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %160
  %167 = load i32, i32* %17, align 4
  store i32 %167, i32* %8, align 4
  br label %208

168:                                              ; preds = %160
  br label %169

169:                                              ; preds = %168, %156
  %170 = load i32, i32* %13, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %206

172:                                              ; preds = %169
  %173 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %174 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %175 = load i32, i32* %14, align 4
  %176 = call i32 @qed_int_igu_enable(%struct.qed_hwfn* %173, %struct.qed_ptt* %174, i32 %175)
  %177 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %178 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %179 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %11, align 8
  %180 = load i32, i32* %15, align 4
  %181 = call i32 @qed_sp_pf_start(%struct.qed_hwfn* %177, %struct.qed_ptt* %178, %struct.qed_tunnel_info* %179, i32 %180)
  store i32 %181, i32* %17, align 4
  %182 = load i32, i32* %17, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %172
  %185 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %186 = call i32 @DP_NOTICE(%struct.qed_hwfn* %185, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %187 = load i32, i32* %17, align 4
  store i32 %187, i32* %8, align 4
  br label %208

188:                                              ; preds = %172
  %189 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %190 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @QED_PCI_FCOE, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %205

195:                                              ; preds = %188
  %196 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %197 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %198 = load i32, i32* @PRS_REG_SEARCH_TAG1, align 4
  %199 = call i32 @BIT(i32 2)
  %200 = call i32 @qed_wr(%struct.qed_hwfn* %196, %struct.qed_ptt* %197, i32 %198, i32 %199)
  %201 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %202 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %203 = load i32, i32* @PRS_REG_PKT_LEN_STAT_TAGS_NOT_COUNTED_FIRST, align 4
  %204 = call i32 @qed_wr(%struct.qed_hwfn* %201, %struct.qed_ptt* %202, i32 %203, i32 256)
  br label %205

205:                                              ; preds = %195, %188
  br label %206

206:                                              ; preds = %205, %169
  %207 = load i32, i32* %17, align 4
  store i32 %207, i32* %8, align 4
  br label %208

208:                                              ; preds = %206, %184, %166, %154, %143, %132, %121
  %209 = load i32, i32* %8, align 4
  ret i32 %209
}

declare dso_local i32 @qed_cxt_hw_init_pf(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @qed_int_igu_init_rt(%struct.qed_hwfn*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*) #1

declare dso_local i32 @STORE_RT_REG(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @qed_dmae_sanity(%struct.qed_hwfn*, %struct.qed_ptt*, i8*) #1

declare dso_local i32 @qed_init_run(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32) #1

declare dso_local i32 @qed_int_igu_init_pure_rt(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

declare dso_local i32 @qed_hw_init_pf_doorbell_bar(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i64 @IS_LEAD_HWFN(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_llh_hw_init_pf(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @qed_int_igu_enable(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @qed_sp_pf_start(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_tunnel_info*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
