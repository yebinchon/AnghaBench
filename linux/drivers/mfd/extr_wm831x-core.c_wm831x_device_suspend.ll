; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_wm831x-core.c_wm831x_device_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_wm831x-core.c_wm831x_device_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm831x = type { i32, i64 }

@WM831X_INTERRUPT_STATUS_2_MASK = common dso_local global i32 0, align 4
@WM831X_CHG_BATT_HOT_EINT = common dso_local global i32 0, align 4
@WM831X_CHG_BATT_COLD_EINT = common dso_local global i32 0, align 4
@WM831X_CHG_BATT_FAIL_EINT = common dso_local global i32 0, align 4
@WM831X_CHG_OV_EINT = common dso_local global i32 0, align 4
@WM831X_CHG_END_EINT = common dso_local global i32 0, align 4
@WM831X_CHG_TO_EINT = common dso_local global i32 0, align 4
@WM831X_CHG_MODE_EINT = common dso_local global i32 0, align 4
@WM831X_CHG_START_EINT = common dso_local global i32 0, align 4
@WM831X_INTERRUPT_STATUS_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Acknowledging masked charger IRQs: %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm831x_device_suspend(%struct.wm831x* %0) #0 {
  %2 = alloca %struct.wm831x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.wm831x* %0, %struct.wm831x** %2, align 8
  %5 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %6 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %56

9:                                                ; preds = %1
  %10 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %11 = load i32, i32* @WM831X_INTERRUPT_STATUS_2_MASK, align 4
  %12 = call i32 @wm831x_reg_read(%struct.wm831x* %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @WM831X_CHG_BATT_HOT_EINT, align 4
  %14 = load i32, i32* @WM831X_CHG_BATT_COLD_EINT, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @WM831X_CHG_BATT_FAIL_EINT, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @WM831X_CHG_OV_EINT, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @WM831X_CHG_END_EINT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @WM831X_CHG_TO_EINT, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @WM831X_CHG_MODE_EINT, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @WM831X_CHG_START_EINT, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %9
  %33 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %34 = load i32, i32* @WM831X_INTERRUPT_STATUS_2, align 4
  %35 = call i32 @wm831x_reg_read(%struct.wm831x* %33, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %9
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %43 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %45, %46
  %48 = call i32 @dev_info(i32 %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %50 = load i32, i32* @WM831X_INTERRUPT_STATUS_2, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %4, align 4
  %53 = and i32 %51, %52
  %54 = call i32 @wm831x_reg_write(%struct.wm831x* %49, i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %41, %36
  br label %56

56:                                               ; preds = %55, %1
  ret i32 0
}

declare dso_local i32 @wm831x_reg_read(%struct.wm831x*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @wm831x_reg_write(%struct.wm831x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
