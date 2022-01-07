; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsiphy.c_csiphy_power_autoswitch_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsiphy.c_csiphy_power_autoswitch_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_csiphy = type { i32, i32 }

@ISPCSI2_PHY_CFG = common dso_local global i32 0, align 4
@ISPCSI2_PHY_CFG_PWR_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_csiphy*, i32)* @csiphy_power_autoswitch_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csiphy_power_autoswitch_enable(%struct.isp_csiphy* %0, i32 %1) #0 {
  %3 = alloca %struct.isp_csiphy*, align 8
  %4 = alloca i32, align 4
  store %struct.isp_csiphy* %0, %struct.isp_csiphy** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.isp_csiphy*, %struct.isp_csiphy** %3, align 8
  %6 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.isp_csiphy*, %struct.isp_csiphy** %3, align 8
  %9 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ISPCSI2_PHY_CFG, align 4
  %12 = load i32, i32* @ISPCSI2_PHY_CFG_PWR_AUTO, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @ISPCSI2_PHY_CFG_PWR_AUTO, align 4
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32 [ %16, %15 ], [ 0, %17 ]
  %20 = call i32 @isp_reg_clr_set(i32 %7, i32 %10, i32 %11, i32 %12, i32 %19)
  ret void
}

declare dso_local i32 @isp_reg_clr_set(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
