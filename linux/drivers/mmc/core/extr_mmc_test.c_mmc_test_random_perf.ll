; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_random_perf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_random_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { %struct.mmc_test_area }
%struct.mmc_test_area = type { i64 }

@rnd_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_test_card*, i32)* @mmc_test_random_perf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test_random_perf(%struct.mmc_test_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_test_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_test_area*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.mmc_test_card*, %struct.mmc_test_card** %4, align 8
  %11 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %10, i32 0, i32 0
  store %struct.mmc_test_area* %11, %struct.mmc_test_area** %6, align 8
  store i64 512, i64* %8, align 8
  br label %12

12:                                               ; preds = %43, %2
  %13 = load i64, i64* %8, align 8
  %14 = load %struct.mmc_test_area*, %struct.mmc_test_area** %6, align 8
  %15 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load i32, i32* @rnd_next, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.mmc_test_card*, %struct.mmc_test_card** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @mmc_test_rnd_perf(%struct.mmc_test_card* %23, i32 %24, i32 0, i64 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %3, align 4
  br label %69

31:                                               ; preds = %21
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* @rnd_next, align 4
  br label %33

33:                                               ; preds = %31, %18
  %34 = load %struct.mmc_test_card*, %struct.mmc_test_card** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @mmc_test_rnd_perf(%struct.mmc_test_card* %34, i32 %35, i32 1, i64 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %3, align 4
  br label %69

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %8, align 8
  %45 = shl i64 %44, 1
  store i64 %45, i64* %8, align 8
  br label %12

46:                                               ; preds = %12
  %47 = load %struct.mmc_test_area*, %struct.mmc_test_area** %6, align 8
  %48 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %8, align 8
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = load i32, i32* @rnd_next, align 4
  store i32 %53, i32* %7, align 4
  %54 = load %struct.mmc_test_card*, %struct.mmc_test_card** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @mmc_test_rnd_perf(%struct.mmc_test_card* %54, i32 %55, i32 0, i64 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %3, align 4
  br label %69

62:                                               ; preds = %52
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* @rnd_next, align 4
  br label %64

64:                                               ; preds = %62, %46
  %65 = load %struct.mmc_test_card*, %struct.mmc_test_card** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @mmc_test_rnd_perf(%struct.mmc_test_card* %65, i32 %66, i32 1, i64 %67)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %64, %60, %40, %29
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @mmc_test_rnd_perf(%struct.mmc_test_card*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
