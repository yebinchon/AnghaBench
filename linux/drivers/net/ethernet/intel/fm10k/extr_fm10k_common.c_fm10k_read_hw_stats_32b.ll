; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_common.c_fm10k_read_hw_stats_32b.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_common.c_fm10k_read_hw_stats_32b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { i32 }
%struct.fm10k_hw_stat = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fm10k_read_hw_stats_32b(%struct.fm10k_hw* %0, i64 %1, %struct.fm10k_hw_stat* %2) #0 {
  %4 = alloca %struct.fm10k_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fm10k_hw_stat*, align 8
  %7 = alloca i64, align 8
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.fm10k_hw_stat* %2, %struct.fm10k_hw_stat** %6, align 8
  %8 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @fm10k_read_reg(%struct.fm10k_hw* %8, i64 %9)
  %11 = load %struct.fm10k_hw_stat*, %struct.fm10k_hw_stat** %6, align 8
  %12 = getelementptr inbounds %struct.fm10k_hw_stat, %struct.fm10k_hw_stat* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %10, %13
  store i64 %14, i64* %7, align 8
  %15 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %16 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @FM10K_REMOVED(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.fm10k_hw_stat*, %struct.fm10k_hw_stat** %6, align 8
  %22 = getelementptr inbounds %struct.fm10k_hw_stat, %struct.fm10k_hw_stat* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %20, %3
  %24 = load i64, i64* %7, align 8
  ret i64 %24
}

declare dso_local i64 @fm10k_read_reg(%struct.fm10k_hw*, i64) #1

declare dso_local i64 @FM10K_REMOVED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
