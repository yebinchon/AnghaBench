; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_copper_link_mgp_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_copper_link_mgp_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, i32, i64, i64, i64 }

@E1000_SUCCESS = common dso_local global i64 0, align 8
@M88E1000_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@M88E1000_PSCR_ASSERT_CRS_ON_TX = common dso_local global i32 0, align 4
@M88E1000_PSCR_AUTO_X_MODE = common dso_local global i32 0, align 4
@M88E1000_PSCR_MDI_MANUAL_MODE = common dso_local global i32 0, align 4
@M88E1000_PSCR_MDIX_MANUAL_MODE = common dso_local global i32 0, align 4
@M88E1000_PSCR_AUTO_X_1000T = common dso_local global i32 0, align 4
@M88E1000_PSCR_POLARITY_REVERSAL = common dso_local global i32 0, align 4
@M88E1011_I_REV_4 = common dso_local global i64 0, align 8
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
@.str = private unnamed_addr constant [25 x i8] c"Error Resetting the PHY\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_copper_link_mgp_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_copper_link_mgp_setup(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %11, i64* %2, align 8
  br label %148

12:                                               ; preds = %1
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %14 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %15 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %13, i32 %14, i32* %5)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i64, i64* %4, align 8
  store i64 %19, i64* %2, align 8
  br label %148

20:                                               ; preds = %12
  %21 = load i32, i32* @M88E1000_PSCR_ASSERT_CRS_ON_TX, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @M88E1000_PSCR_AUTO_X_MODE, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %29 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %44 [
    i32 1, label %31
    i32 2, label %35
    i32 3, label %39
    i32 0, label %43
  ]

31:                                               ; preds = %20
  %32 = load i32, i32* @M88E1000_PSCR_MDI_MANUAL_MODE, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %48

35:                                               ; preds = %20
  %36 = load i32, i32* @M88E1000_PSCR_MDIX_MANUAL_MODE, align 4
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %48

39:                                               ; preds = %20
  %40 = load i32, i32* @M88E1000_PSCR_AUTO_X_1000T, align 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %48

43:                                               ; preds = %20
  br label %44

44:                                               ; preds = %20, %43
  %45 = load i32, i32* @M88E1000_PSCR_AUTO_X_MODE, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %44, %39, %35, %31
  %49 = load i32, i32* @M88E1000_PSCR_POLARITY_REVERSAL, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %54 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = load i32, i32* @M88E1000_PSCR_POLARITY_REVERSAL, align 4
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %57, %48
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %63 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %62, i32 %63, i32 %64)
  store i64 %65, i64* %4, align 8
  %66 = load i64, i64* %4, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i64, i64* %4, align 8
  store i64 %69, i64* %2, align 8
  br label %148

70:                                               ; preds = %61
  %71 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %72 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @M88E1011_I_REV_4, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %138

76:                                               ; preds = %70
  %77 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %78 = load i32, i32* @M88E1000_EXT_PHY_SPEC_CTRL, align 4
  %79 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %77, i32 %78, i32* %5)
  store i64 %79, i64* %4, align 8
  %80 = load i64, i64* %4, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i64, i64* %4, align 8
  store i64 %83, i64* %2, align 8
  br label %148

84:                                               ; preds = %76
  %85 = load i32, i32* @M88E1000_EPSCR_TX_CLK_25, align 4
  %86 = load i32, i32* %5, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %5, align 4
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %89 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @E1000_REVISION_2, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %116

93:                                               ; preds = %84
  %94 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %95 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @M88E1111_I_PHY_ID, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %116

99:                                               ; preds = %93
  %100 = load i32, i32* @M88EC018_EPSCR_DOWNSHIFT_COUNTER_MASK, align 4
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %5, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* @M88EC018_EPSCR_DOWNSHIFT_COUNTER_5X, align 4
  %105 = load i32, i32* %5, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %5, align 4
  %107 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %108 = load i32, i32* @M88E1000_EXT_PHY_SPEC_CTRL, align 4
  %109 = load i32, i32* %5, align 4
  %110 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %107, i32 %108, i32 %109)
  store i64 %110, i64* %4, align 8
  %111 = load i64, i64* %4, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %99
  %114 = load i64, i64* %4, align 8
  store i64 %114, i64* %2, align 8
  br label %148

115:                                              ; preds = %99
  br label %137

116:                                              ; preds = %93, %84
  %117 = load i32, i32* @M88E1000_EPSCR_MASTER_DOWNSHIFT_MASK, align 4
  %118 = load i32, i32* @M88E1000_EPSCR_SLAVE_DOWNSHIFT_MASK, align 4
  %119 = or i32 %117, %118
  %120 = xor i32 %119, -1
  %121 = load i32, i32* %5, align 4
  %122 = and i32 %121, %120
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* @M88E1000_EPSCR_MASTER_DOWNSHIFT_1X, align 4
  %124 = load i32, i32* @M88E1000_EPSCR_SLAVE_DOWNSHIFT_1X, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* %5, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %5, align 4
  %128 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %129 = load i32, i32* @M88E1000_EXT_PHY_SPEC_CTRL, align 4
  %130 = load i32, i32* %5, align 4
  %131 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %128, i32 %129, i32 %130)
  store i64 %131, i64* %4, align 8
  %132 = load i64, i64* %4, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %116
  %135 = load i64, i64* %4, align 8
  store i64 %135, i64* %2, align 8
  br label %148

136:                                              ; preds = %116
  br label %137

137:                                              ; preds = %136, %115
  br label %138

138:                                              ; preds = %137, %70
  %139 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %140 = call i64 @e1000_phy_reset(%struct.e1000_hw* %139)
  store i64 %140, i64* %4, align 8
  %141 = load i64, i64* %4, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = call i32 @e_dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %145 = load i64, i64* %4, align 8
  store i64 %145, i64* %2, align 8
  br label %148

146:                                              ; preds = %138
  %147 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %147, i64* %2, align 8
  br label %148

148:                                              ; preds = %146, %143, %134, %113, %82, %68, %18, %10
  %149 = load i64, i64* %2, align 8
  ret i64 %149
}

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_write_phy_reg(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_phy_reset(%struct.e1000_hw*) #1

declare dso_local i32 @e_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
