; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_omap-usb-tll.c_usbtll_omap_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_omap-usb-tll.c_usbtll_omap_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.usbtll_omap = type { i32, i32* }

@tll_lock = common dso_local global i32 0, align 4
@tll_dev = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @usbtll_omap_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbtll_omap_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.usbtll_omap*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.usbtll_omap* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.usbtll_omap* %6, %struct.usbtll_omap** %3, align 8
  %7 = call i32 @spin_lock(i32* @tll_lock)
  store i32* null, i32** @tll_dev, align 8
  %8 = call i32 @spin_unlock(i32* @tll_lock)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %43, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.usbtll_omap*, %struct.usbtll_omap** %3, align 8
  %12 = getelementptr inbounds %struct.usbtll_omap, %struct.usbtll_omap* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %9
  %16 = load %struct.usbtll_omap*, %struct.usbtll_omap** %3, align 8
  %17 = getelementptr inbounds %struct.usbtll_omap, %struct.usbtll_omap* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @IS_ERR(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %15
  %26 = load %struct.usbtll_omap*, %struct.usbtll_omap** %3, align 8
  %27 = getelementptr inbounds %struct.usbtll_omap, %struct.usbtll_omap* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @clk_unprepare(i32 %32)
  %34 = load %struct.usbtll_omap*, %struct.usbtll_omap** %3, align 8
  %35 = getelementptr inbounds %struct.usbtll_omap, %struct.usbtll_omap* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @clk_put(i32 %40)
  br label %42

42:                                               ; preds = %25, %15
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %9

46:                                               ; preds = %9
  %47 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call i32 @pm_runtime_disable(i32* %48)
  ret i32 0
}

declare dso_local %struct.usbtll_omap* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_unprepare(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
