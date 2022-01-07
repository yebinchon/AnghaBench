; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_phy.c_igb_get_phy_info_82580.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_phy.c_igb_get_phy_info_82580.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i32, i32, i8*, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.e1000_hw.0*, i32, i32*)*, i32 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [38 x i8] c"Phy info is only valid if link is up\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i32 0, align 4
@I82580_PHY_STATUS_2 = common dso_local global i32 0, align 4
@I82580_PHY_STATUS2_MDIX = common dso_local global i32 0, align 4
@I82580_PHY_STATUS2_SPEED_MASK = common dso_local global i32 0, align 4
@I82580_PHY_STATUS2_SPEED_1000MBPS = common dso_local global i32 0, align 4
@PHY_1000T_STATUS = common dso_local global i32 0, align 4
@SR_1000T_LOCAL_RX_STATUS = common dso_local global i32 0, align 4
@e1000_1000t_rx_status_ok = common dso_local global i8* null, align 8
@e1000_1000t_rx_status_not_ok = common dso_local global i8* null, align 8
@SR_1000T_REMOTE_RX_STATUS = common dso_local global i32 0, align 4
@E1000_CABLE_LENGTH_UNDEFINED = common dso_local global i32 0, align 4
@e1000_1000t_rx_status_undefined = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igb_get_phy_info_82580(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_phy_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  store %struct.e1000_phy_info* %8, %struct.e1000_phy_info** %3, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %10 = call i32 @igb_phy_has_link(%struct.e1000_hw* %9, i32 1, i32 0, i32* %6)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %115

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = call i32 @hw_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %115

21:                                               ; preds = %14
  %22 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %23 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %25 = call i32 @igb_check_polarity_82580(%struct.e1000_hw* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %115

29:                                               ; preds = %21
  %30 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %31 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.e1000_hw.0*, i32, i32*)*, i32 (%struct.e1000_hw.0*, i32, i32*)** %32, align 8
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %35 = bitcast %struct.e1000_hw* %34 to %struct.e1000_hw.0*
  %36 = load i32, i32* @I82580_PHY_STATUS_2, align 4
  %37 = call i32 %33(%struct.e1000_hw.0* %35, i32 %36, i32* %5)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %115

41:                                               ; preds = %29
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @I82580_PHY_STATUS2_MDIX, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  %48 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %49 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @I82580_PHY_STATUS2_SPEED_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @I82580_PHY_STATUS2_SPEED_1000MBPS, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %104

55:                                               ; preds = %41
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %57 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %59, align 8
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %62 = bitcast %struct.e1000_hw* %61 to %struct.e1000_hw.1*
  %63 = call i32 %60(%struct.e1000_hw.1* %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %115

67:                                               ; preds = %55
  %68 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %69 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32 (%struct.e1000_hw.0*, i32, i32*)*, i32 (%struct.e1000_hw.0*, i32, i32*)** %70, align 8
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %73 = bitcast %struct.e1000_hw* %72 to %struct.e1000_hw.0*
  %74 = load i32, i32* @PHY_1000T_STATUS, align 4
  %75 = call i32 %71(%struct.e1000_hw.0* %73, i32 %74, i32* %5)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  br label %115

79:                                               ; preds = %67
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @SR_1000T_LOCAL_RX_STATUS, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i8*, i8** @e1000_1000t_rx_status_ok, align 8
  br label %88

86:                                               ; preds = %79
  %87 = load i8*, i8** @e1000_1000t_rx_status_not_ok, align 8
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i8* [ %85, %84 ], [ %87, %86 ]
  %90 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %91 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %90, i32 0, i32 3
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @SR_1000T_REMOTE_RX_STATUS, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i8*, i8** @e1000_1000t_rx_status_ok, align 8
  br label %100

98:                                               ; preds = %88
  %99 = load i8*, i8** @e1000_1000t_rx_status_not_ok, align 8
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i8* [ %97, %96 ], [ %99, %98 ]
  %102 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %103 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  br label %114

104:                                              ; preds = %41
  %105 = load i32, i32* @E1000_CABLE_LENGTH_UNDEFINED, align 4
  %106 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %107 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 8
  %108 = load i8*, i8** @e1000_1000t_rx_status_undefined, align 8
  %109 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %110 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %109, i32 0, i32 3
  store i8* %108, i8** %110, align 8
  %111 = load i8*, i8** @e1000_1000t_rx_status_undefined, align 8
  %112 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %113 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  br label %114

114:                                              ; preds = %104, %100
  br label %115

115:                                              ; preds = %114, %78, %66, %40, %28, %17, %13
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @igb_phy_has_link(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i32 @igb_check_polarity_82580(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
