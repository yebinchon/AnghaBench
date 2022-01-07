; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_ethtool.c_e1000_nonintegrated_phy_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_ethtool.c_e1000_nonintegrated_phy_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_ILOS = common dso_local global i32 0, align 4
@E1000_CTRL_FRCSPD = common dso_local global i32 0, align 4
@E1000_CTRL_FRCDPX = common dso_local global i32 0, align 4
@E1000_CTRL_SPD_1000 = common dso_local global i32 0, align 4
@E1000_CTRL_FD = common dso_local global i32 0, align 4
@M88E1000_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@M88E1000_PSCR_AUTO_X_MODE = common dso_local global i32 0, align 4
@PHY_CTRL = common dso_local global i32 0, align 4
@MII_CR_LOOPBACK = common dso_local global i32 0, align 4
@M88E1000_EXT_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*)* @e1000_nonintegrated_phy_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_nonintegrated_phy_loopback(%struct.e1000_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %3, align 8
  %7 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %7, i32 0, i32 0
  store %struct.e1000_hw* %8, %struct.e1000_hw** %4, align 8
  %9 = load i32, i32* @CTRL, align 4
  %10 = call i32 @er32(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @E1000_CTRL_ILOS, align 4
  %12 = load i32, i32* @E1000_CTRL_FRCSPD, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @E1000_CTRL_FRCDPX, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @E1000_CTRL_SPD_1000, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @E1000_CTRL_FD, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @CTRL, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @ew32(i32 %22, i32 %23)
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %26 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %27 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %25, i32 %26, i32* %6)
  %28 = load i32, i32* @M88E1000_PSCR_AUTO_X_MODE, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %33 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %32, i32 %33, i32 %34)
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %37 = call i32 @e1000_phy_reset(%struct.e1000_hw* %36)
  %38 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %39 = call i32 @e1000_phy_reset_clk_and_crs(%struct.e1000_adapter* %38)
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %41 = load i32, i32* @PHY_CTRL, align 4
  %42 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %40, i32 %41, i32 33024)
  %43 = call i32 @udelay(i32 500)
  %44 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %45 = call i32 @e1000_phy_reset_clk_and_crs(%struct.e1000_adapter* %44)
  %46 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %47 = call i32 @e1000_phy_disable_receiver(%struct.e1000_adapter* %46)
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %49 = load i32, i32* @PHY_CTRL, align 4
  %50 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %48, i32 %49, i32* %6)
  %51 = load i32, i32* @MII_CR_LOOPBACK, align 4
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %55 = load i32, i32* @PHY_CTRL, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %54, i32 %55, i32 %56)
  %58 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %59 = call i32 @e1000_phy_reset_clk_and_crs(%struct.e1000_adapter* %58)
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %61 = load i32, i32* @PHY_CTRL, align 4
  %62 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %60, i32 %61, i32* %6)
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 16640
  br i1 %64, label %65, label %66

65:                                               ; preds = %1
  store i32 9, i32* %2, align 4
  br label %80

66:                                               ; preds = %1
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %68 = load i32, i32* @M88E1000_EXT_PHY_SPEC_CTRL, align 4
  %69 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %67, i32 %68, i32* %6)
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 112
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 10, i32* %2, align 4
  br label %80

73:                                               ; preds = %66
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %75 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %74, i32 29, i32* %6)
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 26
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 11, i32* %2, align 4
  br label %80

79:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %78, %72, %65
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e1000_write_phy_reg(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000_phy_reset(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_phy_reset_clk_and_crs(%struct.e1000_adapter*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @e1000_phy_disable_receiver(%struct.e1000_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
