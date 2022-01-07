; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_omap-usb-tll.c_omap_tll_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_omap-usb-tll.c_omap_tll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_omap_platform_data = type { i32* }
%struct.usbtll_omap = type { i32, i32* }

@tll_dev = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@tll_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Error enabling ch %d clock: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_tll_enable(%struct.usbhs_omap_platform_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbhs_omap_platform_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbtll_omap*, align 8
  %6 = alloca i32, align 4
  store %struct.usbhs_omap_platform_data* %0, %struct.usbhs_omap_platform_data** %3, align 8
  %7 = load i32, i32* @tll_dev, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %68

12:                                               ; preds = %1
  %13 = load i32, i32* @tll_dev, align 4
  %14 = call i32 @pm_runtime_get_sync(i32 %13)
  %15 = call i32 @spin_lock(i32* @tll_lock)
  %16 = load i32, i32* @tll_dev, align 4
  %17 = call %struct.usbtll_omap* @dev_get_drvdata(i32 %16)
  store %struct.usbtll_omap* %17, %struct.usbtll_omap** %5, align 8
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %63, %12
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.usbtll_omap*, %struct.usbtll_omap** %5, align 8
  %21 = getelementptr inbounds %struct.usbtll_omap, %struct.usbtll_omap* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %66

24:                                               ; preds = %18
  %25 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %3, align 8
  %26 = getelementptr inbounds %struct.usbhs_omap_platform_data, %struct.usbhs_omap_platform_data* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @omap_usb_mode_needs_tll(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %62

34:                                               ; preds = %24
  %35 = load %struct.usbtll_omap*, %struct.usbtll_omap** %5, align 8
  %36 = getelementptr inbounds %struct.usbtll_omap, %struct.usbtll_omap* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %63

45:                                               ; preds = %34
  %46 = load %struct.usbtll_omap*, %struct.usbtll_omap** %5, align 8
  %47 = getelementptr inbounds %struct.usbtll_omap, %struct.usbtll_omap* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @clk_enable(i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %45
  %57 = load i32, i32* @tll_dev, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %56, %45
  br label %62

62:                                               ; preds = %61, %24
  br label %63

63:                                               ; preds = %62, %44
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %18

66:                                               ; preds = %18
  %67 = call i32 @spin_unlock(i32* @tll_lock)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %9
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.usbtll_omap* @dev_get_drvdata(i32) #1

declare dso_local i64 @omap_usb_mode_needs_tll(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
