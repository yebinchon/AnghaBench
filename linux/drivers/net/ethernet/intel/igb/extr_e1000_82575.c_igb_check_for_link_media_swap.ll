; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_check_for_link_media_swap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_check_for_link_media_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_5__, %struct.e1000_phy_info }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.e1000_phy_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@E1000_M88E1112_PAGE_ADDR = common dso_local global i32 0, align 4
@E1000_M88E1112_STATUS = common dso_local global i32 0, align 4
@E1000_M88E1112_STATUS_LINK = common dso_local global i32 0, align 4
@E1000_MEDIA_PORT_COPPER = common dso_local global i64 0, align 8
@E1000_MEDIA_PORT_OTHER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @igb_check_for_link_media_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @igb_check_for_link_media_swap(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 1
  store %struct.e1000_phy_info* %9, %struct.e1000_phy_info** %4, align 8
  store i64 0, i64* %7, align 8
  %10 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %11 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %12, align 8
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %15 = bitcast %struct.e1000_hw* %14 to %struct.e1000_hw.0*
  %16 = load i32, i32* @E1000_M88E1112_PAGE_ADDR, align 4
  %17 = call i64 %13(%struct.e1000_hw.0* %15, i32 %16, i32 0)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i64, i64* %5, align 8
  store i64 %21, i64* %2, align 8
  br label %133

22:                                               ; preds = %1
  %23 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %24 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %25, align 8
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %28 = bitcast %struct.e1000_hw* %27 to %struct.e1000_hw.1*
  %29 = load i32, i32* @E1000_M88E1112_STATUS, align 4
  %30 = call i64 %26(%struct.e1000_hw.1* %28, i32 %29, i32* %6)
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i64, i64* %5, align 8
  store i64 %34, i64* %2, align 8
  br label %133

35:                                               ; preds = %22
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @E1000_M88E1112_STATUS_LINK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i64, i64* @E1000_MEDIA_PORT_COPPER, align 8
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %40, %35
  %43 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %44 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %45, align 8
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %48 = bitcast %struct.e1000_hw* %47 to %struct.e1000_hw.0*
  %49 = load i32, i32* @E1000_M88E1112_PAGE_ADDR, align 4
  %50 = call i64 %46(%struct.e1000_hw.0* %48, i32 %49, i32 1)
  store i64 %50, i64* %5, align 8
  %51 = load i64, i64* %5, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i64, i64* %5, align 8
  store i64 %54, i64* %2, align 8
  br label %133

55:                                               ; preds = %42
  %56 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %57 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %58, align 8
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %61 = bitcast %struct.e1000_hw* %60 to %struct.e1000_hw.1*
  %62 = load i32, i32* @E1000_M88E1112_STATUS, align 4
  %63 = call i64 %59(%struct.e1000_hw.1* %61, i32 %62, i32* %6)
  store i64 %63, i64* %5, align 8
  %64 = load i64, i64* %5, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %55
  %67 = load i64, i64* %5, align 8
  store i64 %67, i64* %2, align 8
  br label %133

68:                                               ; preds = %55
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @E1000_M88E1112_STATUS_LINK, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i64, i64* @E1000_MEDIA_PORT_OTHER, align 8
  store i64 %74, i64* %7, align 8
  br label %75

75:                                               ; preds = %73, %68
  %76 = load i64, i64* %7, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %75
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %80 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %7, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %78
  %87 = load i64, i64* %7, align 8
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %89 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store i64 %87, i64* %91, align 8
  %92 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %93 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  store i32 1, i32* %95, align 8
  br label %96

96:                                               ; preds = %86, %78, %75
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* @E1000_MEDIA_PORT_COPPER, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %116

100:                                              ; preds = %96
  %101 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %102 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %103, align 8
  %105 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %106 = bitcast %struct.e1000_hw* %105 to %struct.e1000_hw.0*
  %107 = load i32, i32* @E1000_M88E1112_PAGE_ADDR, align 4
  %108 = call i64 %104(%struct.e1000_hw.0* %106, i32 %107, i32 0)
  store i64 %108, i64* %5, align 8
  %109 = load i64, i64* %5, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %100
  %112 = load i64, i64* %5, align 8
  store i64 %112, i64* %2, align 8
  br label %133

113:                                              ; preds = %100
  %114 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %115 = call i32 @igb_check_for_link_82575(%struct.e1000_hw* %114)
  br label %132

116:                                              ; preds = %96
  %117 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %118 = call i32 @igb_check_for_link_82575(%struct.e1000_hw* %117)
  %119 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %120 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %121, align 8
  %123 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %124 = bitcast %struct.e1000_hw* %123 to %struct.e1000_hw.0*
  %125 = load i32, i32* @E1000_M88E1112_PAGE_ADDR, align 4
  %126 = call i64 %122(%struct.e1000_hw.0* %124, i32 %125, i32 0)
  store i64 %126, i64* %5, align 8
  %127 = load i64, i64* %5, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %116
  %130 = load i64, i64* %5, align 8
  store i64 %130, i64* %2, align 8
  br label %133

131:                                              ; preds = %116
  br label %132

132:                                              ; preds = %131, %113
  store i64 0, i64* %2, align 8
  br label %133

133:                                              ; preds = %132, %129, %111, %66, %53, %33, %20
  %134 = load i64, i64* %2, align 8
  ret i64 %134
}

declare dso_local i32 @igb_check_for_link_82575(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
