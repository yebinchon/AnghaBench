; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-mediatek.c_mt2712_set_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-mediatek.c_mt2712_set_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mediatek_dwmac_plat_data = type { i32, i32, i32, i32 }

@RMII_CLK_SRC_RXC = common dso_local global i32 0, align 4
@PHY_INTF_MII = common dso_local global i32 0, align 4
@PHY_INTF_RMII = common dso_local global i32 0, align 4
@PHY_INTF_RGMII = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"phy interface not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PERI_ETH_PHY_INTF_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mediatek_dwmac_plat_data*)* @mt2712_set_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt2712_set_interface(%struct.mediatek_dwmac_plat_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mediatek_dwmac_plat_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mediatek_dwmac_plat_data* %0, %struct.mediatek_dwmac_plat_data** %3, align 8
  %6 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %7 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @RMII_CLK_SRC_RXC, align 4
  br label %13

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i32 [ %11, %10 ], [ 0, %12 ]
  store i32 %14, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %15 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %16 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %32 [
    i32 133, label %18
    i32 128, label %22
    i32 132, label %28
    i32 129, label %28
    i32 130, label %28
    i32 131, label %28
  ]

18:                                               ; preds = %13
  %19 = load i32, i32* @PHY_INTF_MII, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %39

22:                                               ; preds = %13
  %23 = load i32, i32* @PHY_INTF_RMII, align 4
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %39

28:                                               ; preds = %13, %13, %13, %13
  %29 = load i32, i32* @PHY_INTF_RGMII, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %39

32:                                               ; preds = %13
  %33 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %34 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %46

39:                                               ; preds = %28, %22, %18
  %40 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %41 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PERI_ETH_PHY_INTF_SEL, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @regmap_write(i32 %42, i32 %43, i32 %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %39, %32
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
