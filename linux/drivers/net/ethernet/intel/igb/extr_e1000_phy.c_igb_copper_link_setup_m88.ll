; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_phy.c_igb_copper_link_setup_m88.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_phy.c_igb_copper_link_setup_m88.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i32, i32, i64, i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@M88E1000_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@M88E1000_PSCR_ASSERT_CRS_ON_TX = common dso_local global i32 0, align 4
@M88E1000_PSCR_AUTO_X_MODE = common dso_local global i32 0, align 4
@M88E1000_PSCR_MDI_MANUAL_MODE = common dso_local global i32 0, align 4
@M88E1000_PSCR_MDIX_MANUAL_MODE = common dso_local global i32 0, align 4
@M88E1000_PSCR_AUTO_X_1000T = common dso_local global i32 0, align 4
@M88E1000_PSCR_POLARITY_REVERSAL = common dso_local global i32 0, align 4
@E1000_REVISION_4 = common dso_local global i64 0, align 8
@M88E1000_EXT_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@M88E1000_EPSCR_TX_CLK_25 = common dso_local global i32 0, align 4
@E1000_REVISION_2 = common dso_local global i64 0, align 8
@M88E1111_I_PHY_ID = common dso_local global i64 0, align 8
@M88EC018_EPSCR_DOWNSHIFT_COUNTER_MASK = common dso_local global i32 0, align 4
@M88EC018_EPSCR_DOWNSHIFT_COUNTER_5X = common dso_local global i32 0, align 4
@M88E1000_EPSCR_MASTER_DOWNSHIFT_MASK = common dso_local global i32 0, align 4
@M88E1000_EPSCR_SLAVE_DOWNSHIFT_MASK = common dso_local global i32 0, align 4
@M88E1000_EPSCR_MASTER_DOWNSHIFT_1X = common dso_local global i32 0, align 4
@M88E1000_EPSCR_SLAVE_DOWNSHIFT_1X = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Error committing the PHY changes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @igb_copper_link_setup_m88(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_phy_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 0
  store %struct.e1000_phy_info* %7, %struct.e1000_phy_info** %3, align 8
  %8 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %154

13:                                               ; preds = %1
  %14 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %16, align 8
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %19 = bitcast %struct.e1000_hw* %18 to %struct.e1000_hw.1*
  %20 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %21 = call i64 %17(%struct.e1000_hw.1* %19, i32 %20, i32* %5)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  br label %154

25:                                               ; preds = %13
  %26 = load i32, i32* @M88E1000_PSCR_ASSERT_CRS_ON_TX, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @M88E1000_PSCR_AUTO_X_MODE, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %34 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %49 [
    i32 1, label %36
    i32 2, label %40
    i32 3, label %44
    i32 0, label %48
  ]

36:                                               ; preds = %25
  %37 = load i32, i32* @M88E1000_PSCR_MDI_MANUAL_MODE, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %53

40:                                               ; preds = %25
  %41 = load i32, i32* @M88E1000_PSCR_MDIX_MANUAL_MODE, align 4
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %53

44:                                               ; preds = %25
  %45 = load i32, i32* @M88E1000_PSCR_AUTO_X_1000T, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %53

48:                                               ; preds = %25
  br label %49

49:                                               ; preds = %25, %48
  %50 = load i32, i32* @M88E1000_PSCR_AUTO_X_MODE, align 4
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %49, %44, %40, %36
  %54 = load i32, i32* @M88E1000_PSCR_POLARITY_REVERSAL, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %59 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %66

62:                                               ; preds = %53
  %63 = load i32, i32* @M88E1000_PSCR_POLARITY_REVERSAL, align 4
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %62, %53
  %67 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %68 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %69, align 8
  %71 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %72 = bitcast %struct.e1000_hw* %71 to %struct.e1000_hw.0*
  %73 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i64 %70(%struct.e1000_hw.0* %72, i32 %73, i32 %74)
  store i64 %75, i64* %4, align 8
  %76 = load i64, i64* %4, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %66
  br label %154

79:                                               ; preds = %66
  %80 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %81 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @E1000_REVISION_4, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %146

85:                                               ; preds = %79
  %86 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %87 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %88, align 8
  %90 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %91 = bitcast %struct.e1000_hw* %90 to %struct.e1000_hw.1*
  %92 = load i32, i32* @M88E1000_EXT_PHY_SPEC_CTRL, align 4
  %93 = call i64 %89(%struct.e1000_hw.1* %91, i32 %92, i32* %5)
  store i64 %93, i64* %4, align 8
  %94 = load i64, i64* %4, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %85
  br label %154

97:                                               ; preds = %85
  %98 = load i32, i32* @M88E1000_EPSCR_TX_CLK_25, align 4
  %99 = load i32, i32* %5, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %5, align 4
  %101 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %102 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @E1000_REVISION_2, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %120

106:                                              ; preds = %97
  %107 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %108 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @M88E1111_I_PHY_ID, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %106
  %113 = load i32, i32* @M88EC018_EPSCR_DOWNSHIFT_COUNTER_MASK, align 4
  %114 = xor i32 %113, -1
  %115 = load i32, i32* %5, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* @M88EC018_EPSCR_DOWNSHIFT_COUNTER_5X, align 4
  %118 = load i32, i32* %5, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %5, align 4
  br label %132

120:                                              ; preds = %106, %97
  %121 = load i32, i32* @M88E1000_EPSCR_MASTER_DOWNSHIFT_MASK, align 4
  %122 = load i32, i32* @M88E1000_EPSCR_SLAVE_DOWNSHIFT_MASK, align 4
  %123 = or i32 %121, %122
  %124 = xor i32 %123, -1
  %125 = load i32, i32* %5, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* @M88E1000_EPSCR_MASTER_DOWNSHIFT_1X, align 4
  %128 = load i32, i32* @M88E1000_EPSCR_SLAVE_DOWNSHIFT_1X, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* %5, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %120, %112
  %133 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %134 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %135, align 8
  %137 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %138 = bitcast %struct.e1000_hw* %137 to %struct.e1000_hw.0*
  %139 = load i32, i32* @M88E1000_EXT_PHY_SPEC_CTRL, align 4
  %140 = load i32, i32* %5, align 4
  %141 = call i64 %136(%struct.e1000_hw.0* %138, i32 %139, i32 %140)
  store i64 %141, i64* %4, align 8
  %142 = load i64, i64* %4, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %132
  br label %154

145:                                              ; preds = %132
  br label %146

146:                                              ; preds = %145, %79
  %147 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %148 = call i64 @igb_phy_sw_reset(%struct.e1000_hw* %147)
  store i64 %148, i64* %4, align 8
  %149 = load i64, i64* %4, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %146
  %152 = call i32 @hw_dbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %154

153:                                              ; preds = %146
  br label %154

154:                                              ; preds = %153, %151, %144, %96, %78, %24, %12
  %155 = load i64, i64* %4, align 8
  ret i64 %155
}

declare dso_local i64 @igb_phy_sw_reset(%struct.e1000_hw*) #1

declare dso_local i32 @hw_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
