; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-gpadc.c_ab8500_gpadc_sw_hw_convert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-gpadc.c_ab8500_gpadc_sw_hw_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_gpadc = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"GPADC raw value failed ch: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"GPADC to voltage conversion failed ch: %d AD: 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ab8500_gpadc_sw_hw_convert(%struct.ab8500_gpadc* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ab8500_gpadc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ab8500_gpadc* %0, %struct.ab8500_gpadc** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %13, align 4
  %22 = call i32 @ab8500_gpadc_read_raw(%struct.ab8500_gpadc* %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %6
  %26 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @ab8500_gpadc_read_raw(%struct.ab8500_gpadc* %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %14, align 4
  br label %33

33:                                               ; preds = %25, %6
  %34 = load i32, i32* %14, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %8, align 8
  %38 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %14, align 4
  store i32 %42, i32* %7, align 4
  br label %59

43:                                               ; preds = %33
  %44 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @ab8500_gpadc_ad_to_voltage(%struct.ab8500_gpadc* %44, i32 %45, i32 %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %8, align 8
  %52 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %14, align 4
  %56 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %53, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %50, %43
  %58 = load i32, i32* %15, align 4
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %57, %36
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @ab8500_gpadc_read_raw(%struct.ab8500_gpadc*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @ab8500_gpadc_ad_to_voltage(%struct.ab8500_gpadc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
