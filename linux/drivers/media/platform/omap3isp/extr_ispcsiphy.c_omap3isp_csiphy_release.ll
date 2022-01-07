; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsiphy.c_omap3isp_csiphy_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsiphy.c_omap3isp_csiphy_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_csiphy = type { i32, i32*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.isp_pipeline = type { i32 }
%struct.isp_bus_cfg = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ISP_REVISION_15_0 = common dso_local global i64 0, align 8
@ISPCSI2_PHY_CFG_PWR_CMD_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap3isp_csiphy_release(%struct.isp_csiphy* %0) #0 {
  %2 = alloca %struct.isp_csiphy*, align 8
  %3 = alloca %struct.isp_pipeline*, align 8
  %4 = alloca %struct.isp_bus_cfg*, align 8
  store %struct.isp_csiphy* %0, %struct.isp_csiphy** %2, align 8
  %5 = load %struct.isp_csiphy*, %struct.isp_csiphy** %2, align 8
  %6 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.isp_csiphy*, %struct.isp_csiphy** %2, align 8
  %9 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %51

12:                                               ; preds = %1
  %13 = load %struct.isp_csiphy*, %struct.isp_csiphy** %2, align 8
  %14 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call %struct.isp_pipeline* @to_isp_pipeline(i32* %15)
  store %struct.isp_pipeline* %16, %struct.isp_pipeline** %3, align 8
  %17 = load %struct.isp_pipeline*, %struct.isp_pipeline** %3, align 8
  %18 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.isp_bus_cfg* @v4l2_subdev_to_bus_cfg(i32 %19)
  store %struct.isp_bus_cfg* %20, %struct.isp_bus_cfg** %4, align 8
  %21 = load %struct.isp_csiphy*, %struct.isp_csiphy** %2, align 8
  %22 = load %struct.isp_bus_cfg*, %struct.isp_bus_cfg** %4, align 8
  %23 = getelementptr inbounds %struct.isp_bus_cfg, %struct.isp_bus_cfg* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.isp_bus_cfg*, %struct.isp_bus_cfg** %4, align 8
  %26 = getelementptr inbounds %struct.isp_bus_cfg, %struct.isp_bus_cfg* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @csiphy_routing_cfg(%struct.isp_csiphy* %21, i32 %24, i32 0, i32 %29)
  %31 = load %struct.isp_csiphy*, %struct.isp_csiphy** %2, align 8
  %32 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %31, i32 0, i32 3
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ISP_REVISION_15_0, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %12
  %39 = load %struct.isp_csiphy*, %struct.isp_csiphy** %2, align 8
  %40 = call i32 @csiphy_power_autoswitch_enable(%struct.isp_csiphy* %39, i32 0)
  %41 = load %struct.isp_csiphy*, %struct.isp_csiphy** %2, align 8
  %42 = load i32, i32* @ISPCSI2_PHY_CFG_PWR_CMD_OFF, align 4
  %43 = call i32 @csiphy_set_power(%struct.isp_csiphy* %41, i32 %42)
  br label %44

44:                                               ; preds = %38, %12
  %45 = load %struct.isp_csiphy*, %struct.isp_csiphy** %2, align 8
  %46 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @regulator_disable(i32 %47)
  %49 = load %struct.isp_csiphy*, %struct.isp_csiphy** %2, align 8
  %50 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %49, i32 0, i32 1
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %44, %1
  %52 = load %struct.isp_csiphy*, %struct.isp_csiphy** %2, align 8
  %53 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.isp_pipeline* @to_isp_pipeline(i32*) #1

declare dso_local %struct.isp_bus_cfg* @v4l2_subdev_to_bus_cfg(i32) #1

declare dso_local i32 @csiphy_routing_cfg(%struct.isp_csiphy*, i32, i32, i32) #1

declare dso_local i32 @csiphy_power_autoswitch_enable(%struct.isp_csiphy*, i32) #1

declare dso_local i32 @csiphy_set_power(%struct.isp_csiphy*, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
