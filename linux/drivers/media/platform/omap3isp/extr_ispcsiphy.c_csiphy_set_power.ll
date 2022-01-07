; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsiphy.c_csiphy_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsiphy.c_csiphy_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_csiphy = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@ISPCSI2_PHY_CFG = common dso_local global i32 0, align 4
@ISPCSI2_PHY_CFG_PWR_CMD_MASK = common dso_local global i32 0, align 4
@ISPCSI2_PHY_CFG_PWR_STATUS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"CSI2 CIO set power failed!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp_csiphy*, i32)* @csiphy_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csiphy_set_power(%struct.isp_csiphy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isp_csiphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.isp_csiphy* %0, %struct.isp_csiphy** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.isp_csiphy*, %struct.isp_csiphy** %4, align 8
  %9 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = load %struct.isp_csiphy*, %struct.isp_csiphy** %4, align 8
  %12 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ISPCSI2_PHY_CFG, align 4
  %15 = load i32, i32* @ISPCSI2_PHY_CFG_PWR_CMD_MASK, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @isp_reg_clr_set(%struct.TYPE_3__* %10, i32 %13, i32 %14, i32 %15, i32 %16)
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %46, %2
  %19 = call i32 @udelay(i32 50)
  %20 = load %struct.isp_csiphy*, %struct.isp_csiphy** %4, align 8
  %21 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load %struct.isp_csiphy*, %struct.isp_csiphy** %4, align 8
  %24 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ISPCSI2_PHY_CFG, align 4
  %27 = call i32 @isp_reg_readl(%struct.TYPE_3__* %22, i32 %25, i32 %26)
  %28 = load i32, i32* @ISPCSI2_PHY_CFG_PWR_STATUS_MASK, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = ashr i32 %31, 2
  %33 = icmp ne i32 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %18
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %34, %18
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = ashr i32 %40, 2
  %42 = icmp ne i32 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 100
  br label %46

46:                                               ; preds = %43, %38
  %47 = phi i1 [ false, %38 ], [ %45, %43 ]
  br i1 %47, label %18, label %48

48:                                               ; preds = %46
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 100
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load %struct.isp_csiphy*, %struct.isp_csiphy** %4, align 8
  %53 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %61

60:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %51
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @isp_reg_clr_set(%struct.TYPE_3__*, i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @isp_reg_readl(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
