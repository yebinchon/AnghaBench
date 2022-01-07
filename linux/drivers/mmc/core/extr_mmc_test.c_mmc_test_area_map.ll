; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_area_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_area_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { %struct.TYPE_2__*, %struct.mmc_test_area }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_test_area = type { i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"%s: Failed to map sg list\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_test_card*, i64, i32, i32)* @mmc_test_area_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test_area_map(%struct.mmc_test_card* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mmc_test_card*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mmc_test_area*, align 8
  %10 = alloca i32, align 4
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.mmc_test_card*, %struct.mmc_test_card** %5, align 8
  %12 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %11, i32 0, i32 1
  store %struct.mmc_test_area* %12, %struct.mmc_test_area** %9, align 8
  %13 = load i64, i64* %6, align 8
  %14 = lshr i64 %13, 9
  %15 = load %struct.mmc_test_area*, %struct.mmc_test_area** %9, align 8
  %16 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %4
  %20 = load %struct.mmc_test_area*, %struct.mmc_test_area** %9, align 8
  %21 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.mmc_test_area*, %struct.mmc_test_area** %9, align 8
  %25 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mmc_test_area*, %struct.mmc_test_area** %9, align 8
  %28 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.mmc_test_area*, %struct.mmc_test_area** %9, align 8
  %31 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mmc_test_area*, %struct.mmc_test_area** %9, align 8
  %34 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %33, i32 0, i32 1
  %35 = call i32 @mmc_test_map_sg_max_scatter(i32 %22, i64 %23, i32 %26, i32 %29, i32 %32, i32* %34)
  store i32 %35, i32* %10, align 4
  br label %54

36:                                               ; preds = %4
  %37 = load %struct.mmc_test_area*, %struct.mmc_test_area** %9, align 8
  %38 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.mmc_test_area*, %struct.mmc_test_area** %9, align 8
  %42 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mmc_test_area*, %struct.mmc_test_area** %9, align 8
  %45 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.mmc_test_area*, %struct.mmc_test_area** %9, align 8
  %48 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mmc_test_area*, %struct.mmc_test_area** %9, align 8
  %51 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %50, i32 0, i32 1
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @mmc_test_map_sg(i32 %39, i64 %40, i32 %43, i32 1, i32 %46, i32 %49, i32* %51, i32 %52)
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %36, %19
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load %struct.mmc_test_card*, %struct.mmc_test_card** %5, align 8
  %59 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @mmc_hostname(i32 %62)
  %64 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %57, %54
  %66 = load i32, i32* %10, align 4
  ret i32 %66
}

declare dso_local i32 @mmc_test_map_sg_max_scatter(i32, i64, i32, i32, i32, i32*) #1

declare dso_local i32 @mmc_test_map_sg(i32, i64, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
