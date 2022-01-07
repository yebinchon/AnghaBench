; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_phy_is_accessible_pchlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_phy_is_accessible_pchlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@MII_PHYSID1 = common dso_local global i32 0, align 4
@MII_PHYSID2 = common dso_local global i32 0, align 4
@PHY_REVISION_MASK = common dso_local global i32 0, align 4
@e1000_pch_lpt = common dso_local global i64 0, align 8
@FWSM = common dso_local global i32 0, align 4
@E1000_ICH_FWSM_FW_VALID = common dso_local global i32 0, align 4
@CV_SMB_CTRL = common dso_local global i32 0, align 4
@CV_SMB_CTRL_FORCE_SMBUS = common dso_local global i32 0, align 4
@CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_FORCE_SMBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_phy_is_accessible_pchlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_phy_is_accessible_pchlan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %40, %1
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %43

12:                                               ; preds = %9
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %14 = load i32, i32* @MII_PHYSID1, align 4
  %15 = call i64 @e1e_rphy_locked(%struct.e1000_hw* %13, i32 %14, i32* %4)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 65535
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %12
  br label %40

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = shl i32 %23, 16
  store i32 %24, i32* %5, align 4
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %26 = load i32, i32* @MII_PHYSID2, align 4
  %27 = call i64 @e1e_rphy_locked(%struct.e1000_hw* %25, i32 %26, i32* %4)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 65535
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %22
  store i32 0, i32* %5, align 4
  br label %40

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @PHY_REVISION_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %43

40:                                               ; preds = %33, %21
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %9

43:                                               ; preds = %34, %9
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %45 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %51 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %111

57:                                               ; preds = %49
  br label %74

58:                                               ; preds = %43
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %58
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %64 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @PHY_REVISION_MASK, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %66, %68
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %71 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  br label %111

73:                                               ; preds = %58
  br label %74

74:                                               ; preds = %73, %57
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %76 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @e1000_pch_lpt, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %106

81:                                               ; preds = %74
  %82 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %83 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %85, align 8
  %87 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %88 = bitcast %struct.e1000_hw* %87 to %struct.e1000_hw.1*
  %89 = call i32 %86(%struct.e1000_hw.1* %88)
  %90 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %91 = call i64 @e1000_set_mdio_slow_mode_hv(%struct.e1000_hw* %90)
  store i64 %91, i64* %6, align 8
  %92 = load i64, i64* %6, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %81
  %95 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %96 = call i64 @e1000e_get_phy_id(%struct.e1000_hw* %95)
  store i64 %96, i64* %6, align 8
  br label %97

97:                                               ; preds = %94, %81
  %98 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %99 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %101, align 8
  %103 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %104 = bitcast %struct.e1000_hw* %103 to %struct.e1000_hw.0*
  %105 = call i32 %102(%struct.e1000_hw.0* %104)
  br label %106

106:                                              ; preds = %97, %74
  %107 = load i64, i64* %6, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i32 0, i32* %2, align 4
  br label %147

110:                                              ; preds = %106
  br label %111

111:                                              ; preds = %110, %61, %56
  %112 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %113 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @e1000_pch_lpt, align 8
  %117 = icmp sge i64 %115, %116
  br i1 %117, label %118, label %146

118:                                              ; preds = %111
  %119 = load i32, i32* @FWSM, align 4
  %120 = call i32 @er32(i32 %119)
  %121 = load i32, i32* @E1000_ICH_FWSM_FW_VALID, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %145, label %124

124:                                              ; preds = %118
  %125 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %126 = load i32, i32* @CV_SMB_CTRL, align 4
  %127 = call i64 @e1e_rphy_locked(%struct.e1000_hw* %125, i32 %126, i32* %4)
  %128 = load i32, i32* @CV_SMB_CTRL_FORCE_SMBUS, align 4
  %129 = xor i32 %128, -1
  %130 = load i32, i32* %4, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %4, align 4
  %132 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %133 = load i32, i32* @CV_SMB_CTRL, align 4
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @e1e_wphy_locked(%struct.e1000_hw* %132, i32 %133, i32 %134)
  %136 = load i32, i32* @CTRL_EXT, align 4
  %137 = call i32 @er32(i32 %136)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* @E1000_CTRL_EXT_FORCE_SMBUS, align 4
  %139 = xor i32 %138, -1
  %140 = load i32, i32* %8, align 4
  %141 = and i32 %140, %139
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* @CTRL_EXT, align 4
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @ew32(i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %124, %118
  br label %146

146:                                              ; preds = %145, %111
  store i32 1, i32* %2, align 4
  br label %147

147:                                              ; preds = %146, %109
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i64 @e1e_rphy_locked(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_set_mdio_slow_mode_hv(%struct.e1000_hw*) #1

declare dso_local i64 @e1000e_get_phy_id(%struct.e1000_hw*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e1e_wphy_locked(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @ew32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
