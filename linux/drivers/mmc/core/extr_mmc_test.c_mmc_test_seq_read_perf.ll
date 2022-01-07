; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_seq_read_perf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_seq_read_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { %struct.mmc_test_area }
%struct.mmc_test_area = type { i64, i32 }
%struct.timespec64 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_test_card*, i64)* @mmc_test_seq_read_perf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test_seq_read_perf(%struct.mmc_test_card* %0, i64 %1) #0 {
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
  %15 = load %struct.mmc_test_area*, %struct.mmc_test_area** %6, align 8
  %16 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = udiv i64 %17, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %9, align 4
  %21 = load %struct.mmc_test_area*, %struct.mmc_test_area** %6, align 8
  %22 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %7, align 4
  %24 = call i32 @ktime_get_ts64(%struct.timespec64* %10)
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %45, %2
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %25
  %30 = load %struct.mmc_test_card*, %struct.mmc_test_card** %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @mmc_test_area_io(%struct.mmc_test_card* %30, i64 %31, i32 %32, i32 0, i32 0, i32 0)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %3, align 4
  br label %54

38:                                               ; preds = %29
  %39 = load i64, i64* %5, align 8
  %40 = lshr i64 %39, 9
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = add i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %8, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %25

48:                                               ; preds = %25
  %49 = call i32 @ktime_get_ts64(%struct.timespec64* %11)
  %50 = load %struct.mmc_test_card*, %struct.mmc_test_card** %4, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @mmc_test_print_avg_rate(%struct.mmc_test_card* %50, i64 %51, i32 %52, %struct.timespec64* %10, %struct.timespec64* %11)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %48, %36
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @ktime_get_ts64(%struct.timespec64*) #1

declare dso_local i32 @mmc_test_area_io(%struct.mmc_test_card*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @mmc_test_print_avg_rate(%struct.mmc_test_card*, i64, i32, %struct.timespec64*, %struct.timespec64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
