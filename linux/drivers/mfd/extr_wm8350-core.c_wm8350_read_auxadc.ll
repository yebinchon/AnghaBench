; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_wm8350-core.c_wm8350_read_auxadc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_wm8350-core.c_wm8350_read_auxadc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350 = type { i32, i32, i32 }

@WM8350_AUXADC_AUX1 = common dso_local global i32 0, align 4
@WM8350_AUXADC_TEMP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WM8350_AUXADC_USB = common dso_local global i32 0, align 4
@WM8350_POWER_MGMT_5 = common dso_local global i64 0, align 8
@WM8350_AUXADC_ENA = common dso_local global i32 0, align 4
@WM8350_AUX1_READBACK = common dso_local global i64 0, align 8
@WM8350_DIGITISER_CONTROL_1 = common dso_local global i64 0, align 8
@WM8350_AUXADC_POLL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"adc chn %d read timeout\0A\00", align 1
@WM8350_AUXADC_DATA1_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm8350_read_auxadc(%struct.wm8350* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8350*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wm8350* %0, %struct.wm8350** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @WM8350_AUXADC_AUX1, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @WM8350_AUXADC_TEMP, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %129

22:                                               ; preds = %15
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @WM8350_AUXADC_USB, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @WM8350_AUXADC_TEMP, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33, %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %129

39:                                               ; preds = %33, %26, %22
  %40 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %41 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %44 = load i64, i64* @WM8350_POWER_MGMT_5, align 8
  %45 = call i32 @wm8350_reg_read(%struct.wm8350* %43, i64 %44)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %47 = load i64, i64* @WM8350_POWER_MGMT_5, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @WM8350_AUXADC_ENA, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @wm8350_reg_write(%struct.wm8350* %46, i64 %47, i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %39
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %54, %39
  %58 = load i32, i32* %8, align 4
  %59 = shl i32 %58, 13
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %9, align 4
  %61 = shl i32 %60, 12
  %62 = load i32, i32* %10, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %10, align 4
  %64 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %65 = load i64, i64* @WM8350_AUX1_READBACK, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %65, %67
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @wm8350_reg_write(%struct.wm8350* %64, i64 %68, i32 %69)
  br label %71

71:                                               ; preds = %57, %54
  %72 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %73 = load i64, i64* @WM8350_DIGITISER_CONTROL_1, align 8
  %74 = call i32 @wm8350_reg_read(%struct.wm8350* %72, i64 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %7, align 4
  %76 = shl i32 1, %75
  %77 = load i32, i32* @WM8350_AUXADC_POLL, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %10, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %10, align 4
  %81 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %82 = load i64, i64* @WM8350_DIGITISER_CONTROL_1, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @wm8350_reg_write(%struct.wm8350* %81, i64 %82, i32 %83)
  %85 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %86 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %85, i32 0, i32 2
  %87 = call i32 @try_wait_for_completion(i32* %86)
  %88 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %89 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %88, i32 0, i32 2
  %90 = call i32 @msecs_to_jiffies(i32 5)
  %91 = call i32 @wait_for_completion_timeout(i32* %89, i32 %90)
  %92 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %93 = load i64, i64* @WM8350_DIGITISER_CONTROL_1, align 8
  %94 = call i32 @wm8350_reg_read(%struct.wm8350* %92, i64 %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @WM8350_AUXADC_POLL, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %71
  %100 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %101 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @dev_err(i32 %102, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %103)
  br label %112

105:                                              ; preds = %71
  %106 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %107 = load i64, i64* @WM8350_AUX1_READBACK, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %107, %109
  %111 = call i32 @wm8350_reg_read(%struct.wm8350* %106, i64 %110)
  store i32 %111, i32* %11, align 4
  br label %112

112:                                              ; preds = %105, %99
  %113 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %114 = load i64, i64* @WM8350_POWER_MGMT_5, align 8
  %115 = call i32 @wm8350_reg_read(%struct.wm8350* %113, i64 %114)
  store i32 %115, i32* %10, align 4
  %116 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %117 = load i64, i64* @WM8350_POWER_MGMT_5, align 8
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @WM8350_AUXADC_ENA, align 4
  %120 = xor i32 %119, -1
  %121 = and i32 %118, %120
  %122 = call i32 @wm8350_reg_write(%struct.wm8350* %116, i64 %117, i32 %121)
  %123 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %124 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %123, i32 0, i32 0
  %125 = call i32 @mutex_unlock(i32* %124)
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* @WM8350_AUXADC_DATA1_MASK, align 4
  %128 = and i32 %126, %127
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %112, %36, %19
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wm8350_reg_read(%struct.wm8350*, i64) #1

declare dso_local i32 @wm8350_reg_write(%struct.wm8350*, i64, i32) #1

declare dso_local i32 @try_wait_for_completion(i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
