; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_init_phy_workarounds_pchlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_init_phy_workarounds_pchlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_7__, %struct.e1000_adapter* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.2*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.e1000_adapter = type { i32 }

@FWSM = common dso_local global i32 0, align 4
@e1000_ulp_state_unknown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to initialize PHY flow\0A\00", align 1
@CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_FORCE_SMBUS = common dso_local global i32 0, align 4
@E1000_ICH_FWSM_FW_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Required LANPHYPC toggle blocked by ME\0A\00", align 1
@E1000_ERR_PHY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Reset blocked by ME\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"ME blocked access to PHY after reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_init_phy_workarounds_pchlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_init_phy_workarounds_pchlan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 3
  %9 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  store %struct.e1000_adapter* %9, %struct.e1000_adapter** %3, align 8
  %10 = load i32, i32* @FWSM, align 4
  %11 = call i32 @er32(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %13 = call i32 @e1000_gate_hw_phy_config_ich8lan(%struct.e1000_hw* %12, i32 1)
  %14 = load i32, i32* @e1000_ulp_state_unknown, align 4
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32 %14, i32* %18, align 8
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %20 = call i32 @e1000_disable_ulp_lpt_lp(%struct.e1000_hw* %19, i32 1)
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %22 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load i64 (%struct.e1000_hw.2*)*, i64 (%struct.e1000_hw.2*)** %24, align 8
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %27 = bitcast %struct.e1000_hw* %26 to %struct.e1000_hw.2*
  %28 = call i64 %25(%struct.e1000_hw.2* %27)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = call i32 @e_dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %161

33:                                               ; preds = %1
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %35 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %116 [
    i32 130, label %38
    i32 129, label %38
    i32 131, label %38
    i32 132, label %53
    i32 128, label %59
  ]

38:                                               ; preds = %33, %33, %33
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %40 = call i32 @e1000_phy_is_accessible_pchlan(%struct.e1000_hw* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %117

43:                                               ; preds = %38
  %44 = load i32, i32* @CTRL_EXT, align 4
  %45 = call i32 @er32(i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* @E1000_CTRL_EXT_FORCE_SMBUS, align 4
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @CTRL_EXT, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @ew32(i32 %49, i32 %50)
  %52 = call i32 @msleep(i32 50)
  br label %53

53:                                               ; preds = %33, %43
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %55 = call i32 @e1000_phy_is_accessible_pchlan(%struct.e1000_hw* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %117

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %33, %58
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %61 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 128
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @E1000_ICH_FWSM_FW_VALID, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %117

71:                                               ; preds = %65, %59
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %73 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %75, align 8
  %77 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %78 = bitcast %struct.e1000_hw* %77 to %struct.e1000_hw.0*
  %79 = call i64 %76(%struct.e1000_hw.0* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %71
  %82 = call i32 @e_dbg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i64, i64* @E1000_ERR_PHY, align 8
  %84 = sub nsw i64 0, %83
  store i64 %84, i64* %6, align 8
  br label %117

85:                                               ; preds = %71
  %86 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %87 = call i32 @e1000_toggle_lanphypc_pch_lpt(%struct.e1000_hw* %86)
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %89 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp sge i32 %91, 130
  br i1 %92, label %93, label %115

93:                                               ; preds = %85
  %94 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %95 = call i32 @e1000_phy_is_accessible_pchlan(%struct.e1000_hw* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %117

98:                                               ; preds = %93
  %99 = load i32, i32* @CTRL_EXT, align 4
  %100 = call i32 @er32(i32 %99)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* @E1000_CTRL_EXT_FORCE_SMBUS, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %4, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* @CTRL_EXT, align 4
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @ew32(i32 %105, i32 %106)
  %108 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %109 = call i32 @e1000_phy_is_accessible_pchlan(%struct.e1000_hw* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %98
  br label %117

112:                                              ; preds = %98
  %113 = load i64, i64* @E1000_ERR_PHY, align 8
  %114 = sub nsw i64 0, %113
  store i64 %114, i64* %6, align 8
  br label %115

115:                                              ; preds = %112, %85
  br label %117

116:                                              ; preds = %33
  br label %117

117:                                              ; preds = %116, %115, %111, %97, %81, %70, %57, %42
  %118 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %119 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %121, align 8
  %123 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %124 = bitcast %struct.e1000_hw* %123 to %struct.e1000_hw.1*
  %125 = call i32 %122(%struct.e1000_hw.1* %124)
  %126 = load i64, i64* %6, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %160, label %128

128:                                              ; preds = %117
  %129 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %130 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %132, align 8
  %134 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %135 = bitcast %struct.e1000_hw* %134 to %struct.e1000_hw.0*
  %136 = call i64 %133(%struct.e1000_hw.0* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %128
  %139 = call i32 @e_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %161

140:                                              ; preds = %128
  %141 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %142 = call i64 @e1000e_phy_hw_reset_generic(%struct.e1000_hw* %141)
  store i64 %142, i64* %6, align 8
  %143 = load i64, i64* %6, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %161

146:                                              ; preds = %140
  %147 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %148 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %150, align 8
  %152 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %153 = bitcast %struct.e1000_hw* %152 to %struct.e1000_hw.0*
  %154 = call i64 %151(%struct.e1000_hw.0* %153)
  store i64 %154, i64* %6, align 8
  %155 = load i64, i64* %6, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %146
  %158 = call i32 @e_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %159

159:                                              ; preds = %157, %146
  br label %160

160:                                              ; preds = %159, %117
  br label %161

161:                                              ; preds = %160, %145, %138, %31
  %162 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %163 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp eq i32 %165, 132
  br i1 %166, label %167, label %176

167:                                              ; preds = %161
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* @E1000_ICH_FWSM_FW_VALID, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %167
  %173 = call i32 @usleep_range(i32 10000, i32 11000)
  %174 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %175 = call i32 @e1000_gate_hw_phy_config_ich8lan(%struct.e1000_hw* %174, i32 0)
  br label %176

176:                                              ; preds = %172, %167, %161
  %177 = load i64, i64* %6, align 8
  ret i64 %177
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e1000_gate_hw_phy_config_ich8lan(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e1000_disable_ulp_lpt_lp(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @e1000_phy_is_accessible_pchlan(%struct.e1000_hw*) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @e1000_toggle_lanphypc_pch_lpt(%struct.e1000_hw*) #1

declare dso_local i32 @e_err(i8*) #1

declare dso_local i64 @e1000e_phy_hw_reset_generic(%struct.e1000_hw*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
