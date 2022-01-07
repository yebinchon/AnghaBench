; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_set_eee_i354.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_set_eee_i354.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_5__, %struct.e1000_phy_info }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.e1000_phy_info = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@e1000_media_type_copper = common dso_local global i64 0, align 8
@M88E1543_E_PHY_ID = common dso_local global i64 0, align 8
@M88E1512_E_PHY_ID = common dso_local global i64 0, align 8
@E1000_M88E1543_PAGE_ADDR = common dso_local global i32 0, align 4
@E1000_M88E1543_EEE_CTRL_1 = common dso_local global i32 0, align 4
@E1000_M88E1543_EEE_CTRL_1_MS = common dso_local global i32 0, align 4
@E1000_EEE_ADV_ADDR_I354 = common dso_local global i32 0, align 4
@E1000_EEE_ADV_DEV_I354 = common dso_local global i32 0, align 4
@E1000_EEE_ADV_100_SUPPORTED = common dso_local global i32 0, align 4
@E1000_EEE_ADV_1000_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @igb_set_eee_i354(%struct.e1000_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.e1000_phy_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 1
  store %struct.e1000_phy_info* %11, %struct.e1000_phy_info** %7, align 8
  store i64 0, i64* %8, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @e1000_media_type_copper, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %30, label %18

18:                                               ; preds = %3
  %19 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %7, align 8
  %20 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @M88E1543_E_PHY_ID, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %7, align 8
  %26 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @M88E1512_E_PHY_ID, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %3
  br label %149

31:                                               ; preds = %24, %18
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %33 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %128, label %38

38:                                               ; preds = %31
  %39 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %7, align 8
  %40 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %41, align 8
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %44 = bitcast %struct.e1000_hw* %43 to %struct.e1000_hw.0*
  %45 = load i32, i32* @E1000_M88E1543_PAGE_ADDR, align 4
  %46 = call i64 %42(%struct.e1000_hw.0* %44, i32 %45, i32 18)
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %149

50:                                               ; preds = %38
  %51 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %7, align 8
  %52 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %53, align 8
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %56 = bitcast %struct.e1000_hw* %55 to %struct.e1000_hw.1*
  %57 = load i32, i32* @E1000_M88E1543_EEE_CTRL_1, align 4
  %58 = call i64 %54(%struct.e1000_hw.1* %56, i32 %57, i32* %9)
  store i64 %58, i64* %8, align 8
  %59 = load i64, i64* %8, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  br label %149

62:                                               ; preds = %50
  %63 = load i32, i32* @E1000_M88E1543_EEE_CTRL_1_MS, align 4
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  %66 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %7, align 8
  %67 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %68, align 8
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %71 = bitcast %struct.e1000_hw* %70 to %struct.e1000_hw.0*
  %72 = load i32, i32* @E1000_M88E1543_EEE_CTRL_1, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i64 %69(%struct.e1000_hw.0* %71, i32 %72, i32 %73)
  store i64 %74, i64* %8, align 8
  %75 = load i64, i64* %8, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %62
  br label %149

78:                                               ; preds = %62
  %79 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %7, align 8
  %80 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %81, align 8
  %83 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %84 = bitcast %struct.e1000_hw* %83 to %struct.e1000_hw.0*
  %85 = load i32, i32* @E1000_M88E1543_PAGE_ADDR, align 4
  %86 = call i64 %82(%struct.e1000_hw.0* %84, i32 %85, i32 0)
  store i64 %86, i64* %8, align 8
  %87 = load i64, i64* %8, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %78
  br label %149

90:                                               ; preds = %78
  %91 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %92 = load i32, i32* @E1000_EEE_ADV_ADDR_I354, align 4
  %93 = load i32, i32* @E1000_EEE_ADV_DEV_I354, align 4
  %94 = call i64 @igb_read_xmdio_reg(%struct.e1000_hw* %91, i32 %92, i32 %93, i32* %9)
  store i64 %94, i64* %8, align 8
  %95 = load i64, i64* %8, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %149

98:                                               ; preds = %90
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load i32, i32* @E1000_EEE_ADV_100_SUPPORTED, align 4
  %103 = load i32, i32* %9, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %9, align 4
  br label %110

105:                                              ; preds = %98
  %106 = load i32, i32* @E1000_EEE_ADV_100_SUPPORTED, align 4
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %9, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %105, %101
  %111 = load i32, i32* %5, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i32, i32* @E1000_EEE_ADV_1000_SUPPORTED, align 4
  %115 = load i32, i32* %9, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %9, align 4
  br label %122

117:                                              ; preds = %110
  %118 = load i32, i32* @E1000_EEE_ADV_1000_SUPPORTED, align 4
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %9, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %117, %113
  %123 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %124 = load i32, i32* @E1000_EEE_ADV_ADDR_I354, align 4
  %125 = load i32, i32* @E1000_EEE_ADV_DEV_I354, align 4
  %126 = load i32, i32* %9, align 4
  %127 = call i64 @igb_write_xmdio_reg(%struct.e1000_hw* %123, i32 %124, i32 %125, i32 %126)
  store i64 %127, i64* %8, align 8
  br label %148

128:                                              ; preds = %31
  %129 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %130 = load i32, i32* @E1000_EEE_ADV_ADDR_I354, align 4
  %131 = load i32, i32* @E1000_EEE_ADV_DEV_I354, align 4
  %132 = call i64 @igb_read_xmdio_reg(%struct.e1000_hw* %129, i32 %130, i32 %131, i32* %9)
  store i64 %132, i64* %8, align 8
  %133 = load i64, i64* %8, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  br label %149

136:                                              ; preds = %128
  %137 = load i32, i32* @E1000_EEE_ADV_100_SUPPORTED, align 4
  %138 = load i32, i32* @E1000_EEE_ADV_1000_SUPPORTED, align 4
  %139 = or i32 %137, %138
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %9, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %9, align 4
  %143 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %144 = load i32, i32* @E1000_EEE_ADV_ADDR_I354, align 4
  %145 = load i32, i32* @E1000_EEE_ADV_DEV_I354, align 4
  %146 = load i32, i32* %9, align 4
  %147 = call i64 @igb_write_xmdio_reg(%struct.e1000_hw* %143, i32 %144, i32 %145, i32 %146)
  store i64 %147, i64* %8, align 8
  br label %148

148:                                              ; preds = %136, %122
  br label %149

149:                                              ; preds = %148, %135, %97, %89, %77, %61, %49, %30
  %150 = load i64, i64* %8, align 8
  ret i64 %150
}

declare dso_local i64 @igb_read_xmdio_reg(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i64 @igb_write_xmdio_reg(%struct.e1000_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
