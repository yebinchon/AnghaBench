; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_reuse_rx_agg_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_reuse_rx_agg_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_cp_ring_info = type { %struct.bnxt_napi* }
%struct.bnxt_napi = type { %struct.bnxt_rx_ring_info*, %struct.bnxt* }
%struct.bnxt_rx_ring_info = type { i64, i64, %struct.rx_bd**, %struct.bnxt_sw_rx_agg_bd*, i32 }
%struct.rx_bd = type { i64, i32 }
%struct.bnxt_sw_rx_agg_bd = type { i32, i32, %struct.page* }
%struct.page = type { i32 }
%struct.bnxt = type { i32 }
%struct.rx_agg_cmp = type { i64 }

@BNXT_FLAG_CHIP_P5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt_cp_ring_info*, i64, i64, i64, i32)* @bnxt_reuse_rx_agg_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_reuse_rx_agg_bufs(%struct.bnxt_cp_ring_info* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.bnxt_cp_ring_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.bnxt_napi*, align 8
  %12 = alloca %struct.bnxt*, align 8
  %13 = alloca %struct.bnxt_rx_ring_info*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.rx_agg_cmp*, align 8
  %20 = alloca %struct.bnxt_sw_rx_agg_bd*, align 8
  %21 = alloca %struct.bnxt_sw_rx_agg_bd*, align 8
  %22 = alloca %struct.rx_bd*, align 8
  %23 = alloca %struct.page*, align 8
  store %struct.bnxt_cp_ring_info* %0, %struct.bnxt_cp_ring_info** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %24 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %6, align 8
  %25 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %24, i32 0, i32 0
  %26 = load %struct.bnxt_napi*, %struct.bnxt_napi** %25, align 8
  store %struct.bnxt_napi* %26, %struct.bnxt_napi** %11, align 8
  %27 = load %struct.bnxt_napi*, %struct.bnxt_napi** %11, align 8
  %28 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %27, i32 0, i32 1
  %29 = load %struct.bnxt*, %struct.bnxt** %28, align 8
  store %struct.bnxt* %29, %struct.bnxt** %12, align 8
  %30 = load %struct.bnxt_napi*, %struct.bnxt_napi** %11, align 8
  %31 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %30, i32 0, i32 0
  %32 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %31, align 8
  store %struct.bnxt_rx_ring_info* %32, %struct.bnxt_rx_ring_info** %13, align 8
  %33 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %13, align 8
  %34 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %14, align 8
  %36 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %13, align 8
  %37 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %39 = load %struct.bnxt*, %struct.bnxt** %12, align 8
  %40 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %5
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 1, i32* %16, align 4
  br label %49

49:                                               ; preds = %48, %45, %5
  store i64 0, i64* %17, align 8
  br label %50

50:                                               ; preds = %150, %49
  %51 = load i64, i64* %17, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %153

54:                                               ; preds = %50
  %55 = load i32, i32* %16, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load %struct.bnxt*, %struct.bnxt** %12, align 8
  %59 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %13, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %17, align 8
  %63 = add nsw i64 %61, %62
  %64 = call %struct.rx_agg_cmp* @bnxt_get_tpa_agg_p5(%struct.bnxt* %58, %struct.bnxt_rx_ring_info* %59, i64 %60, i64 %63)
  store %struct.rx_agg_cmp* %64, %struct.rx_agg_cmp** %19, align 8
  br label %73

65:                                               ; preds = %54
  %66 = load %struct.bnxt*, %struct.bnxt** %12, align 8
  %67 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %6, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %17, align 8
  %71 = add nsw i64 %69, %70
  %72 = call %struct.rx_agg_cmp* @bnxt_get_agg(%struct.bnxt* %66, %struct.bnxt_cp_ring_info* %67, i64 %68, i64 %71)
  store %struct.rx_agg_cmp* %72, %struct.rx_agg_cmp** %19, align 8
  br label %73

73:                                               ; preds = %65, %57
  %74 = load %struct.rx_agg_cmp*, %struct.rx_agg_cmp** %19, align 8
  %75 = getelementptr inbounds %struct.rx_agg_cmp, %struct.rx_agg_cmp* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %18, align 8
  %77 = load i64, i64* %18, align 8
  %78 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %13, align 8
  %79 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @__clear_bit(i64 %77, i32 %80)
  %82 = load i64, i64* %15, align 8
  %83 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %13, align 8
  %84 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @test_bit(i64 %82, i32 %85)
  %87 = call i64 @unlikely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %73
  %90 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %13, align 8
  %91 = load i64, i64* %15, align 8
  %92 = call i64 @bnxt_find_next_agg_idx(%struct.bnxt_rx_ring_info* %90, i64 %91)
  store i64 %92, i64* %15, align 8
  br label %93

93:                                               ; preds = %89, %73
  %94 = load i64, i64* %15, align 8
  %95 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %13, align 8
  %96 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @__set_bit(i64 %94, i32 %97)
  %99 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %13, align 8
  %100 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %99, i32 0, i32 3
  %101 = load %struct.bnxt_sw_rx_agg_bd*, %struct.bnxt_sw_rx_agg_bd** %100, align 8
  %102 = load i64, i64* %15, align 8
  %103 = getelementptr inbounds %struct.bnxt_sw_rx_agg_bd, %struct.bnxt_sw_rx_agg_bd* %101, i64 %102
  store %struct.bnxt_sw_rx_agg_bd* %103, %struct.bnxt_sw_rx_agg_bd** %21, align 8
  %104 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %13, align 8
  %105 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %104, i32 0, i32 3
  %106 = load %struct.bnxt_sw_rx_agg_bd*, %struct.bnxt_sw_rx_agg_bd** %105, align 8
  %107 = load i64, i64* %18, align 8
  %108 = getelementptr inbounds %struct.bnxt_sw_rx_agg_bd, %struct.bnxt_sw_rx_agg_bd* %106, i64 %107
  store %struct.bnxt_sw_rx_agg_bd* %108, %struct.bnxt_sw_rx_agg_bd** %20, align 8
  %109 = load %struct.bnxt_sw_rx_agg_bd*, %struct.bnxt_sw_rx_agg_bd** %20, align 8
  %110 = getelementptr inbounds %struct.bnxt_sw_rx_agg_bd, %struct.bnxt_sw_rx_agg_bd* %109, i32 0, i32 2
  %111 = load %struct.page*, %struct.page** %110, align 8
  store %struct.page* %111, %struct.page** %23, align 8
  %112 = load %struct.bnxt_sw_rx_agg_bd*, %struct.bnxt_sw_rx_agg_bd** %20, align 8
  %113 = getelementptr inbounds %struct.bnxt_sw_rx_agg_bd, %struct.bnxt_sw_rx_agg_bd* %112, i32 0, i32 2
  store %struct.page* null, %struct.page** %113, align 8
  %114 = load %struct.page*, %struct.page** %23, align 8
  %115 = load %struct.bnxt_sw_rx_agg_bd*, %struct.bnxt_sw_rx_agg_bd** %21, align 8
  %116 = getelementptr inbounds %struct.bnxt_sw_rx_agg_bd, %struct.bnxt_sw_rx_agg_bd* %115, i32 0, i32 2
  store %struct.page* %114, %struct.page** %116, align 8
  %117 = load %struct.bnxt_sw_rx_agg_bd*, %struct.bnxt_sw_rx_agg_bd** %20, align 8
  %118 = getelementptr inbounds %struct.bnxt_sw_rx_agg_bd, %struct.bnxt_sw_rx_agg_bd* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.bnxt_sw_rx_agg_bd*, %struct.bnxt_sw_rx_agg_bd** %21, align 8
  %121 = getelementptr inbounds %struct.bnxt_sw_rx_agg_bd, %struct.bnxt_sw_rx_agg_bd* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load %struct.bnxt_sw_rx_agg_bd*, %struct.bnxt_sw_rx_agg_bd** %20, align 8
  %123 = getelementptr inbounds %struct.bnxt_sw_rx_agg_bd, %struct.bnxt_sw_rx_agg_bd* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.bnxt_sw_rx_agg_bd*, %struct.bnxt_sw_rx_agg_bd** %21, align 8
  %126 = getelementptr inbounds %struct.bnxt_sw_rx_agg_bd, %struct.bnxt_sw_rx_agg_bd* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %13, align 8
  %128 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %127, i32 0, i32 2
  %129 = load %struct.rx_bd**, %struct.rx_bd*** %128, align 8
  %130 = load i64, i64* %14, align 8
  %131 = call i64 @RX_RING(i64 %130)
  %132 = getelementptr inbounds %struct.rx_bd*, %struct.rx_bd** %129, i64 %131
  %133 = load %struct.rx_bd*, %struct.rx_bd** %132, align 8
  %134 = load i64, i64* %14, align 8
  %135 = call i64 @RX_IDX(i64 %134)
  %136 = getelementptr inbounds %struct.rx_bd, %struct.rx_bd* %133, i64 %135
  store %struct.rx_bd* %136, %struct.rx_bd** %22, align 8
  %137 = load %struct.bnxt_sw_rx_agg_bd*, %struct.bnxt_sw_rx_agg_bd** %20, align 8
  %138 = getelementptr inbounds %struct.bnxt_sw_rx_agg_bd, %struct.bnxt_sw_rx_agg_bd* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @cpu_to_le64(i32 %139)
  %141 = load %struct.rx_bd*, %struct.rx_bd** %22, align 8
  %142 = getelementptr inbounds %struct.rx_bd, %struct.rx_bd* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 8
  %143 = load i64, i64* %15, align 8
  %144 = load %struct.rx_bd*, %struct.rx_bd** %22, align 8
  %145 = getelementptr inbounds %struct.rx_bd, %struct.rx_bd* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  %146 = load i64, i64* %14, align 8
  %147 = call i64 @NEXT_RX_AGG(i64 %146)
  store i64 %147, i64* %14, align 8
  %148 = load i64, i64* %15, align 8
  %149 = call i64 @NEXT_RX_AGG(i64 %148)
  store i64 %149, i64* %15, align 8
  br label %150

150:                                              ; preds = %93
  %151 = load i64, i64* %17, align 8
  %152 = add nsw i64 %151, 1
  store i64 %152, i64* %17, align 8
  br label %50

153:                                              ; preds = %50
  %154 = load i64, i64* %14, align 8
  %155 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %13, align 8
  %156 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  %157 = load i64, i64* %15, align 8
  %158 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %13, align 8
  %159 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %158, i32 0, i32 1
  store i64 %157, i64* %159, align 8
  ret void
}

declare dso_local %struct.rx_agg_cmp* @bnxt_get_tpa_agg_p5(%struct.bnxt*, %struct.bnxt_rx_ring_info*, i64, i64) #1

declare dso_local %struct.rx_agg_cmp* @bnxt_get_agg(%struct.bnxt*, %struct.bnxt_cp_ring_info*, i64, i64) #1

declare dso_local i32 @__clear_bit(i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i64, i32) #1

declare dso_local i64 @bnxt_find_next_agg_idx(%struct.bnxt_rx_ring_info*, i64) #1

declare dso_local i32 @__set_bit(i64, i32) #1

declare dso_local i64 @RX_RING(i64) #1

declare dso_local i64 @RX_IDX(i64) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i64 @NEXT_RX_AGG(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
