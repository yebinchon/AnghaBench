; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_smartspeed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_smartspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i64, %struct.e1000_hw }
%struct.e1000_hw = type { i64, i32, i32 }

@e1000_phy_igp = common dso_local global i64 0, align 8
@ADVERTISE_1000_FULL = common dso_local global i32 0, align 4
@PHY_1000T_STATUS = common dso_local global i32 0, align 4
@SR_1000T_MS_CONFIG_FAULT = common dso_local global i32 0, align 4
@PHY_1000T_CTRL = common dso_local global i32 0, align 4
@CR_1000T_MS_ENABLE = common dso_local global i32 0, align 4
@PHY_CTRL = common dso_local global i32 0, align 4
@MII_CR_AUTO_NEG_EN = common dso_local global i32 0, align 4
@MII_CR_RESTART_AUTO_NEG = common dso_local global i32 0, align 4
@E1000_SMARTSPEED_DOWNSHIFT = common dso_local global i64 0, align 8
@E1000_SMARTSPEED_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*)* @e1000_smartspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_smartspeed(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %6 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %6, i32 0, i32 1
  store %struct.e1000_hw* %7, %struct.e1000_hw** %3, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @e1000_phy_igp, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %25, label %13

13:                                               ; preds = %1
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %20 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ADVERTISE_1000_FULL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18, %13, %1
  br label %137

26:                                               ; preds = %18
  %27 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %90

31:                                               ; preds = %26
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %33 = load i32, i32* @PHY_1000T_STATUS, align 4
  %34 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %32, i32 %33, i32* %4)
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @SR_1000T_MS_CONFIG_FAULT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  br label %137

40:                                               ; preds = %31
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %42 = load i32, i32* @PHY_1000T_STATUS, align 4
  %43 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %41, i32 %42, i32* %4)
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @SR_1000T_MS_CONFIG_FAULT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  br label %137

49:                                               ; preds = %40
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %51 = load i32, i32* @PHY_1000T_CTRL, align 4
  %52 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %50, i32 %51, i32* %5)
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @CR_1000T_MS_ENABLE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %89

57:                                               ; preds = %49
  %58 = load i32, i32* @CR_1000T_MS_ENABLE, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %5, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %5, align 4
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %63 = load i32, i32* @PHY_1000T_CTRL, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %62, i32 %63, i32 %64)
  %66 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %67 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %67, align 8
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %71 = call i32 @e1000_phy_setup_autoneg(%struct.e1000_hw* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %88, label %73

73:                                               ; preds = %57
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %75 = load i32, i32* @PHY_CTRL, align 4
  %76 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %74, i32 %75, i32* %5)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* @MII_CR_AUTO_NEG_EN, align 4
  %80 = load i32, i32* @MII_CR_RESTART_AUTO_NEG, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %5, align 4
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %85 = load i32, i32* @PHY_CTRL, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %78, %73, %57
  br label %89

89:                                               ; preds = %88, %49
  br label %137

90:                                               ; preds = %26
  %91 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %92 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @E1000_SMARTSPEED_DOWNSHIFT, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %126

96:                                               ; preds = %90
  %97 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %98 = load i32, i32* @PHY_1000T_CTRL, align 4
  %99 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %97, i32 %98, i32* %5)
  %100 = load i32, i32* @CR_1000T_MS_ENABLE, align 4
  %101 = load i32, i32* %5, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %5, align 4
  %103 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %104 = load i32, i32* @PHY_1000T_CTRL, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %103, i32 %104, i32 %105)
  %107 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %108 = call i32 @e1000_phy_setup_autoneg(%struct.e1000_hw* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %125, label %110

110:                                              ; preds = %96
  %111 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %112 = load i32, i32* @PHY_CTRL, align 4
  %113 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %111, i32 %112, i32* %5)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %110
  %116 = load i32, i32* @MII_CR_AUTO_NEG_EN, align 4
  %117 = load i32, i32* @MII_CR_RESTART_AUTO_NEG, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* %5, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %5, align 4
  %121 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %122 = load i32, i32* @PHY_CTRL, align 4
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %121, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %115, %110, %96
  br label %126

126:                                              ; preds = %125, %90
  br label %127

127:                                              ; preds = %126
  %128 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %129 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %130, 1
  store i64 %131, i64* %129, align 8
  %132 = load i64, i64* @E1000_SMARTSPEED_MAX, align 8
  %133 = icmp eq i64 %130, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %127
  %135 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %136 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %135, i32 0, i32 0
  store i64 0, i64* %136, align 8
  br label %137

137:                                              ; preds = %25, %39, %48, %89, %134, %127
  ret void
}

declare dso_local i32 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e1000_write_phy_reg(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000_phy_setup_autoneg(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
