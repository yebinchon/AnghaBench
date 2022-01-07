; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_yukon_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_yukon_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_hw = type { i32 }

@PHY_MARV_PHY_CTRL = common dso_local global i32 0, align 4
@PHY_M_PC_POL_R_DIS = common dso_local global i32 0, align 4
@PHY_MARV_CTRL = common dso_local global i32 0, align 4
@PHY_CT_RESET = common dso_local global i32 0, align 4
@PHY_CT_PDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skge_hw*, i32)* @yukon_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yukon_suspend(%struct.skge_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.skge_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.skge_hw* %0, %struct.skge_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @PHY_MARV_PHY_CTRL, align 4
  %9 = call i32 @gm_phy_read(%struct.skge_hw* %6, i32 %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @PHY_M_PC_POL_R_DIS, align 4
  %11 = load i32, i32* %5, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @PHY_MARV_PHY_CTRL, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @gm_phy_write(%struct.skge_hw* %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @PHY_MARV_CTRL, align 4
  %21 = call i32 @gm_phy_read(%struct.skge_hw* %18, i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @PHY_CT_RESET, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @PHY_MARV_CTRL, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @gm_phy_write(%struct.skge_hw* %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @PHY_MARV_CTRL, align 4
  %33 = call i32 @gm_phy_read(%struct.skge_hw* %30, i32 %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* @PHY_CT_PDOWN, align 4
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @PHY_MARV_CTRL, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @gm_phy_write(%struct.skge_hw* %37, i32 %38, i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @gm_phy_read(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @gm_phy_write(%struct.skge_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
