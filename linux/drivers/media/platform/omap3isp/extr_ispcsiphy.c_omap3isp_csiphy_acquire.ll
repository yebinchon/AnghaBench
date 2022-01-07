; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsiphy.c_omap3isp_csiphy_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsiphy.c_omap3isp_csiphy_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_csiphy = type { i32, %struct.media_entity*, i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.media_entity = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Power regulator for CSI PHY not available\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ISP_REVISION_15_0 = common dso_local global i64 0, align 8
@ISPCSI2_PHY_CFG_PWR_CMD_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap3isp_csiphy_acquire(%struct.isp_csiphy* %0, %struct.media_entity* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isp_csiphy*, align 8
  %5 = alloca %struct.media_entity*, align 8
  %6 = alloca i32, align 4
  store %struct.isp_csiphy* %0, %struct.isp_csiphy** %4, align 8
  store %struct.media_entity* %1, %struct.media_entity** %5, align 8
  %7 = load %struct.isp_csiphy*, %struct.isp_csiphy** %4, align 8
  %8 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.isp_csiphy*, %struct.isp_csiphy** %4, align 8
  %13 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %82

20:                                               ; preds = %2
  %21 = load %struct.isp_csiphy*, %struct.isp_csiphy** %4, align 8
  %22 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.isp_csiphy*, %struct.isp_csiphy** %4, align 8
  %25 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @regulator_enable(i32* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %71

31:                                               ; preds = %20
  %32 = load %struct.isp_csiphy*, %struct.isp_csiphy** %4, align 8
  %33 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @omap3isp_csi2_reset(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %71

39:                                               ; preds = %31
  %40 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %41 = load %struct.isp_csiphy*, %struct.isp_csiphy** %4, align 8
  %42 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %41, i32 0, i32 1
  store %struct.media_entity* %40, %struct.media_entity** %42, align 8
  %43 = load %struct.isp_csiphy*, %struct.isp_csiphy** %4, align 8
  %44 = call i32 @omap3isp_csiphy_config(%struct.isp_csiphy* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %71

48:                                               ; preds = %39
  %49 = load %struct.isp_csiphy*, %struct.isp_csiphy** %4, align 8
  %50 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ISP_REVISION_15_0, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %48
  %57 = load %struct.isp_csiphy*, %struct.isp_csiphy** %4, align 8
  %58 = load i32, i32* @ISPCSI2_PHY_CFG_PWR_CMD_ON, align 4
  %59 = call i32 @csiphy_set_power(%struct.isp_csiphy* %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.isp_csiphy*, %struct.isp_csiphy** %4, align 8
  %64 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @regulator_disable(i32* %65)
  br label %71

67:                                               ; preds = %56
  %68 = load %struct.isp_csiphy*, %struct.isp_csiphy** %4, align 8
  %69 = call i32 @csiphy_power_autoswitch_enable(%struct.isp_csiphy* %68, i32 1)
  br label %70

70:                                               ; preds = %67, %48
  br label %71

71:                                               ; preds = %70, %62, %47, %38, %30
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load %struct.isp_csiphy*, %struct.isp_csiphy** %4, align 8
  %76 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %75, i32 0, i32 1
  store %struct.media_entity* null, %struct.media_entity** %76, align 8
  br label %77

77:                                               ; preds = %74, %71
  %78 = load %struct.isp_csiphy*, %struct.isp_csiphy** %4, align 8
  %79 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %77, %11
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regulator_enable(i32*) #1

declare dso_local i32 @omap3isp_csi2_reset(i32) #1

declare dso_local i32 @omap3isp_csiphy_config(%struct.isp_csiphy*) #1

declare dso_local i32 @csiphy_set_power(%struct.isp_csiphy*, i32) #1

declare dso_local i32 @regulator_disable(i32*) #1

declare dso_local i32 @csiphy_power_autoswitch_enable(%struct.isp_csiphy*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
