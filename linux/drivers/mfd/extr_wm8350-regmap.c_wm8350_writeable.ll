; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_wm8350-regmap.c_wm8350_writeable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_wm8350-regmap.c_wm8350_writeable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.wm8350 = type { i32 }

@WM8350_GPIO_FUNCTION_SELECT_1 = common dso_local global i32 0, align 4
@WM8350_GPIO_FUNCTION_SELECT_4 = common dso_local global i32 0, align 4
@WM8350_BATTERY_CHARGER_CONTROL_1 = common dso_local global i32 0, align 4
@WM8350_BATTERY_CHARGER_CONTROL_3 = common dso_local global i32 0, align 4
@wm8350_reg_io_map = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @wm8350_writeable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_writeable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8350*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call %struct.wm8350* @dev_get_drvdata(%struct.device* %7)
  store %struct.wm8350* %8, %struct.wm8350** %6, align 8
  %9 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %10 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @WM8350_GPIO_FUNCTION_SELECT_1, align 4
  %16 = icmp uge i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @WM8350_GPIO_FUNCTION_SELECT_4, align 4
  %20 = icmp ule i32 %18, %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %17, %13
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @WM8350_BATTERY_CHARGER_CONTROL_1, align 4
  %24 = icmp uge i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @WM8350_BATTERY_CHARGER_CONTROL_3, align 4
  %28 = icmp ule i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %17
  store i32 0, i32* %3, align 4
  br label %38

30:                                               ; preds = %25, %21
  br label %31

31:                                               ; preds = %30, %2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wm8350_reg_io_map, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %31, %29
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.wm8350* @dev_get_drvdata(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
