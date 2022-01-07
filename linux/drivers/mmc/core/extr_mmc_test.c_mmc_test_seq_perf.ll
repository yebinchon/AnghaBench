; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_seq_perf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_seq_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { i32, %struct.mmc_test_area }
%struct.mmc_test_area = type { i32, i64, i64 }
%struct.timespec64 = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_test_card*, i32, i32, i32)* @mmc_test_seq_perf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test_seq_perf(%struct.mmc_test_card* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_test_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mmc_test_area*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.timespec64, align 4
  %17 = alloca %struct.timespec64, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load %struct.mmc_test_card*, %struct.mmc_test_card** %6, align 8
  %21 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %20, i32 0, i32 1
  store %struct.mmc_test_area* %21, %struct.mmc_test_area** %10, align 8
  %22 = load %struct.mmc_test_area*, %struct.mmc_test_area** %10, align 8
  %23 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %56

27:                                               ; preds = %4
  %28 = load %struct.mmc_test_area*, %struct.mmc_test_area** %10, align 8
  %29 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PAGE_SIZE, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.mmc_test_area*, %struct.mmc_test_area** %10, align 8
  %35 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PAGE_SIZE, align 8
  %38 = mul i64 %36, %37
  store i64 %38, i64* %19, align 8
  br label %47

39:                                               ; preds = %27
  %40 = load %struct.mmc_test_area*, %struct.mmc_test_area** %10, align 8
  %41 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.mmc_test_area*, %struct.mmc_test_area** %10, align 8
  %44 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = mul i64 %42, %45
  store i64 %46, i64* %19, align 8
  br label %47

47:                                               ; preds = %39, %33
  %48 = load i32, i32* %14, align 4
  %49 = zext i32 %48 to i64
  %50 = load i64, i64* %19, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i64, i64* %19, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %14, align 4
  br label %55

55:                                               ; preds = %52, %47
  br label %56

56:                                               ; preds = %55, %4
  %57 = load i32, i32* %14, align 4
  %58 = lshr i32 %57, 9
  store i32 %58, i32* %15, align 4
  %59 = load %struct.mmc_test_card*, %struct.mmc_test_card** %6, align 8
  %60 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @mmc_test_capacity(i32 %61)
  %63 = sdiv i32 %62, 4
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %11, align 4
  %66 = shl i32 %65, 9
  %67 = icmp ugt i32 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %56
  %69 = load i32, i32* %11, align 4
  %70 = shl i32 %69, 9
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %68, %56
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %14, align 4
  %74 = udiv i32 %72, %73
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %11, align 4
  %76 = and i32 %75, -65536
  store i32 %76, i32* %11, align 4
  %77 = call i32 @ktime_get_ts64(%struct.timespec64* %16)
  store i32 0, i32* %12, align 4
  br label %78

78:                                               ; preds = %97, %71
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %78
  %83 = load %struct.mmc_test_card*, %struct.mmc_test_card** %6, align 8
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @mmc_test_area_io(%struct.mmc_test_card* %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 0)
  store i32 %88, i32* %18, align 4
  %89 = load i32, i32* %18, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %82
  %92 = load i32, i32* %18, align 4
  store i32 %92, i32* %5, align 4
  br label %106

93:                                               ; preds = %82
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %11, align 4
  %96 = add i32 %95, %94
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %12, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %78

100:                                              ; preds = %78
  %101 = call i32 @ktime_get_ts64(%struct.timespec64* %17)
  %102 = load %struct.mmc_test_card*, %struct.mmc_test_card** %6, align 8
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %13, align 4
  %105 = call i32 @mmc_test_print_avg_rate(%struct.mmc_test_card* %102, i32 %103, i32 %104, %struct.timespec64* %16, %struct.timespec64* %17)
  store i32 0, i32* %5, align 4
  br label %106

106:                                              ; preds = %100, %91
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @mmc_test_capacity(i32) #1

declare dso_local i32 @ktime_get_ts64(%struct.timespec64*) #1

declare dso_local i32 @mmc_test_area_io(%struct.mmc_test_card*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mmc_test_print_avg_rate(%struct.mmc_test_card*, i32, i32, %struct.timespec64*, %struct.timespec64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
