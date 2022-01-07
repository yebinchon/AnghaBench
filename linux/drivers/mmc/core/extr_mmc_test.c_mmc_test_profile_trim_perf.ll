; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_profile_trim_perf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_profile_trim_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { i32, %struct.mmc_test_area }
%struct.mmc_test_area = type { i64, i64 }
%struct.timespec64 = type { i32 }

@RESULT_UNSUP_CARD = common dso_local global i32 0, align 4
@RESULT_UNSUP_HOST = common dso_local global i32 0, align 4
@MMC_TRIM_ARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_test_card*)* @mmc_test_profile_trim_perf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test_profile_trim_perf(%struct.mmc_test_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_test_card*, align 8
  %4 = alloca %struct.mmc_test_area*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timespec64, align 4
  %8 = alloca %struct.timespec64, align 4
  %9 = alloca i32, align 4
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %3, align 8
  %10 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %11 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %10, i32 0, i32 1
  store %struct.mmc_test_area* %11, %struct.mmc_test_area** %4, align 8
  %12 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %13 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @mmc_can_trim(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @RESULT_UNSUP_CARD, align 4
  store i32 %18, i32* %2, align 4
  br label %86

19:                                               ; preds = %1
  %20 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %21 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @mmc_can_erase(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @RESULT_UNSUP_HOST, align 4
  store i32 %26, i32* %2, align 4
  br label %86

27:                                               ; preds = %19
  store i64 512, i64* %5, align 8
  br label %28

28:                                               ; preds = %60, %27
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.mmc_test_area*, %struct.mmc_test_area** %4, align 8
  %31 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %63

34:                                               ; preds = %28
  %35 = load %struct.mmc_test_area*, %struct.mmc_test_area** %4, align 8
  %36 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = lshr i64 %38, 9
  %40 = add i64 %37, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %6, align 4
  %42 = call i32 @ktime_get_ts64(%struct.timespec64* %7)
  %43 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %44 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i64, i64* %5, align 8
  %48 = lshr i64 %47, 9
  %49 = load i32, i32* @MMC_TRIM_ARG, align 4
  %50 = call i32 @mmc_erase(i32 %45, i32 %46, i64 %48, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %34
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %2, align 4
  br label %86

55:                                               ; preds = %34
  %56 = call i32 @ktime_get_ts64(%struct.timespec64* %8)
  %57 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @mmc_test_print_rate(%struct.mmc_test_card* %57, i64 %58, %struct.timespec64* %7, %struct.timespec64* %8)
  br label %60

60:                                               ; preds = %55
  %61 = load i64, i64* %5, align 8
  %62 = shl i64 %61, 1
  store i64 %62, i64* %5, align 8
  br label %28

63:                                               ; preds = %28
  %64 = load %struct.mmc_test_area*, %struct.mmc_test_area** %4, align 8
  %65 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %6, align 4
  %68 = call i32 @ktime_get_ts64(%struct.timespec64* %7)
  %69 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %70 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i64, i64* %5, align 8
  %74 = lshr i64 %73, 9
  %75 = load i32, i32* @MMC_TRIM_ARG, align 4
  %76 = call i32 @mmc_erase(i32 %71, i32 %72, i64 %74, i32 %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %63
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %2, align 4
  br label %86

81:                                               ; preds = %63
  %82 = call i32 @ktime_get_ts64(%struct.timespec64* %8)
  %83 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %84 = load i64, i64* %5, align 8
  %85 = call i32 @mmc_test_print_rate(%struct.mmc_test_card* %83, i64 %84, %struct.timespec64* %7, %struct.timespec64* %8)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %81, %79, %53, %25, %17
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @mmc_can_trim(i32) #1

declare dso_local i32 @mmc_can_erase(i32) #1

declare dso_local i32 @ktime_get_ts64(%struct.timespec64*) #1

declare dso_local i32 @mmc_erase(i32, i32, i64, i32) #1

declare dso_local i32 @mmc_test_print_rate(%struct.mmc_test_card*, i64, %struct.timespec64*, %struct.timespec64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
