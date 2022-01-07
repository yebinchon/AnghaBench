; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_phy_m88_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_phy_m88_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64 }
%struct.e1000_phy_info = type { i8*, i8*, i64, i64, i32, i32, i32, i64 }

@M88E1000_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@M88E1000_PSCR_10BT_EXT_DIST_ENABLE = common dso_local global i32 0, align 4
@M88E1000_PSCR_10BT_EXT_DIST_ENABLE_SHIFT = common dso_local global i32 0, align 4
@e1000_10bt_ext_dist_enable_lower = common dso_local global i32 0, align 4
@e1000_10bt_ext_dist_enable_normal = common dso_local global i32 0, align 4
@M88E1000_PSCR_POLARITY_REVERSAL = common dso_local global i32 0, align 4
@M88E1000_PSCR_POLARITY_REVERSAL_SHIFT = common dso_local global i32 0, align 4
@e1000_polarity_reversal_disabled = common dso_local global i32 0, align 4
@e1000_polarity_reversal_enabled = common dso_local global i32 0, align 4
@M88E1000_PHY_SPEC_STATUS = common dso_local global i32 0, align 4
@M88E1000_PSSR_MDIX = common dso_local global i32 0, align 4
@M88E1000_PSSR_MDIX_SHIFT = common dso_local global i32 0, align 4
@M88E1000_PSSR_SPEED = common dso_local global i32 0, align 4
@M88E1000_PSSR_1000MBS = common dso_local global i32 0, align 4
@M88E1000_PSSR_CABLE_LENGTH = common dso_local global i32 0, align 4
@M88E1000_PSSR_CABLE_LENGTH_SHIFT = common dso_local global i32 0, align 4
@PHY_1000T_STATUS = common dso_local global i32 0, align 4
@SR_1000T_LOCAL_RX_STATUS = common dso_local global i32 0, align 4
@SR_1000T_LOCAL_RX_STATUS_SHIFT = common dso_local global i32 0, align 4
@e1000_1000t_rx_status_ok = common dso_local global i8* null, align 8
@e1000_1000t_rx_status_not_ok = common dso_local global i8* null, align 8
@SR_1000T_REMOTE_RX_STATUS = common dso_local global i32 0, align 4
@SR_1000T_REMOTE_RX_STATUS_SHIFT = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, %struct.e1000_phy_info*)* @e1000_phy_m88_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_phy_m88_get_info(%struct.e1000_hw* %0, %struct.e1000_phy_info* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca %struct.e1000_phy_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store %struct.e1000_phy_info* %1, %struct.e1000_phy_info** %5, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %13 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %12, i32 0, i32 7
  store i64 %11, i64* %13, align 8
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %15 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %16 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %14, i32 %15, i32* %7)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i64, i64* %6, align 8
  store i64 %20, i64* %3, align 8
  br label %128

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @M88E1000_PSCR_10BT_EXT_DIST_ENABLE, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @M88E1000_PSCR_10BT_EXT_DIST_ENABLE_SHIFT, align 4
  %26 = ashr i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @e1000_10bt_ext_dist_enable_lower, align 4
  br label %32

30:                                               ; preds = %21
  %31 = load i32, i32* @e1000_10bt_ext_dist_enable_normal, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %35 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @M88E1000_PSCR_POLARITY_REVERSAL, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @M88E1000_PSCR_POLARITY_REVERSAL_SHIFT, align 4
  %40 = ashr i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* @e1000_polarity_reversal_disabled, align 4
  br label %46

44:                                               ; preds = %32
  %45 = load i32, i32* @e1000_polarity_reversal_enabled, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %49 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %51 = call i64 @e1000_check_polarity(%struct.e1000_hw* %50, i32* %8)
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* %6, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i64, i64* %6, align 8
  store i64 %55, i64* %3, align 8
  br label %128

56:                                               ; preds = %46
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %59 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %61 = load i32, i32* @M88E1000_PHY_SPEC_STATUS, align 4
  %62 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %60, i32 %61, i32* %7)
  store i64 %62, i64* %6, align 8
  %63 = load i64, i64* %6, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i64, i64* %6, align 8
  store i64 %66, i64* %3, align 8
  br label %128

67:                                               ; preds = %56
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @M88E1000_PSSR_MDIX, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @M88E1000_PSSR_MDIX_SHIFT, align 4
  %72 = ashr i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %75 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %74, i32 0, i32 3
  store i64 %73, i64* %75, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @M88E1000_PSSR_SPEED, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* @M88E1000_PSSR_1000MBS, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %126

81:                                               ; preds = %67
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @M88E1000_PSSR_CABLE_LENGTH, align 4
  %84 = and i32 %82, %83
  %85 = load i32, i32* @M88E1000_PSSR_CABLE_LENGTH_SHIFT, align 4
  %86 = ashr i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %89 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %88, i32 0, i32 2
  store i64 %87, i64* %89, align 8
  %90 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %91 = load i32, i32* @PHY_1000T_STATUS, align 4
  %92 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %90, i32 %91, i32* %7)
  store i64 %92, i64* %6, align 8
  %93 = load i64, i64* %6, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %81
  %96 = load i64, i64* %6, align 8
  store i64 %96, i64* %3, align 8
  br label %128

97:                                               ; preds = %81
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @SR_1000T_LOCAL_RX_STATUS, align 4
  %100 = and i32 %98, %99
  %101 = load i32, i32* @SR_1000T_LOCAL_RX_STATUS_SHIFT, align 4
  %102 = ashr i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i8*, i8** @e1000_1000t_rx_status_ok, align 8
  br label %108

106:                                              ; preds = %97
  %107 = load i8*, i8** @e1000_1000t_rx_status_not_ok, align 8
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i8* [ %105, %104 ], [ %107, %106 ]
  %110 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %111 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %110, i32 0, i32 1
  store i8* %109, i8** %111, align 8
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @SR_1000T_REMOTE_RX_STATUS, align 4
  %114 = and i32 %112, %113
  %115 = load i32, i32* @SR_1000T_REMOTE_RX_STATUS_SHIFT, align 4
  %116 = ashr i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %108
  %119 = load i8*, i8** @e1000_1000t_rx_status_ok, align 8
  br label %122

120:                                              ; preds = %108
  %121 = load i8*, i8** @e1000_1000t_rx_status_not_ok, align 8
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i8* [ %119, %118 ], [ %121, %120 ]
  %124 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %125 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  br label %126

126:                                              ; preds = %122, %67
  %127 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %127, i64* %3, align 8
  br label %128

128:                                              ; preds = %126, %95, %65, %54, %19
  %129 = load i64, i64* %3, align 8
  ret i64 %129
}

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_check_polarity(%struct.e1000_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
