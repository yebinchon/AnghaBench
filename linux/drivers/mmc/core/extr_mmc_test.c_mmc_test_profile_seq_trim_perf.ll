; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_profile_seq_trim_perf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_profile_seq_trim_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { i32, %struct.mmc_test_area }
%struct.mmc_test_area = type { i64, i32 }
%struct.timespec64 = type { i32 }

@RESULT_UNSUP_CARD = common dso_local global i32 0, align 4
@RESULT_UNSUP_HOST = common dso_local global i32 0, align 4
@MMC_TRIM_ARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_test_card*)* @mmc_test_profile_seq_trim_perf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test_profile_seq_trim_perf(%struct.mmc_test_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_test_card*, align 8
  %4 = alloca %struct.mmc_test_area*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timespec64, align 4
  %10 = alloca %struct.timespec64, align 4
  %11 = alloca i32, align 4
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %3, align 8
  %12 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %13 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %12, i32 0, i32 1
  store %struct.mmc_test_area* %13, %struct.mmc_test_area** %4, align 8
  %14 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %15 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @mmc_can_trim(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @RESULT_UNSUP_CARD, align 4
  store i32 %20, i32* %2, align 4
  br label %98

21:                                               ; preds = %1
  %22 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %23 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @mmc_can_erase(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @RESULT_UNSUP_HOST, align 4
  store i32 %28, i32* %2, align 4
  br label %98

29:                                               ; preds = %21
  store i64 512, i64* %5, align 8
  br label %30

30:                                               ; preds = %94, %29
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.mmc_test_area*, %struct.mmc_test_area** %4, align 8
  %33 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ule i64 %31, %34
  br i1 %35, label %36, label %97

36:                                               ; preds = %30
  %37 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %38 = call i32 @mmc_test_area_erase(%struct.mmc_test_card* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %2, align 4
  br label %98

43:                                               ; preds = %36
  %44 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %45 = call i32 @mmc_test_area_fill(%struct.mmc_test_card* %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %2, align 4
  br label %98

50:                                               ; preds = %43
  %51 = load %struct.mmc_test_area*, %struct.mmc_test_area** %4, align 8
  %52 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = udiv i64 %53, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %8, align 4
  %57 = load %struct.mmc_test_area*, %struct.mmc_test_area** %4, align 8
  %58 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %6, align 4
  %60 = call i32 @ktime_get_ts64(%struct.timespec64* %9)
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %85, %50
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %61
  %66 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %67 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i64, i64* %5, align 8
  %71 = lshr i64 %70, 9
  %72 = load i32, i32* @MMC_TRIM_ARG, align 4
  %73 = call i32 @mmc_erase(i32 %68, i32 %69, i64 %71, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %65
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %2, align 4
  br label %98

78:                                               ; preds = %65
  %79 = load i64, i64* %5, align 8
  %80 = lshr i64 %79, 9
  %81 = load i32, i32* %6, align 4
  %82 = zext i32 %81 to i64
  %83 = add i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %7, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %61

88:                                               ; preds = %61
  %89 = call i32 @ktime_get_ts64(%struct.timespec64* %10)
  %90 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %91 = load i64, i64* %5, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @mmc_test_print_avg_rate(%struct.mmc_test_card* %90, i64 %91, i32 %92, %struct.timespec64* %9, %struct.timespec64* %10)
  br label %94

94:                                               ; preds = %88
  %95 = load i64, i64* %5, align 8
  %96 = shl i64 %95, 1
  store i64 %96, i64* %5, align 8
  br label %30

97:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %76, %48, %41, %27, %19
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @mmc_can_trim(i32) #1

declare dso_local i32 @mmc_can_erase(i32) #1

declare dso_local i32 @mmc_test_area_erase(%struct.mmc_test_card*) #1

declare dso_local i32 @mmc_test_area_fill(%struct.mmc_test_card*) #1

declare dso_local i32 @ktime_get_ts64(%struct.timespec64*) #1

declare dso_local i32 @mmc_erase(i32, i32, i64, i32) #1

declare dso_local i32 @mmc_test_print_avg_rate(%struct.mmc_test_card*, i64, i32, %struct.timespec64*, %struct.timespec64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
