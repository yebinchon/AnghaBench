; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_seq_write_perf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_seq_write_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { %struct.mmc_test_area }
%struct.mmc_test_area = type { i64, i32 }
%struct.timespec64 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_test_card*, i64)* @mmc_test_seq_write_perf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test_seq_write_perf(%struct.mmc_test_card* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_test_card*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mmc_test_area*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.timespec64, align 4
  %11 = alloca %struct.timespec64, align 4
  %12 = alloca i32, align 4
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.mmc_test_card*, %struct.mmc_test_card** %4, align 8
  %14 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %13, i32 0, i32 0
  store %struct.mmc_test_area* %14, %struct.mmc_test_area** %6, align 8
  %15 = load %struct.mmc_test_card*, %struct.mmc_test_card** %4, align 8
  %16 = call i32 @mmc_test_area_erase(%struct.mmc_test_card* %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %3, align 4
  br label %61

21:                                               ; preds = %2
  %22 = load %struct.mmc_test_area*, %struct.mmc_test_area** %6, align 8
  %23 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = udiv i64 %24, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load %struct.mmc_test_area*, %struct.mmc_test_area** %6, align 8
  %29 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %7, align 4
  %31 = call i32 @ktime_get_ts64(%struct.timespec64* %10)
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %52, %21
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %32
  %37 = load %struct.mmc_test_card*, %struct.mmc_test_card** %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @mmc_test_area_io(%struct.mmc_test_card* %37, i64 %38, i32 %39, i32 1, i32 0, i32 0)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %3, align 4
  br label %61

45:                                               ; preds = %36
  %46 = load i64, i64* %5, align 8
  %47 = lshr i64 %46, 9
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = add i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %8, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %32

55:                                               ; preds = %32
  %56 = call i32 @ktime_get_ts64(%struct.timespec64* %11)
  %57 = load %struct.mmc_test_card*, %struct.mmc_test_card** %4, align 8
  %58 = load i64, i64* %5, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @mmc_test_print_avg_rate(%struct.mmc_test_card* %57, i64 %58, i32 %59, %struct.timespec64* %10, %struct.timespec64* %11)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %55, %43, %19
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @mmc_test_area_erase(%struct.mmc_test_card*) #1

declare dso_local i32 @ktime_get_ts64(%struct.timespec64*) #1

declare dso_local i32 @mmc_test_area_io(%struct.mmc_test_card*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @mmc_test_print_avg_rate(%struct.mmc_test_card*, i64, i32, %struct.timespec64*, %struct.timespec64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
