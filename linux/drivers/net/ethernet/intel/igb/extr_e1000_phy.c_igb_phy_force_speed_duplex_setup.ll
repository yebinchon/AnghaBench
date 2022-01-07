; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_phy.c_igb_phy_force_speed_duplex_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_phy.c_igb_phy_force_speed_duplex_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__, %struct.e1000_mac_info }
%struct.TYPE_2__ = type { i32 }
%struct.e1000_mac_info = type { i32 }

@e1000_fc_none = common dso_local global i32 0, align 4
@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_FRCSPD = common dso_local global i32 0, align 4
@E1000_CTRL_FRCDPX = common dso_local global i32 0, align 4
@E1000_CTRL_SPD_SEL = common dso_local global i32 0, align 4
@E1000_CTRL_ASDE = common dso_local global i32 0, align 4
@MII_CR_AUTO_NEG_EN = common dso_local global i32 0, align 4
@E1000_ALL_HALF_DUPLEX = common dso_local global i32 0, align 4
@E1000_CTRL_FD = common dso_local global i32 0, align 4
@MII_CR_FULL_DUPLEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Half Duplex\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Full Duplex\0A\00", align 1
@E1000_ALL_100_SPEED = common dso_local global i32 0, align 4
@E1000_CTRL_SPD_100 = common dso_local global i32 0, align 4
@MII_CR_SPEED_100 = common dso_local global i32 0, align 4
@MII_CR_SPEED_1000 = common dso_local global i32 0, align 4
@MII_CR_SPEED_10 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Forcing 100mb\0A\00", align 1
@E1000_CTRL_SPD_1000 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"Forcing 10mb\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*, i32*)* @igb_phy_force_speed_duplex_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_phy_force_speed_duplex_setup(%struct.e1000_hw* %0, i32* %1) #0 {
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.e1000_mac_info*, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 1
  store %struct.e1000_mac_info* %8, %struct.e1000_mac_info** %5, align 8
  %9 = load i32, i32* @e1000_fc_none, align 4
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @E1000_CTRL, align 4
  %14 = call i32 @rd32(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @E1000_CTRL_FRCSPD, align 4
  %16 = load i32, i32* @E1000_CTRL_FRCDPX, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @E1000_CTRL_SPD_SEL, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @E1000_CTRL_ASDE, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @MII_CR_AUTO_NEG_EN, align 4
  %29 = xor i32 %28, -1
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %29
  store i32 %32, i32* %30, align 4
  %33 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %5, align 8
  %34 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @E1000_ALL_HALF_DUPLEX, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %2
  %40 = load i32, i32* @E1000_CTRL_FD, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @MII_CR_FULL_DUPLEX, align 4
  %45 = xor i32 %44, -1
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %45
  store i32 %48, i32* %46, align 4
  %49 = call i32 @hw_dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %59

50:                                               ; preds = %2
  %51 = load i32, i32* @E1000_CTRL_FD, align 4
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* @MII_CR_FULL_DUPLEX, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %54
  store i32 %57, i32* %55, align 4
  %58 = call i32 @hw_dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %50, %39
  %60 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %5, align 8
  %61 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @E1000_ALL_100_SPEED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %59
  %67 = load i32, i32* @E1000_CTRL_SPD_100, align 4
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* @MII_CR_SPEED_100, align 4
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* @MII_CR_SPEED_1000, align 4
  %75 = load i32, i32* @MII_CR_SPEED_10, align 4
  %76 = or i32 %74, %75
  %77 = xor i32 %76, -1
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %77
  store i32 %80, i32* %78, align 4
  %81 = call i32 @hw_dbg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %101

82:                                               ; preds = %59
  %83 = load i32, i32* @E1000_CTRL_SPD_1000, align 4
  %84 = load i32, i32* @E1000_CTRL_SPD_100, align 4
  %85 = or i32 %83, %84
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %6, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* @MII_CR_SPEED_10, align 4
  %90 = load i32*, i32** %4, align 8
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %89
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* @MII_CR_SPEED_1000, align 4
  %94 = load i32, i32* @MII_CR_SPEED_100, align 4
  %95 = or i32 %93, %94
  %96 = xor i32 %95, -1
  %97 = load i32*, i32** %4, align 8
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, %96
  store i32 %99, i32* %97, align 4
  %100 = call i32 @hw_dbg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %101

101:                                              ; preds = %82, %66
  %102 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %103 = call i32 @igb_config_collision_dist(%struct.e1000_hw* %102)
  %104 = load i32, i32* @E1000_CTRL, align 4
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @wr32(i32 %104, i32 %105)
  ret void
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i32 @igb_config_collision_dist(%struct.e1000_hw*) #1

declare dso_local i32 @wr32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
