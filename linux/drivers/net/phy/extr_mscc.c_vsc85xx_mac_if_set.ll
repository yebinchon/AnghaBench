; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc85xx_mac_if_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc85xx_mac_if_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MSCC_PHY_EXT_PHY_CNTL_1 = common dso_local global i32 0, align 4
@MAC_IF_SELECTION_MASK = common dso_local global i32 0, align 4
@MAC_IF_SELECTION_RGMII = common dso_local global i32 0, align 4
@MAC_IF_SELECTION_POS = common dso_local global i32 0, align 4
@MAC_IF_SELECTION_RMII = common dso_local global i32 0, align 4
@MAC_IF_SELECTION_GMII = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, i32)* @vsc85xx_mac_if_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc85xx_mac_if_set(%struct.phy_device* %0, i32 %1) #0 {
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %11 = load i32, i32* @MSCC_PHY_EXT_PHY_CNTL_1, align 4
  %12 = call i32 @phy_read(%struct.phy_device* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @MAC_IF_SELECTION_MASK, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %36 [
    i32 129, label %18
    i32 128, label %24
    i32 130, label %30
    i32 131, label %30
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @MAC_IF_SELECTION_RGMII, align 4
  %20 = load i32, i32* @MAC_IF_SELECTION_POS, align 4
  %21 = shl i32 %19, %20
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  br label %39

24:                                               ; preds = %2
  %25 = load i32, i32* @MAC_IF_SELECTION_RMII, align 4
  %26 = load i32, i32* @MAC_IF_SELECTION_POS, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %39

30:                                               ; preds = %2, %2
  %31 = load i32, i32* @MAC_IF_SELECTION_GMII, align 4
  %32 = load i32, i32* @MAC_IF_SELECTION_POS, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  br label %39

36:                                               ; preds = %2
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %50

39:                                               ; preds = %30, %24, %18
  %40 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %41 = load i32, i32* @MSCC_PHY_EXT_PHY_CNTL_1, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @phy_write(%struct.phy_device* %40, i32 %41, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %50

47:                                               ; preds = %39
  %48 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %49 = call i32 @genphy_soft_reset(%struct.phy_device* %48)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %47, %46, %36
  %51 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %52 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @genphy_soft_reset(%struct.phy_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
