; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_phy.c_igb_set_d3_lplu_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_phy.c_igb_set_d3_lplu_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@IGP02E1000_PHY_POWER_MGMT = common dso_local global i32 0, align 4
@IGP02E1000_PM_D3_LPLU = common dso_local global i32 0, align 4
@e1000_smart_speed_on = common dso_local global i64 0, align 8
@IGP01E1000_PHY_PORT_CONFIG = common dso_local global i32 0, align 4
@IGP01E1000_PSCFR_SMART_SPEED = common dso_local global i32 0, align 4
@e1000_smart_speed_off = common dso_local global i64 0, align 8
@E1000_ALL_SPEED_DUPLEX = common dso_local global i64 0, align 8
@E1000_ALL_NOT_GIG = common dso_local global i64 0, align 8
@E1000_ALL_10_SPEED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @igb_set_d3_lplu_state(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_phy_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  store %struct.e1000_phy_info* %9, %struct.e1000_phy_info** %5, align 8
  store i64 0, i64* %6, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %13, align 8
  %15 = icmp ne i64 (%struct.e1000_hw.1*, i32, i32*)* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %184

17:                                               ; preds = %2
  %18 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %19 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %20, align 8
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %23 = bitcast %struct.e1000_hw* %22 to %struct.e1000_hw.1*
  %24 = load i32, i32* @IGP02E1000_PHY_POWER_MGMT, align 4
  %25 = call i64 %21(%struct.e1000_hw.1* %23, i32 %24, i32* %7)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %184

29:                                               ; preds = %17
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %122, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @IGP02E1000_PM_D3_LPLU, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %38 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %39, align 8
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %42 = bitcast %struct.e1000_hw* %41 to %struct.e1000_hw.0*
  %43 = load i32, i32* @IGP02E1000_PHY_POWER_MGMT, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i64 %40(%struct.e1000_hw.0* %42, i32 %43, i32 %44)
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %32
  br label %184

49:                                               ; preds = %32
  %50 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %51 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @e1000_smart_speed_on, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %84

55:                                               ; preds = %49
  %56 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %57 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %58, align 8
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %61 = bitcast %struct.e1000_hw* %60 to %struct.e1000_hw.1*
  %62 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %63 = call i64 %59(%struct.e1000_hw.1* %61, i32 %62, i32* %7)
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* %6, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %184

67:                                               ; preds = %55
  %68 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  %71 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %72 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %73, align 8
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %76 = bitcast %struct.e1000_hw* %75 to %struct.e1000_hw.0*
  %77 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i64 %74(%struct.e1000_hw.0* %76, i32 %77, i32 %78)
  store i64 %79, i64* %6, align 8
  %80 = load i64, i64* %6, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %67
  br label %184

83:                                               ; preds = %67
  br label %121

84:                                               ; preds = %49
  %85 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %86 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @e1000_smart_speed_off, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %120

90:                                               ; preds = %84
  %91 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %92 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %93, align 8
  %95 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %96 = bitcast %struct.e1000_hw* %95 to %struct.e1000_hw.1*
  %97 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %98 = call i64 %94(%struct.e1000_hw.1* %96, i32 %97, i32* %7)
  store i64 %98, i64* %6, align 8
  %99 = load i64, i64* %6, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %90
  br label %184

102:                                              ; preds = %90
  %103 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %7, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %7, align 4
  %107 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %108 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %109, align 8
  %111 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %112 = bitcast %struct.e1000_hw* %111 to %struct.e1000_hw.0*
  %113 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i64 %110(%struct.e1000_hw.0* %112, i32 %113, i32 %114)
  store i64 %115, i64* %6, align 8
  %116 = load i64, i64* %6, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %102
  br label %184

119:                                              ; preds = %102
  br label %120

120:                                              ; preds = %119, %84
  br label %121

121:                                              ; preds = %120, %83
  br label %183

122:                                              ; preds = %29
  %123 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %124 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @E1000_ALL_SPEED_DUPLEX, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %140, label %128

128:                                              ; preds = %122
  %129 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %130 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @E1000_ALL_NOT_GIG, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %140, label %134

134:                                              ; preds = %128
  %135 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %136 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @E1000_ALL_10_SPEED, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %182

140:                                              ; preds = %134, %128, %122
  %141 = load i32, i32* @IGP02E1000_PM_D3_LPLU, align 4
  %142 = load i32, i32* %7, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %7, align 4
  %144 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %145 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %146, align 8
  %148 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %149 = bitcast %struct.e1000_hw* %148 to %struct.e1000_hw.0*
  %150 = load i32, i32* @IGP02E1000_PHY_POWER_MGMT, align 4
  %151 = load i32, i32* %7, align 4
  %152 = call i64 %147(%struct.e1000_hw.0* %149, i32 %150, i32 %151)
  store i64 %152, i64* %6, align 8
  %153 = load i64, i64* %6, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %140
  br label %184

156:                                              ; preds = %140
  %157 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %158 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 1
  %160 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %159, align 8
  %161 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %162 = bitcast %struct.e1000_hw* %161 to %struct.e1000_hw.1*
  %163 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %164 = call i64 %160(%struct.e1000_hw.1* %162, i32 %163, i32* %7)
  store i64 %164, i64* %6, align 8
  %165 = load i64, i64* %6, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %156
  br label %184

168:                                              ; preds = %156
  %169 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %170 = xor i32 %169, -1
  %171 = load i32, i32* %7, align 4
  %172 = and i32 %171, %170
  store i32 %172, i32* %7, align 4
  %173 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %174 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  %176 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %175, align 8
  %177 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %178 = bitcast %struct.e1000_hw* %177 to %struct.e1000_hw.0*
  %179 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %180 = load i32, i32* %7, align 4
  %181 = call i64 %176(%struct.e1000_hw.0* %178, i32 %179, i32 %180)
  store i64 %181, i64* %6, align 8
  br label %182

182:                                              ; preds = %168, %134
  br label %183

183:                                              ; preds = %182, %121
  br label %184

184:                                              ; preds = %183, %167, %155, %118, %101, %82, %66, %48, %28, %16
  %185 = load i64, i64* %6, align 8
  ret i64 %185
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
