; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_profile_read_perf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_profile_read_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { %struct.mmc_test_area }
%struct.mmc_test_area = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_test_card*)* @mmc_test_profile_read_perf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test_profile_read_perf(%struct.mmc_test_card* %0) #0 {
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
  store i64 512, i64* %5, align 8
  br label %10

10:                                               ; preds = %33, %1
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.mmc_test_area*, %struct.mmc_test_area** %4, align 8
  %13 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %10
  %17 = load %struct.mmc_test_area*, %struct.mmc_test_area** %4, align 8
  %18 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = lshr i64 %20, 9
  %22 = add i64 %19, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %6, align 4
  %24 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @mmc_test_area_io(%struct.mmc_test_card* %24, i64 %25, i32 %26, i32 0, i32 0, i32 1)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %16
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %48

32:                                               ; preds = %16
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %5, align 8
  %35 = shl i64 %34, 1
  store i64 %35, i64* %5, align 8
  br label %10

36:                                               ; preds = %10
  %37 = load %struct.mmc_test_area*, %struct.mmc_test_area** %4, align 8
  %38 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %5, align 8
  %40 = load %struct.mmc_test_area*, %struct.mmc_test_area** %4, align 8
  %41 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %6, align 4
  %44 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @mmc_test_area_io(%struct.mmc_test_card* %44, i64 %45, i32 %46, i32 0, i32 0, i32 1)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %36, %30
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @mmc_test_area_io(%struct.mmc_test_card*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
