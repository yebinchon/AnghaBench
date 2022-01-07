; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsiphy.c_csiphy_routing_cfg_3430.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsiphy.c_csiphy_routing_cfg_3430.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_csiphy = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@OMAP343X_CONTROL_CSIRXFE_PWRDNZ = common dso_local global i64 0, align 8
@OMAP343X_CONTROL_CSIRXFE_RESET = common dso_local global i64 0, align 8
@ISP_INTERFACE_CCP2B_PHY1 = common dso_local global i64 0, align 8
@OMAP343X_CONTROL_CSIRXFE_SELFORM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_csiphy*, i64, i32, i32)* @csiphy_routing_cfg_3430 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csiphy_routing_cfg_3430(%struct.isp_csiphy* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.isp_csiphy*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.isp_csiphy* %0, %struct.isp_csiphy** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i64, i64* @OMAP343X_CONTROL_CSIRXFE_PWRDNZ, align 8
  %11 = load i64, i64* @OMAP343X_CONTROL_CSIRXFE_RESET, align 8
  %12 = or i64 %10, %11
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @ISP_INTERFACE_CCP2B_PHY1, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %52

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %17
  %21 = load %struct.isp_csiphy*, %struct.isp_csiphy** %5, align 8
  %22 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.isp_csiphy*, %struct.isp_csiphy** %5, align 8
  %27 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @regmap_write(i32 %25, i32 %30, i64 0)
  br label %52

32:                                               ; preds = %17
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i64, i64* @OMAP343X_CONTROL_CSIRXFE_SELFORM, align 8
  %37 = load i64, i64* %9, align 8
  %38 = or i64 %37, %36
  store i64 %38, i64* %9, align 8
  br label %39

39:                                               ; preds = %35, %32
  %40 = load %struct.isp_csiphy*, %struct.isp_csiphy** %5, align 8
  %41 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.isp_csiphy*, %struct.isp_csiphy** %5, align 8
  %46 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @regmap_write(i32 %44, i32 %49, i64 %50)
  br label %52

52:                                               ; preds = %39, %20, %16
  ret void
}

declare dso_local i32 @regmap_write(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
