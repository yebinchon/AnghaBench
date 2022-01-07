; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ethtool.c_e1000_loopback_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ethtool.c_e1000_loopback_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque
%struct.TYPE_4__ = type { i32, i32 }

@RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_LBM_TCVR = common dso_local global i32 0, align 4
@E1000_RCTL_LBM_MAC = common dso_local global i32 0, align 4
@FEXTNVM11 = common dso_local global i32 0, align 4
@E1000_FEXTNVM11_DISABLE_MULR_FIX = common dso_local global i32 0, align 4
@e1000_media_type_fiber = common dso_local global i32 0, align 4
@e1000_media_type_internal_serdes = common dso_local global i32 0, align 4
@CTRL_EXT = common dso_local global i32 0, align 4
@SCTL = common dso_local global i32 0, align 4
@E1000_SCTL_DISABLE_SERDES_LOOPBACK = common dso_local global i32 0, align 4
@e1000_phy_gg82563 = common dso_local global i32 0, align 4
@GG82563_PHY_KMRN_MODE_CTRL = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_LOOPBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*)* @e1000_loopback_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_loopback_cleanup(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %8 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %8, i32 0, i32 1
  store %struct.e1000_hw* %9, %struct.e1000_hw** %3, align 8
  %10 = load i32, i32* @RCTL, align 4
  %11 = call i32 @er32(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @E1000_RCTL_LBM_TCVR, align 4
  %13 = load i32, i32* @E1000_RCTL_LBM_MAC, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @RCTL, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @ew32(i32 %18, i32 %19)
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %22 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %86 [
    i32 128, label %25
    i32 129, label %25
    i32 132, label %42
    i32 131, label %65
    i32 130, label %65
  ]

25:                                               ; preds = %1, %1
  %26 = load i32, i32* @FEXTNVM11, align 4
  %27 = call i32 @er32(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @E1000_FEXTNVM11_DISABLE_MULR_FIX, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @FEXTNVM11, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @ew32(i32 %32, i32 %33)
  %35 = call i32 @TARC(i32 0)
  %36 = call i32 @er32(i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, -805306369
  store i32 %38, i32* %6, align 4
  %39 = call i32 @TARC(i32 0)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @ew32(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %1, %25
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %44 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @e1000_media_type_fiber, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %56, label %49

49:                                               ; preds = %42
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %51 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @e1000_media_type_internal_serdes, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %49, %42
  %57 = load i32, i32* @CTRL_EXT, align 4
  %58 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %59 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ew32(i32 %57, i32 %60)
  %62 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %63 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  br label %64

64:                                               ; preds = %56, %49
  br label %65

65:                                               ; preds = %1, %1, %64
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %67 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @e1000_media_type_fiber, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %79, label %72

72:                                               ; preds = %65
  %73 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %74 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @e1000_media_type_internal_serdes, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %72, %65
  %80 = load i32, i32* @SCTL, align 4
  %81 = load i32, i32* @E1000_SCTL_DISABLE_SERDES_LOOPBACK, align 4
  %82 = call i32 @ew32(i32 %80, i32 %81)
  %83 = call i32 (...) @e1e_flush()
  %84 = call i32 @usleep_range(i32 10000, i32 11000)
  br label %134

85:                                               ; preds = %72
  br label %86

86:                                               ; preds = %1, %85
  %87 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %88 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  store i32 1, i32* %89, align 4
  %90 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %91 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @e1000_phy_gg82563, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %86
  %97 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %98 = load i32, i32* @GG82563_PHY_KMRN_MODE_CTRL, align 4
  %99 = call i32 @e1e_wphy(%struct.e1000_hw* %97, i32 %98, i32 384)
  br label %100

100:                                              ; preds = %96, %86
  %101 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %102 = load i32, i32* @MII_BMCR, align 4
  %103 = call i32 @e1e_rphy(%struct.e1000_hw* %101, i32 %102, i32* %7)
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @BMCR_LOOPBACK, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %133

108:                                              ; preds = %100
  %109 = load i32, i32* @BMCR_LOOPBACK, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %7, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %7, align 4
  %113 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %114 = load i32, i32* @MII_BMCR, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @e1e_wphy(%struct.e1000_hw* %113, i32 %114, i32 %115)
  %117 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %118 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %120, align 8
  %122 = icmp ne i32 (%struct.e1000_hw.0*)* %121, null
  br i1 %122, label %123, label %132

123:                                              ; preds = %108
  %124 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %125 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %127, align 8
  %129 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %130 = bitcast %struct.e1000_hw* %129 to %struct.e1000_hw.0*
  %131 = call i32 %128(%struct.e1000_hw.0* %130)
  br label %132

132:                                              ; preds = %123, %108
  br label %133

133:                                              ; preds = %132, %100
  br label %134

134:                                              ; preds = %133, %79
  ret void
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @TARC(i32) #1

declare dso_local i32 @e1e_flush(...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @e1e_wphy(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
