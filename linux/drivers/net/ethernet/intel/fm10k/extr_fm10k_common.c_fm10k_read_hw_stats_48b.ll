; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_common.c_fm10k_read_hw_stats_48b.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_common.c_fm10k_read_hw_stats_48b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { i32 }
%struct.fm10k_hw_stat = type { i64, i64 }

@FM10K_48_BIT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_hw*, i64, %struct.fm10k_hw_stat*)* @fm10k_read_hw_stats_48b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_read_hw_stats_48b(%struct.fm10k_hw* %0, i64 %1, %struct.fm10k_hw_stat* %2) #0 {
  %4 = alloca %struct.fm10k_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fm10k_hw_stat*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.fm10k_hw_stat* %2, %struct.fm10k_hw_stat** %6, align 8
  %11 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = add nsw i64 %12, 1
  %14 = call i64 @fm10k_read_reg(%struct.fm10k_hw* %11, i64 %13)
  store i64 %14, i64* %8, align 8
  br label %15

15:                                               ; preds = %24, %3
  %16 = load i64, i64* %8, align 8
  store i64 %16, i64* %9, align 8
  %17 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @fm10k_read_reg(%struct.fm10k_hw* %17, i64 %18)
  store i64 %19, i64* %7, align 8
  %20 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = add nsw i64 %21, 1
  %23 = call i64 @fm10k_read_reg(%struct.fm10k_hw* %20, i64 %22)
  store i64 %23, i64* %8, align 8
  br label %24

24:                                               ; preds = %15
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %15, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.fm10k_hw_stat*, %struct.fm10k_hw_stat** %6, align 8
  %31 = getelementptr inbounds %struct.fm10k_hw_stat, %struct.fm10k_hw_stat* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %29, %32
  %34 = trunc i64 %33 to i32
  %35 = shl i32 %34, 32
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %7, align 8
  %38 = add nsw i64 %36, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %10, align 4
  %40 = load %struct.fm10k_hw_stat*, %struct.fm10k_hw_stat** %6, align 8
  %41 = getelementptr inbounds %struct.fm10k_hw_stat, %struct.fm10k_hw_stat* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @FM10K_48_BIT_MASK, align 4
  %49 = and i32 %47, %48
  ret i32 %49
}

declare dso_local i64 @fm10k_read_reg(%struct.fm10k_hw*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
