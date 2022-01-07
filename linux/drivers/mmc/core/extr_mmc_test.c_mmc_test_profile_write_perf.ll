; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_profile_write_perf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_profile_write_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { %struct.mmc_test_area }
%struct.mmc_test_area = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_test_card*)* @mmc_test_profile_write_perf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test_profile_write_perf(%struct.mmc_test_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_test_card*, align 8
  %4 = alloca %struct.mmc_test_area*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %3, align 8
  %8 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %9 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %8, i32 0, i32 0
  store %struct.mmc_test_area* %9, %struct.mmc_test_area** %4, align 8
  %10 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %11 = call i32 @mmc_test_area_erase(%struct.mmc_test_card* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %2, align 4
  br label %62

16:                                               ; preds = %1
  store i64 512, i64* %5, align 8
  br label %17

17:                                               ; preds = %40, %16
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.mmc_test_area*, %struct.mmc_test_area** %4, align 8
  %20 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %17
  %24 = load %struct.mmc_test_area*, %struct.mmc_test_area** %4, align 8
  %25 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = lshr i64 %27, 9
  %29 = add i64 %26, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %6, align 4
  %31 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @mmc_test_area_io(%struct.mmc_test_card* %31, i64 %32, i32 %33, i32 1, i32 0, i32 1)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %23
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %2, align 4
  br label %62

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %5, align 8
  %42 = shl i64 %41, 1
  store i64 %42, i64* %5, align 8
  br label %17

43:                                               ; preds = %17
  %44 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %45 = call i32 @mmc_test_area_erase(%struct.mmc_test_card* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %2, align 4
  br label %62

50:                                               ; preds = %43
  %51 = load %struct.mmc_test_area*, %struct.mmc_test_area** %4, align 8
  %52 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %5, align 8
  %54 = load %struct.mmc_test_area*, %struct.mmc_test_area** %4, align 8
  %55 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %6, align 4
  %58 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %59 = load i64, i64* %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @mmc_test_area_io(%struct.mmc_test_card* %58, i64 %59, i32 %60, i32 1, i32 0, i32 1)
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %50, %48, %37, %14
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @mmc_test_area_erase(%struct.mmc_test_card*) #1

declare dso_local i32 @mmc_test_area_io(%struct.mmc_test_card*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
