; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_pf_rx_q_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_pf_rx_q_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i64, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bnx2x_fastpath = type { i64, i32, i32, i64, i64, i32, i32 }
%struct.rxq_pause_params = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.bnx2x_rxq_setup_params = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i64, i64, i64, i32, i32 }

@TPA_MODE_DISABLED = common dso_local global i64 0, align 8
@FW_PREFETCH_CNT = common dso_local global i32 0, align 4
@MAX_RX_SGE_CNT = common dso_local global i32 0, align 4
@NUM_RX_SGE_PAGES = common dso_local global i32 0, align 4
@TPA_AGG_SIZE = common dso_local global i8* null, align 8
@SGE_PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGES_PER_SGE = common dso_local global i32 0, align 4
@PAGES_PER_SGE_SHIFT = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@SGE_PAGES = common dso_local global i32 0, align 4
@NUM_RCQ_RINGS = common dso_local global i32 0, align 4
@MAX_RCQ_DESC_CNT = common dso_local global i32 0, align 4
@BCM_PAGE_SIZE = common dso_local global i64 0, align 8
@BNX2X_FW_RX_ALIGN_START = common dso_local global i64 0, align 8
@BNX2X_FW_RX_ALIGN_END = common dso_local global i64 0, align 8
@IP_HEADER_ALIGNMENT_PADDING = common dso_local global i64 0, align 8
@BNX2X_RX_ALIGN_SHIFT = common dso_local global i32 0, align 4
@HC_SP_INDEX_ETH_FCOE_RX_CQ_CONS = common dso_local global i32 0, align 4
@HC_INDEX_ETH_RX_CQ_CONS = common dso_local global i32 0, align 4
@VLAN_VID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_fastpath*, %struct.rxq_pause_params*, %struct.bnx2x_rxq_setup_params*)* @bnx2x_pf_rx_q_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_pf_rx_q_prep(%struct.bnx2x* %0, %struct.bnx2x_fastpath* %1, %struct.rxq_pause_params* %2, %struct.bnx2x_rxq_setup_params* %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.bnx2x_fastpath*, align 8
  %7 = alloca %struct.rxq_pause_params*, align 8
  %8 = alloca %struct.bnx2x_rxq_setup_params*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.bnx2x_fastpath* %1, %struct.bnx2x_fastpath** %6, align 8
  store %struct.rxq_pause_params* %2, %struct.rxq_pause_params** %7, align 8
  store %struct.bnx2x_rxq_setup_params* %3, %struct.bnx2x_rxq_setup_params** %8, align 8
  store i32 0, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %12 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %6, align 8
  %13 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TPA_MODE_DISABLED, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %67

17:                                               ; preds = %4
  %18 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %19 = call i32 @SGE_TH_LO(%struct.bnx2x* %18)
  %20 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %7, align 8
  %21 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 8
  %22 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %23 = call i32 @SGE_TH_HI(%struct.bnx2x* %22)
  %24 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %7, align 8
  %25 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %27 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %17
  %31 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %7, align 8
  %32 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @FW_PREFETCH_CNT, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* @MAX_RX_SGE_CNT, align 4
  %37 = load i32, i32* @NUM_RX_SGE_PAGES, align 4
  %38 = mul nsw i32 %36, %37
  %39 = icmp sgt i32 %35, %38
  br label %40

40:                                               ; preds = %30, %17
  %41 = phi i1 [ false, %17 ], [ %39, %30 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @WARN_ON(i32 %42)
  %44 = load i8*, i8** @TPA_AGG_SIZE, align 8
  store i8* %44, i8** %11, align 8
  %45 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %46 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %45, i32 0, i32 3
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @SGE_PAGE_ALIGN(i32 %49)
  %51 = load i32, i32* @SGE_PAGE_SHIFT, align 4
  %52 = ashr i32 %50, %51
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @PAGES_PER_SGE, align 4
  %55 = add nsw i32 %53, %54
  %56 = sub nsw i32 %55, 1
  %57 = load i32, i32* @PAGES_PER_SGE, align 4
  %58 = sub nsw i32 %57, 1
  %59 = xor i32 %58, -1
  %60 = and i32 %56, %59
  %61 = load i32, i32* @PAGES_PER_SGE_SHIFT, align 4
  %62 = ashr i32 %60, %61
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* @u32, align 4
  %64 = load i32, i32* @SGE_PAGES, align 4
  %65 = call i64 @min_t(i32 %63, i32 %64, i32 65535)
  %66 = inttoptr i64 %65 to i8*
  store i8* %66, i8** %10, align 8
  br label %67

67:                                               ; preds = %40, %4
  %68 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %69 = call i32 @CHIP_IS_E1(%struct.bnx2x* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %127, label %71

71:                                               ; preds = %67
  %72 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %73 = call i32 @BD_TH_LO(%struct.bnx2x* %72)
  %74 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %7, align 8
  %75 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 4
  %76 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %77 = call i64 @BD_TH_HI(%struct.bnx2x* %76)
  %78 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %7, align 8
  %79 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  %80 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %81 = call i32 @RCQ_TH_LO(%struct.bnx2x* %80)
  %82 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %7, align 8
  %83 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %85 = call i32 @RCQ_TH_HI(%struct.bnx2x* %84)
  %86 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %7, align 8
  %87 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %89 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %71
  %93 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %7, align 8
  %94 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* @FW_PREFETCH_CNT, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %95, %97
  %99 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %100 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp sgt i64 %98, %101
  br label %103

103:                                              ; preds = %92, %71
  %104 = phi i1 [ false, %71 ], [ %102, %92 ]
  %105 = zext i1 %104 to i32
  %106 = call i32 @WARN_ON(i32 %105)
  %107 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %108 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %103
  %112 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %7, align 8
  %113 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @FW_PREFETCH_CNT, align 4
  %116 = add nsw i32 %114, %115
  %117 = load i32, i32* @NUM_RCQ_RINGS, align 4
  %118 = load i32, i32* @MAX_RCQ_DESC_CNT, align 4
  %119 = mul nsw i32 %117, %118
  %120 = icmp sgt i32 %116, %119
  br label %121

121:                                              ; preds = %111, %103
  %122 = phi i1 [ false, %103 ], [ %120, %111 ]
  %123 = zext i1 %122 to i32
  %124 = call i32 @WARN_ON(i32 %123)
  %125 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %7, align 8
  %126 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %125, i32 0, i32 3
  store i32 1, i32* %126, align 4
  br label %127

127:                                              ; preds = %121, %67
  %128 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %6, align 8
  %129 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %132 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %131, i32 0, i32 16
  store i32 %130, i32* %132, align 4
  %133 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %6, align 8
  %134 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %137 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %136, i32 0, i32 15
  store i32 %135, i32* %137, align 8
  %138 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %6, align 8
  %139 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %142 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %141, i32 0, i32 14
  store i64 %140, i64* %142, align 8
  %143 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %6, align 8
  %144 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @BCM_PAGE_SIZE, align 8
  %147 = add nsw i64 %145, %146
  %148 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %149 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %148, i32 0, i32 13
  store i64 %147, i64* %149, align 8
  %150 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %6, align 8
  %151 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @BNX2X_FW_RX_ALIGN_START, align 8
  %154 = sub nsw i64 %152, %153
  %155 = load i64, i64* @BNX2X_FW_RX_ALIGN_END, align 8
  %156 = sub nsw i64 %154, %155
  %157 = load i64, i64* @IP_HEADER_ALIGNMENT_PADDING, align 8
  %158 = sub nsw i64 %156, %157
  %159 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %160 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %159, i32 0, i32 12
  store i64 %158, i64* %160, align 8
  %161 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %6, align 8
  %162 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %165 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %164, i32 0, i32 11
  store i32 %163, i32* %165, align 8
  %166 = load i8*, i8** %11, align 8
  %167 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %168 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %167, i32 0, i32 10
  store i8* %166, i8** %168, align 8
  %169 = load i8*, i8** %10, align 8
  %170 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %171 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %170, i32 0, i32 9
  store i8* %169, i8** %171, align 8
  %172 = load i32, i32* %9, align 4
  %173 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %174 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 8
  %175 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %176 = call i8* @BP_FUNC(%struct.bnx2x* %175)
  %177 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %178 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %177, i32 0, i32 8
  store i8* %176, i8** %178, align 8
  %179 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %180 = call i8* @BP_FUNC(%struct.bnx2x* %179)
  %181 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %182 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %181, i32 0, i32 7
  store i8* %180, i8** %182, align 8
  %183 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %184 = call i32 @MAX_AGG_QS(%struct.bnx2x* %183)
  %185 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %186 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %185, i32 0, i32 6
  store i32 %184, i32* %186, align 8
  %187 = load i32, i32* @BNX2X_RX_ALIGN_SHIFT, align 4
  %188 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %189 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %188, i32 0, i32 5
  store i32 %187, i32* %189, align 4
  %190 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %6, align 8
  %191 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %194 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %193, i32 0, i32 4
  store i32 %192, i32* %194, align 8
  %195 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %6, align 8
  %196 = call i64 @IS_FCOE_FP(%struct.bnx2x_fastpath* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %127
  %199 = load i32, i32* @HC_SP_INDEX_ETH_FCOE_RX_CQ_CONS, align 4
  %200 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %201 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %200, i32 0, i32 3
  store i32 %199, i32* %201, align 4
  br label %206

202:                                              ; preds = %127
  %203 = load i32, i32* @HC_INDEX_ETH_RX_CQ_CONS, align 4
  %204 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %205 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %204, i32 0, i32 3
  store i32 %203, i32* %205, align 4
  br label %206

206:                                              ; preds = %202, %198
  %207 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %208 = call i64 @IS_MF_AFEX(%struct.bnx2x* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %206
  %211 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %212 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %215 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %214, i32 0, i32 2
  store i32 %213, i32* %215, align 8
  %216 = load i32, i32* @VLAN_VID_MASK, align 4
  %217 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %218 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %217, i32 0, i32 1
  store i32 %216, i32* %218, align 4
  br label %219

219:                                              ; preds = %210, %206
  ret void
}

declare dso_local i32 @SGE_TH_LO(%struct.bnx2x*) #1

declare dso_local i32 @SGE_TH_HI(%struct.bnx2x*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @SGE_PAGE_ALIGN(i32) #1

declare dso_local i64 @min_t(i32, i32, i32) #1

declare dso_local i32 @CHIP_IS_E1(%struct.bnx2x*) #1

declare dso_local i32 @BD_TH_LO(%struct.bnx2x*) #1

declare dso_local i64 @BD_TH_HI(%struct.bnx2x*) #1

declare dso_local i32 @RCQ_TH_LO(%struct.bnx2x*) #1

declare dso_local i32 @RCQ_TH_HI(%struct.bnx2x*) #1

declare dso_local i8* @BP_FUNC(%struct.bnx2x*) #1

declare dso_local i32 @MAX_AGG_QS(%struct.bnx2x*) #1

declare dso_local i64 @IS_FCOE_FP(%struct.bnx2x_fastpath*) #1

declare dso_local i64 @IS_MF_AFEX(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
