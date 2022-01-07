; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_k1_gig_workaround_hv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_k1_gig_workaround_hv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@e1000_pchlan = common dso_local global i64 0, align 8
@e1000_phy_82578 = common dso_local global i64 0, align 8
@BM_CS_STATUS = common dso_local global i32 0, align 4
@BM_CS_STATUS_LINK_UP = common dso_local global i32 0, align 4
@BM_CS_STATUS_RESOLVED = common dso_local global i32 0, align 4
@BM_CS_STATUS_SPEED_MASK = common dso_local global i32 0, align 4
@BM_CS_STATUS_SPEED_1000 = common dso_local global i32 0, align 4
@e1000_phy_82577 = common dso_local global i64 0, align 8
@HV_M_STATUS = common dso_local global i32 0, align 4
@HV_M_STATUS_LINK_UP = common dso_local global i32 0, align 4
@HV_M_STATUS_AUTONEG_COMPLETE = common dso_local global i32 0, align 4
@HV_M_STATUS_SPEED_MASK = common dso_local global i32 0, align 4
@HV_M_STATUS_SPEED_1000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32)* @e1000_k1_gig_workaround_hv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_k1_gig_workaround_hv(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @e1000_pchlan, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %129

21:                                               ; preds = %2
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %23 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %25, align 8
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %28 = bitcast %struct.e1000_hw* %27 to %struct.e1000_hw.1*
  %29 = call i64 %26(%struct.e1000_hw.1* %28)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i64, i64* %6, align 8
  store i64 %33, i64* %3, align 8
  br label %129

34:                                               ; preds = %21
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %107

37:                                               ; preds = %34
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %39 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @e1000_phy_82578, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %68

44:                                               ; preds = %37
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %46 = load i32, i32* @BM_CS_STATUS, align 4
  %47 = call i64 @e1e_rphy_locked(%struct.e1000_hw* %45, i32 %46, i32* %7)
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %119

51:                                               ; preds = %44
  %52 = load i32, i32* @BM_CS_STATUS_LINK_UP, align 4
  %53 = load i32, i32* @BM_CS_STATUS_RESOLVED, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @BM_CS_STATUS_SPEED_MASK, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @BM_CS_STATUS_LINK_UP, align 4
  %61 = load i32, i32* @BM_CS_STATUS_RESOLVED, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @BM_CS_STATUS_SPEED_1000, align 4
  %64 = or i32 %62, %63
  %65 = icmp eq i32 %59, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %51
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %66, %51
  br label %68

68:                                               ; preds = %67, %37
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %70 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @e1000_phy_82577, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %99

75:                                               ; preds = %68
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %77 = load i32, i32* @HV_M_STATUS, align 4
  %78 = call i64 @e1e_rphy_locked(%struct.e1000_hw* %76, i32 %77, i32* %7)
  store i64 %78, i64* %6, align 8
  %79 = load i64, i64* %6, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %119

82:                                               ; preds = %75
  %83 = load i32, i32* @HV_M_STATUS_LINK_UP, align 4
  %84 = load i32, i32* @HV_M_STATUS_AUTONEG_COMPLETE, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @HV_M_STATUS_SPEED_MASK, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* %7, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @HV_M_STATUS_LINK_UP, align 4
  %92 = load i32, i32* @HV_M_STATUS_AUTONEG_COMPLETE, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @HV_M_STATUS_SPEED_1000, align 4
  %95 = or i32 %93, %94
  %96 = icmp eq i32 %90, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %82
  store i32 0, i32* %8, align 4
  br label %98

98:                                               ; preds = %97, %82
  br label %99

99:                                               ; preds = %98, %68
  %100 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %101 = call i32 @PHY_REG(i32 770, i32 19)
  %102 = call i64 @e1e_wphy_locked(%struct.e1000_hw* %100, i32 %101, i32 256)
  store i64 %102, i64* %6, align 8
  %103 = load i64, i64* %6, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %119

106:                                              ; preds = %99
  br label %115

107:                                              ; preds = %34
  %108 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %109 = call i32 @PHY_REG(i32 770, i32 19)
  %110 = call i64 @e1e_wphy_locked(%struct.e1000_hw* %108, i32 %109, i32 16640)
  store i64 %110, i64* %6, align 8
  %111 = load i64, i64* %6, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %119

114:                                              ; preds = %107
  br label %115

115:                                              ; preds = %114, %106
  %116 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i64 @e1000_configure_k1_ich8lan(%struct.e1000_hw* %116, i32 %117)
  store i64 %118, i64* %6, align 8
  br label %119

119:                                              ; preds = %115, %113, %105, %81, %50
  %120 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %121 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %123, align 8
  %125 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %126 = bitcast %struct.e1000_hw* %125 to %struct.e1000_hw.0*
  %127 = call i32 %124(%struct.e1000_hw.0* %126)
  %128 = load i64, i64* %6, align 8
  store i64 %128, i64* %3, align 8
  br label %129

129:                                              ; preds = %119, %32, %20
  %130 = load i64, i64* %3, align 8
  ret i64 %130
}

declare dso_local i64 @e1e_rphy_locked(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1e_wphy_locked(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @PHY_REG(i32, i32) #1

declare dso_local i64 @e1000_configure_k1_ich8lan(%struct.e1000_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
