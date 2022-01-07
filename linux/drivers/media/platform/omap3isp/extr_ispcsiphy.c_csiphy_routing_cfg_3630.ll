; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsiphy.c_csiphy_routing_cfg_3630.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsiphy.c_csiphy_routing_cfg_3630.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_csiphy = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@OMAP3630_CONTROL_CAMERA_PHY_CTRL_CSI1_RX_SEL_PHY2 = common dso_local global i32 0, align 4
@OMAP3630_CONTROL_CAMERA_PHY_CTRL_CAMMODE_PHY1_SHIFT = common dso_local global i32 0, align 4
@OMAP3630_CONTROL_CAMERA_PHY_CTRL_CAMMODE_DPHY = common dso_local global i32 0, align 4
@OMAP3630_CONTROL_CAMERA_PHY_CTRL_CAMMODE_PHY2_SHIFT = common dso_local global i32 0, align 4
@OMAP3630_CONTROL_CAMERA_PHY_CTRL_CAMMODE_CCP2_DATA_STROBE = common dso_local global i32 0, align 4
@OMAP3630_CONTROL_CAMERA_PHY_CTRL_CAMMODE_CCP2_DATA_CLOCK = common dso_local global i32 0, align 4
@OMAP3630_CONTROL_CAMERA_PHY_CTRL_CAMMODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_csiphy*, i32, i32)* @csiphy_routing_cfg_3630 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csiphy_routing_cfg_3630(%struct.isp_csiphy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.isp_csiphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.isp_csiphy* %0, %struct.isp_csiphy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.isp_csiphy*, %struct.isp_csiphy** %4, align 8
  %11 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.isp_csiphy*, %struct.isp_csiphy** %4, align 8
  %16 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @regmap_read(i32 %14, i32 %19, i32* %7)
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %22 [
    i32 131, label %23
    i32 128, label %29
    i32 130, label %32
    i32 129, label %37
  ]

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %3, %22
  %24 = load i32, i32* @OMAP3630_CONTROL_CAMERA_PHY_CTRL_CSI1_RX_SEL_PHY2, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @OMAP3630_CONTROL_CAMERA_PHY_CTRL_CAMMODE_PHY1_SHIFT, align 4
  store i32 %28, i32* %8, align 4
  br label %40

29:                                               ; preds = %3
  %30 = load i32, i32* @OMAP3630_CONTROL_CAMERA_PHY_CTRL_CAMMODE_PHY1_SHIFT, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @OMAP3630_CONTROL_CAMERA_PHY_CTRL_CAMMODE_DPHY, align 4
  store i32 %31, i32* %9, align 4
  br label %40

32:                                               ; preds = %3
  %33 = load i32, i32* @OMAP3630_CONTROL_CAMERA_PHY_CTRL_CSI1_RX_SEL_PHY2, align 4
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @OMAP3630_CONTROL_CAMERA_PHY_CTRL_CAMMODE_PHY2_SHIFT, align 4
  store i32 %36, i32* %8, align 4
  br label %40

37:                                               ; preds = %3
  %38 = load i32, i32* @OMAP3630_CONTROL_CAMERA_PHY_CTRL_CAMMODE_PHY2_SHIFT, align 4
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* @OMAP3630_CONTROL_CAMERA_PHY_CTRL_CAMMODE_DPHY, align 4
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %37, %32, %29, %23
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 131
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 130
  br i1 %45, label %46, label %54

46:                                               ; preds = %43, %40
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @OMAP3630_CONTROL_CAMERA_PHY_CTRL_CAMMODE_CCP2_DATA_STROBE, align 4
  store i32 %50, i32* %9, align 4
  br label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @OMAP3630_CONTROL_CAMERA_PHY_CTRL_CAMMODE_CCP2_DATA_CLOCK, align 4
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %51, %49
  br label %54

54:                                               ; preds = %53, %43
  %55 = load i32, i32* @OMAP3630_CONTROL_CAMERA_PHY_CTRL_CAMMODE_MASK, align 4
  %56 = load i32, i32* %8, align 4
  %57 = shl i32 %55, %56
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %7, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = shl i32 %61, %62
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load %struct.isp_csiphy*, %struct.isp_csiphy** %4, align 8
  %67 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.isp_csiphy*, %struct.isp_csiphy** %4, align 8
  %72 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @regmap_write(i32 %70, i32 %75, i32 %76)
  ret void
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
