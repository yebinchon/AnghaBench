; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c___bnxt_poll_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c___bnxt_poll_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.bnxt_cp_ring_info = type { i32, i32, i32, %struct.tx_cmp**, %struct.bnxt_napi* }
%struct.tx_cmp = type { i32 }
%struct.bnxt_napi = type { i32, i32, %struct.bnxt_tx_ring_info* }
%struct.bnxt_tx_ring_info = type { i32, i32 }

@CMP_TYPE_TX_L2_CMP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CMPL_BASE_TYPE_HWRM_DONE = common dso_local global i32 0, align 4
@CMPL_BASE_TYPE_HWRM_FWD_REQ = common dso_local global i32 0, align 4
@CMPL_BASE_TYPE_HWRM_ASYNC_EVENT = common dso_local global i32 0, align 4
@BNXT_REDIRECT_EVENT = common dso_local global i32 0, align 4
@BNXT_TX_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, %struct.bnxt_cp_ring_info*, i32)* @__bnxt_poll_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bnxt_poll_work(%struct.bnxt* %0, %struct.bnxt_cp_ring_info* %1, i32 %2) #0 {
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca %struct.bnxt_cp_ring_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnxt_napi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.tx_cmp*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.bnxt_tx_ring_info*, align 8
  %16 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store %struct.bnxt_cp_ring_info* %1, %struct.bnxt_cp_ring_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %5, align 8
  %18 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %17, i32 0, i32 4
  %19 = load %struct.bnxt_napi*, %struct.bnxt_napi** %18, align 8
  store %struct.bnxt_napi* %19, %struct.bnxt_napi** %7, align 8
  %20 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %5, align 8
  %21 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %23 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %5, align 8
  %24 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  br label %25

25:                                               ; preds = %3, %158
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @RING_CMP(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %5, align 8
  %29 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %28, i32 0, i32 3
  %30 = load %struct.tx_cmp**, %struct.tx_cmp*** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @CP_RING(i32 %31)
  %33 = getelementptr inbounds %struct.tx_cmp*, %struct.tx_cmp** %30, i64 %32
  %34 = load %struct.tx_cmp*, %struct.tx_cmp** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i64 @CP_IDX(i32 %35)
  %37 = getelementptr inbounds %struct.tx_cmp, %struct.tx_cmp* %34, i64 %36
  store %struct.tx_cmp* %37, %struct.tx_cmp** %13, align 8
  %38 = load %struct.tx_cmp*, %struct.tx_cmp** %13, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @TX_CMP_VALID(%struct.tx_cmp* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %25
  br label %159

43:                                               ; preds = %25
  %44 = call i32 (...) @dma_rmb()
  %45 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %5, align 8
  %46 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  %47 = load %struct.tx_cmp*, %struct.tx_cmp** %13, align 8
  %48 = call i32 @TX_CMP_TYPE(%struct.tx_cmp* %47)
  %49 = load i32, i32* @CMP_TYPE_TX_L2_CMP, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %43
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %56 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %54, %57
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %51
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @NEXT_RAW_CMP(i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %5, align 8
  %70 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  br label %71

71:                                               ; preds = %68, %62
  br label %159

72:                                               ; preds = %51
  br label %146

73:                                               ; preds = %43
  %74 = load %struct.tx_cmp*, %struct.tx_cmp** %13, align 8
  %75 = call i32 @TX_CMP_TYPE(%struct.tx_cmp* %74)
  %76 = and i32 %75, 48
  %77 = icmp eq i32 %76, 16
  br i1 %77, label %78, label %120

78:                                               ; preds = %73
  %79 = load i32, i32* %6, align 4
  %80 = call i64 @likely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %84 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %5, align 8
  %85 = call i32 @bnxt_rx_pkt(%struct.bnxt* %83, %struct.bnxt_cp_ring_info* %84, i32* %8, i32* %12)
  store i32 %85, i32* %14, align 4
  br label %90

86:                                               ; preds = %78
  %87 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %88 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %5, align 8
  %89 = call i32 @bnxt_force_rx_discard(%struct.bnxt* %87, %struct.bnxt_cp_ring_info* %88, i32* %8, i32* %12)
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %86, %82
  %91 = load i32, i32* %14, align 4
  %92 = icmp sge i32 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i64 @likely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %11, align 4
  br label %119

100:                                              ; preds = %90
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  br label %118

111:                                              ; preds = %105, %100
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* @EBUSY, align 4
  %114 = sub nsw i32 0, %113
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %159

117:                                              ; preds = %111
  br label %118

118:                                              ; preds = %117, %108
  br label %119

119:                                              ; preds = %118, %96
  br label %145

120:                                              ; preds = %73
  %121 = load %struct.tx_cmp*, %struct.tx_cmp** %13, align 8
  %122 = call i32 @TX_CMP_TYPE(%struct.tx_cmp* %121)
  %123 = load i32, i32* @CMPL_BASE_TYPE_HWRM_DONE, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %135, label %125

125:                                              ; preds = %120
  %126 = load %struct.tx_cmp*, %struct.tx_cmp** %13, align 8
  %127 = call i32 @TX_CMP_TYPE(%struct.tx_cmp* %126)
  %128 = load i32, i32* @CMPL_BASE_TYPE_HWRM_FWD_REQ, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %135, label %130

130:                                              ; preds = %125
  %131 = load %struct.tx_cmp*, %struct.tx_cmp** %13, align 8
  %132 = call i32 @TX_CMP_TYPE(%struct.tx_cmp* %131)
  %133 = load i32, i32* @CMPL_BASE_TYPE_HWRM_ASYNC_EVENT, align 4
  %134 = icmp eq i32 %132, %133
  br label %135

135:                                              ; preds = %130, %125, %120
  %136 = phi i1 [ true, %125 ], [ true, %120 ], [ %134, %130 ]
  %137 = zext i1 %136 to i32
  %138 = call i64 @unlikely(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %142 = load %struct.tx_cmp*, %struct.tx_cmp** %13, align 8
  %143 = call i32 @bnxt_hwrm_handler(%struct.bnxt* %141, %struct.tx_cmp* %142)
  br label %144

144:                                              ; preds = %140, %135
  br label %145

145:                                              ; preds = %144, %119
  br label %146

146:                                              ; preds = %145, %72
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @NEXT_RAW_CMP(i32 %147)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %11, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %146
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* %6, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %5, align 8
  %157 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %156, i32 0, i32 0
  store i32 1, i32* %157, align 8
  br label %159

158:                                              ; preds = %151, %146
  br label %25

159:                                              ; preds = %155, %116, %71, %42
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* @BNXT_REDIRECT_EVENT, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %159
  %165 = call i32 (...) @xdp_do_flush_map()
  br label %166

166:                                              ; preds = %164, %159
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* @BNXT_TX_EVENT, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %184

171:                                              ; preds = %166
  %172 = load %struct.bnxt_napi*, %struct.bnxt_napi** %7, align 8
  %173 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %172, i32 0, i32 2
  %174 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %173, align 8
  store %struct.bnxt_tx_ring_info* %174, %struct.bnxt_tx_ring_info** %15, align 8
  %175 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %15, align 8
  %176 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %16, align 4
  %178 = call i32 (...) @wmb()
  %179 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %180 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %15, align 8
  %181 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %180, i32 0, i32 0
  %182 = load i32, i32* %16, align 4
  %183 = call i32 @bnxt_db_write_relaxed(%struct.bnxt* %179, i32* %181, i32 %182)
  br label %184

184:                                              ; preds = %171, %166
  %185 = load i32, i32* %8, align 4
  %186 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %5, align 8
  %187 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 8
  %188 = load i32, i32* %10, align 4
  %189 = load %struct.bnxt_napi*, %struct.bnxt_napi** %7, align 8
  %190 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, %188
  store i32 %192, i32* %190, align 8
  %193 = load i32, i32* %12, align 4
  %194 = load %struct.bnxt_napi*, %struct.bnxt_napi** %7, align 8
  %195 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 4
  %198 = load i32, i32* %11, align 4
  ret i32 %198
}

declare dso_local i32 @RING_CMP(i32) #1

declare dso_local i64 @CP_RING(i32) #1

declare dso_local i64 @CP_IDX(i32) #1

declare dso_local i32 @TX_CMP_VALID(%struct.tx_cmp*, i32) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @TX_CMP_TYPE(%struct.tx_cmp*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @NEXT_RAW_CMP(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @bnxt_rx_pkt(%struct.bnxt*, %struct.bnxt_cp_ring_info*, i32*, i32*) #1

declare dso_local i32 @bnxt_force_rx_discard(%struct.bnxt*, %struct.bnxt_cp_ring_info*, i32*, i32*) #1

declare dso_local i32 @bnxt_hwrm_handler(%struct.bnxt*, %struct.tx_cmp*) #1

declare dso_local i32 @xdp_do_flush_map(...) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @bnxt_db_write_relaxed(%struct.bnxt*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
