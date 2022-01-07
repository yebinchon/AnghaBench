; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_port_mode_mismatch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_port_mode_mismatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.xgbe_phy_data* }
%struct.xgbe_phy_data = type { i32, i32 }

@XGBE_PHY_PORT_SPEED_1000 = common dso_local global i32 0, align 4
@XGBE_PHY_PORT_SPEED_10000 = common dso_local global i32 0, align 4
@XGBE_PHY_PORT_SPEED_2500 = common dso_local global i32 0, align 4
@XGBE_PHY_PORT_SPEED_100 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @xgbe_phy_port_mode_mismatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_phy_port_mode_mismatch(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca %struct.xgbe_phy_data*, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  %5 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %6 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %5, i32 0, i32 0
  %7 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %6, align 8
  store %struct.xgbe_phy_data* %7, %struct.xgbe_phy_data** %4, align 8
  %8 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %9 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %139 [
    i32 131, label %11
    i32 130, label %27
    i32 135, label %36
    i32 134, label %52
    i32 129, label %61
    i32 132, label %84
    i32 133, label %107
    i32 128, label %116
  ]

11:                                               ; preds = %1
  %12 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %13 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @XGBE_PHY_PORT_SPEED_1000, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %11
  %19 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %20 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @XGBE_PHY_PORT_SPEED_10000, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18, %11
  store i32 0, i32* %2, align 4
  br label %141

26:                                               ; preds = %18
  br label %140

27:                                               ; preds = %1
  %28 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %29 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @XGBE_PHY_PORT_SPEED_2500, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %141

35:                                               ; preds = %27
  br label %140

36:                                               ; preds = %1
  %37 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %38 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @XGBE_PHY_PORT_SPEED_100, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %36
  %44 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %45 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @XGBE_PHY_PORT_SPEED_1000, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43, %36
  store i32 0, i32* %2, align 4
  br label %141

51:                                               ; preds = %43
  br label %140

52:                                               ; preds = %1
  %53 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %54 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @XGBE_PHY_PORT_SPEED_1000, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %141

60:                                               ; preds = %52
  br label %140

61:                                               ; preds = %1
  %62 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %63 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @XGBE_PHY_PORT_SPEED_100, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %82, label %68

68:                                               ; preds = %61
  %69 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %70 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @XGBE_PHY_PORT_SPEED_1000, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %68
  %76 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %77 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @XGBE_PHY_PORT_SPEED_2500, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75, %68, %61
  store i32 0, i32* %2, align 4
  br label %141

83:                                               ; preds = %75
  br label %140

84:                                               ; preds = %1
  %85 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %86 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @XGBE_PHY_PORT_SPEED_100, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %105, label %91

91:                                               ; preds = %84
  %92 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %93 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @XGBE_PHY_PORT_SPEED_1000, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %91
  %99 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %100 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @XGBE_PHY_PORT_SPEED_10000, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %98, %91, %84
  store i32 0, i32* %2, align 4
  br label %141

106:                                              ; preds = %98
  br label %140

107:                                              ; preds = %1
  %108 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %109 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @XGBE_PHY_PORT_SPEED_10000, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  store i32 0, i32* %2, align 4
  br label %141

115:                                              ; preds = %107
  br label %140

116:                                              ; preds = %1
  %117 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %118 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @XGBE_PHY_PORT_SPEED_100, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %137, label %123

123:                                              ; preds = %116
  %124 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %125 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @XGBE_PHY_PORT_SPEED_1000, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %123
  %131 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %132 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @XGBE_PHY_PORT_SPEED_10000, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %130, %123, %116
  store i32 0, i32* %2, align 4
  br label %141

138:                                              ; preds = %130
  br label %140

139:                                              ; preds = %1
  br label %140

140:                                              ; preds = %139, %138, %115, %106, %83, %60, %51, %35, %26
  store i32 1, i32* %2, align 4
  br label %141

141:                                              ; preds = %140, %137, %114, %105, %82, %59, %50, %34, %25
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
