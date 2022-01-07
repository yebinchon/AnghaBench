; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_intel-lpss.c_intel_lpss_register_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_intel-lpss.c_intel_lpss_register_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_lpss = type { i32, i64, %struct.clk*, i32, %struct.TYPE_2__*, i32, %struct.mfd_cell* }
%struct.clk = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mfd_cell = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@LPSS_DEV_I2C = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_lpss*)* @intel_lpss_register_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_lpss_register_clock(%struct.intel_lpss* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_lpss*, align 8
  %4 = alloca %struct.mfd_cell*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca [24 x i8], align 16
  %7 = alloca i32, align 4
  store %struct.intel_lpss* %0, %struct.intel_lpss** %3, align 8
  %8 = load %struct.intel_lpss*, %struct.intel_lpss** %3, align 8
  %9 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %8, i32 0, i32 6
  %10 = load %struct.mfd_cell*, %struct.mfd_cell** %9, align 8
  store %struct.mfd_cell* %10, %struct.mfd_cell** %4, align 8
  %11 = load %struct.intel_lpss*, %struct.intel_lpss** %3, align 8
  %12 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %11, i32 0, i32 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %83

18:                                               ; preds = %1
  %19 = load %struct.intel_lpss*, %struct.intel_lpss** %3, align 8
  %20 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dev_name(i32 %21)
  %23 = load %struct.intel_lpss*, %struct.intel_lpss** %3, align 8
  %24 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %23, i32 0, i32 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.clk* @clk_register_fixed_rate(i32* null, i32 %22, i32* null, i32 0, i32 %27)
  store %struct.clk* %28, %struct.clk** %5, align 8
  %29 = load %struct.clk*, %struct.clk** %5, align 8
  %30 = call i64 @IS_ERR(%struct.clk* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %18
  %33 = load %struct.clk*, %struct.clk** %5, align 8
  %34 = call i32 @PTR_ERR(%struct.clk* %33)
  store i32 %34, i32* %2, align 4
  br label %83

35:                                               ; preds = %18
  %36 = getelementptr inbounds [24 x i8], [24 x i8]* %6, i64 0, i64 0
  %37 = load %struct.mfd_cell*, %struct.mfd_cell** %4, align 8
  %38 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.intel_lpss*, %struct.intel_lpss** %3, align 8
  %41 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @snprintf(i8* %36, i32 24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %39, i32 %42)
  %44 = load %struct.intel_lpss*, %struct.intel_lpss** %3, align 8
  %45 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @LPSS_DEV_I2C, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %35
  %50 = load %struct.intel_lpss*, %struct.intel_lpss** %3, align 8
  %51 = getelementptr inbounds [24 x i8], [24 x i8]* %6, i64 0, i64 0
  %52 = call i32 @intel_lpss_register_clock_divider(%struct.intel_lpss* %50, i8* %51, %struct.clk** %5)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %79

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %35
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  %60 = load %struct.clk*, %struct.clk** %5, align 8
  %61 = load %struct.intel_lpss*, %struct.intel_lpss** %3, align 8
  %62 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %61, i32 0, i32 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds [24 x i8], [24 x i8]* %6, i64 0, i64 0
  %67 = call i32 @clkdev_create(%struct.clk* %60, i32 %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  %68 = load %struct.intel_lpss*, %struct.intel_lpss** %3, align 8
  %69 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  %70 = load %struct.intel_lpss*, %struct.intel_lpss** %3, align 8
  %71 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %57
  br label %79

75:                                               ; preds = %57
  %76 = load %struct.clk*, %struct.clk** %5, align 8
  %77 = load %struct.intel_lpss*, %struct.intel_lpss** %3, align 8
  %78 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %77, i32 0, i32 2
  store %struct.clk* %76, %struct.clk** %78, align 8
  store i32 0, i32* %2, align 4
  br label %83

79:                                               ; preds = %74, %55
  %80 = load %struct.clk*, %struct.clk** %5, align 8
  %81 = call i32 @intel_lpss_unregister_clock_tree(%struct.clk* %80)
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %79, %75, %32, %17
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.clk* @clk_register_fixed_rate(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @intel_lpss_register_clock_divider(%struct.intel_lpss*, i8*, %struct.clk**) #1

declare dso_local i32 @clkdev_create(%struct.clk*, i32, i8*, i8*) #1

declare dso_local i32 @intel_lpss_unregister_clock_tree(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
