; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_config_mac_to_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_config_mac_to_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i32 }

@e1000_82544 = common dso_local global i64 0, align 8
@e1000_ce4100 = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_FRCSPD = common dso_local global i32 0, align 4
@E1000_CTRL_FRCDPX = common dso_local global i32 0, align 4
@E1000_CTRL_SPD_SEL = common dso_local global i32 0, align 4
@E1000_CTRL_ILOS = common dso_local global i32 0, align 4
@PHY_CTRL = common dso_local global i32 0, align 4
@RTL_PHY_CTRL_FD = common dso_local global i32 0, align 4
@E1000_CTRL_FD = common dso_local global i32 0, align 4
@RTL_PHY_CTRL_SPD_100 = common dso_local global i32 0, align 4
@E1000_CTRL_SPD_100 = common dso_local global i32 0, align 4
@E1000_CTRL_SPD_10 = common dso_local global i32 0, align 4
@M88E1000_PHY_SPEC_STATUS = common dso_local global i32 0, align 4
@M88E1000_PSSR_DPLX = common dso_local global i32 0, align 4
@M88E1000_PSSR_SPEED = common dso_local global i32 0, align 4
@M88E1000_PSSR_1000MBS = common dso_local global i32 0, align 4
@E1000_CTRL_SPD_1000 = common dso_local global i32 0, align 4
@M88E1000_PSSR_100MBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_config_mac_to_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_config_mac_to_phy(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @e1000_82544, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @e1000_ce4100, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %19, i32* %2, align 4
  br label %126

20:                                               ; preds = %12, %1
  %21 = load i32, i32* @CTRL, align 4
  %22 = call i32 @er32(i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @E1000_CTRL_FRCSPD, align 4
  %24 = load i32, i32* @E1000_CTRL_FRCDPX, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @E1000_CTRL_SPD_SEL, align 4
  %29 = load i32, i32* @E1000_CTRL_ILOS, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %35 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %75 [
    i32 128, label %37
  ]

37:                                               ; preds = %20
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %39 = load i32, i32* @PHY_CTRL, align 4
  %40 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %38, i32 %39, i32* %6)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %126

45:                                               ; preds = %37
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @RTL_PHY_CTRL_FD, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @E1000_CTRL_FD, align 4
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  br label %59

54:                                               ; preds = %45
  %55 = load i32, i32* @E1000_CTRL_FD, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %4, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %54, %50
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @RTL_PHY_CTRL_SPD_100, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @E1000_CTRL_SPD_100, align 4
  %66 = load i32, i32* %4, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %4, align 4
  br label %72

68:                                               ; preds = %59
  %69 = load i32, i32* @E1000_CTRL_SPD_10, align 4
  %70 = load i32, i32* %4, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %68, %64
  %73 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %74 = call i32 @e1000_config_collision_dist(%struct.e1000_hw* %73)
  br label %121

75:                                               ; preds = %20
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %77 = load i32, i32* @M88E1000_PHY_SPEC_STATUS, align 4
  %78 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %76, i32 %77, i32* %6)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %2, align 4
  br label %126

83:                                               ; preds = %75
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @M88E1000_PSSR_DPLX, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i32, i32* @E1000_CTRL_FD, align 4
  %90 = load i32, i32* %4, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %4, align 4
  br label %97

92:                                               ; preds = %83
  %93 = load i32, i32* @E1000_CTRL_FD, align 4
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %4, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %92, %88
  %98 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %99 = call i32 @e1000_config_collision_dist(%struct.e1000_hw* %98)
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @M88E1000_PSSR_SPEED, align 4
  %102 = and i32 %100, %101
  %103 = load i32, i32* @M88E1000_PSSR_1000MBS, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %97
  %106 = load i32, i32* @E1000_CTRL_SPD_1000, align 4
  %107 = load i32, i32* %4, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %4, align 4
  br label %120

109:                                              ; preds = %97
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @M88E1000_PSSR_SPEED, align 4
  %112 = and i32 %110, %111
  %113 = load i32, i32* @M88E1000_PSSR_100MBS, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load i32, i32* @E1000_CTRL_SPD_100, align 4
  %117 = load i32, i32* %4, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %115, %109
  br label %120

120:                                              ; preds = %119, %105
  br label %121

121:                                              ; preds = %120, %72
  %122 = load i32, i32* @CTRL, align 4
  %123 = load i32, i32* %4, align 4
  %124 = call i32 @ew32(i32 %122, i32 %123)
  %125 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %121, %81, %43, %18
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e1000_config_collision_dist(%struct.e1000_hw*) #1

declare dso_local i32 @ew32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
