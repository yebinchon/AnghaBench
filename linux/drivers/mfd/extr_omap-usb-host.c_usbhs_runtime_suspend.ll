; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_omap-usb-host.c_usbhs_runtime_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_omap-usb-host.c_usbhs_runtime_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.usbhs_hcd_omap = type { i32, i32, i32*, i32*, i32*, %struct.usbhs_omap_platform_data* }
%struct.usbhs_omap_platform_data = type { i32* }

@.str = private unnamed_addr constant [23 x i8] c"usbhs_runtime_suspend\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @usbhs_runtime_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhs_runtime_suspend(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.usbhs_hcd_omap*, align 8
  %4 = alloca %struct.usbhs_omap_platform_data*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.usbhs_hcd_omap* @dev_get_drvdata(%struct.device* %6)
  store %struct.usbhs_hcd_omap* %7, %struct.usbhs_hcd_omap** %3, align 8
  %8 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %3, align 8
  %9 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %8, i32 0, i32 5
  %10 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %9, align 8
  store %struct.usbhs_omap_platform_data* %10, %struct.usbhs_omap_platform_data** %4, align 8
  %11 = load %struct.device*, %struct.device** %2, align 8
  %12 = call i32 @dev_dbg(%struct.device* %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %88, %1
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %3, align 8
  %16 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %91

19:                                               ; preds = %13
  %20 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %4, align 8
  %21 = getelementptr inbounds %struct.usbhs_omap_platform_data, %struct.usbhs_omap_platform_data* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %86 [
    i32 129, label %27
    i32 128, label %66
  ]

27:                                               ; preds = %19
  %28 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %3, align 8
  %29 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @IS_ERR(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %27
  %38 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %3, align 8
  %39 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @clk_disable_unprepare(i32 %44)
  br label %46

46:                                               ; preds = %37, %27
  %47 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %3, align 8
  %48 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @IS_ERR(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %46
  %57 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %3, align 8
  %58 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @clk_disable_unprepare(i32 %63)
  br label %65

65:                                               ; preds = %56, %46
  br label %66

66:                                               ; preds = %19, %65
  %67 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %3, align 8
  %68 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @IS_ERR(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %66
  %77 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %3, align 8
  %78 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @clk_disable_unprepare(i32 %83)
  br label %85

85:                                               ; preds = %76, %66
  br label %87

86:                                               ; preds = %19
  br label %87

87:                                               ; preds = %86, %85
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %13

91:                                               ; preds = %13
  %92 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %3, align 8
  %93 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @IS_ERR(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %91
  %98 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %3, align 8
  %99 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @clk_disable_unprepare(i32 %100)
  br label %102

102:                                              ; preds = %97, %91
  %103 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %4, align 8
  %104 = call i32 @omap_tll_disable(%struct.usbhs_omap_platform_data* %103)
  ret i32 0
}

declare dso_local %struct.usbhs_hcd_omap* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @omap_tll_disable(%struct.usbhs_omap_platform_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
