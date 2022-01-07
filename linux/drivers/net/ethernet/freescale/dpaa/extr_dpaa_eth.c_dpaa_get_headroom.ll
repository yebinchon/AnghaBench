; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_get_headroom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_get_headroom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa_buffer_layout = type { i64 }

@DPAA_PARSE_RESULTS_SIZE = common dso_local global i64 0, align 8
@DPAA_TIME_STAMP_SIZE = common dso_local global i64 0, align 8
@DPAA_HASH_RESULTS_SIZE = common dso_local global i64 0, align 8
@DPAA_FD_DATA_ALIGNMENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dpaa_buffer_layout*)* @dpaa_get_headroom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dpaa_get_headroom(%struct.dpaa_buffer_layout* %0) #0 {
  %2 = alloca %struct.dpaa_buffer_layout*, align 8
  %3 = alloca i64, align 8
  store %struct.dpaa_buffer_layout* %0, %struct.dpaa_buffer_layout** %2, align 8
  %4 = load %struct.dpaa_buffer_layout*, %struct.dpaa_buffer_layout** %2, align 8
  %5 = getelementptr inbounds %struct.dpaa_buffer_layout, %struct.dpaa_buffer_layout* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @DPAA_PARSE_RESULTS_SIZE, align 8
  %8 = add nsw i64 %6, %7
  %9 = load i64, i64* @DPAA_TIME_STAMP_SIZE, align 8
  %10 = add nsw i64 %8, %9
  %11 = load i64, i64* @DPAA_HASH_RESULTS_SIZE, align 8
  %12 = add nsw i64 %10, %11
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* @DPAA_FD_DATA_ALIGNMENT, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @DPAA_FD_DATA_ALIGNMENT, align 8
  %18 = call i64 @ALIGN(i64 %16, i64 %17)
  br label %21

19:                                               ; preds = %1
  %20 = load i64, i64* %3, align 8
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi i64 [ %18, %15 ], [ %20, %19 ]
  ret i64 %22
}

declare dso_local i64 @ALIGN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
