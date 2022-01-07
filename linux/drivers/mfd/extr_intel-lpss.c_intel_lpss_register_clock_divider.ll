; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_intel-lpss.c_intel_lpss_register_clock_divider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_intel-lpss.c_intel_lpss_register_clock_divider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_lpss = type { i32 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"%s-enable\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s-div\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s-update\00", align 1
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_lpss*, i8*, %struct.clk**)* @intel_lpss_register_clock_divider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_lpss_register_clock_divider(%struct.intel_lpss* %0, i8* %1, %struct.clk** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_lpss*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.clk**, align 8
  %8 = alloca [32 x i8], align 16
  %9 = alloca %struct.clk*, align 8
  store %struct.intel_lpss* %0, %struct.intel_lpss** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.clk** %2, %struct.clk*** %7, align 8
  %10 = load %struct.clk**, %struct.clk*** %7, align 8
  %11 = load %struct.clk*, %struct.clk** %10, align 8
  store %struct.clk* %11, %struct.clk** %9, align 8
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @snprintf(i8* %12, i32 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %16 = load %struct.clk*, %struct.clk** %9, align 8
  %17 = call i32 @__clk_get_name(%struct.clk* %16)
  %18 = load %struct.intel_lpss*, %struct.intel_lpss** %5, align 8
  %19 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.clk* @clk_register_gate(i32* null, i8* %15, i32 %17, i32 0, i32 %20, i32 0, i32 0, i32* null)
  store %struct.clk* %21, %struct.clk** %9, align 8
  %22 = load %struct.clk*, %struct.clk** %9, align 8
  %23 = call i64 @IS_ERR(%struct.clk* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.clk*, %struct.clk** %9, align 8
  %27 = call i32 @PTR_ERR(%struct.clk* %26)
  store i32 %27, i32* %4, align 4
  br label %68

28:                                               ; preds = %3
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @snprintf(i8* %29, i32 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %33 = load %struct.clk*, %struct.clk** %9, align 8
  %34 = call i32 @__clk_get_name(%struct.clk* %33)
  %35 = load %struct.intel_lpss*, %struct.intel_lpss** %5, align 8
  %36 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.clk* @clk_register_fractional_divider(i32* null, i8* %32, i32 %34, i32 0, i32 %37, i32 1, i32 15, i32 16, i32 15, i32 0, i32* null)
  store %struct.clk* %38, %struct.clk** %9, align 8
  %39 = load %struct.clk*, %struct.clk** %9, align 8
  %40 = call i64 @IS_ERR(%struct.clk* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %28
  %43 = load %struct.clk*, %struct.clk** %9, align 8
  %44 = call i32 @PTR_ERR(%struct.clk* %43)
  store i32 %44, i32* %4, align 4
  br label %68

45:                                               ; preds = %28
  %46 = load %struct.clk*, %struct.clk** %9, align 8
  %47 = load %struct.clk**, %struct.clk*** %7, align 8
  store %struct.clk* %46, %struct.clk** %47, align 8
  %48 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @snprintf(i8* %48, i32 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %52 = load %struct.clk*, %struct.clk** %9, align 8
  %53 = call i32 @__clk_get_name(%struct.clk* %52)
  %54 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %55 = load %struct.intel_lpss*, %struct.intel_lpss** %5, align 8
  %56 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.clk* @clk_register_gate(i32* null, i8* %51, i32 %53, i32 %54, i32 %57, i32 31, i32 0, i32* null)
  store %struct.clk* %58, %struct.clk** %9, align 8
  %59 = load %struct.clk*, %struct.clk** %9, align 8
  %60 = call i64 @IS_ERR(%struct.clk* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %45
  %63 = load %struct.clk*, %struct.clk** %9, align 8
  %64 = call i32 @PTR_ERR(%struct.clk* %63)
  store i32 %64, i32* %4, align 4
  br label %68

65:                                               ; preds = %45
  %66 = load %struct.clk*, %struct.clk** %9, align 8
  %67 = load %struct.clk**, %struct.clk*** %7, align 8
  store %struct.clk* %66, %struct.clk** %67, align 8
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %65, %62, %42, %25
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local %struct.clk* @clk_register_gate(i32*, i8*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @__clk_get_name(%struct.clk*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local %struct.clk* @clk_register_fractional_divider(i32*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
