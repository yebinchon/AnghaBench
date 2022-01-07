; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_phy.c_e1000_get_phy_info_82577.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_phy.c_e1000_get_phy_info_82577.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i32, i32, i8*, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque

@.str = private unnamed_addr constant [38 x i8] c"Phy info is only valid if link is up\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i64 0, align 8
@I82577_PHY_STATUS_2 = common dso_local global i32 0, align 4
@I82577_PHY_STATUS2_MDIX = common dso_local global i32 0, align 4
@I82577_PHY_STATUS2_SPEED_MASK = common dso_local global i32 0, align 4
@I82577_PHY_STATUS2_SPEED_1000MBPS = common dso_local global i32 0, align 4
@MII_STAT1000 = common dso_local global i32 0, align 4
@LPA_1000LOCALRXOK = common dso_local global i32 0, align 4
@e1000_1000t_rx_status_ok = common dso_local global i8* null, align 8
@e1000_1000t_rx_status_not_ok = common dso_local global i8* null, align 8
@LPA_1000REMRXOK = common dso_local global i32 0, align 4
@E1000_CABLE_LENGTH_UNDEFINED = common dso_local global i32 0, align 4
@e1000_1000t_rx_status_undefined = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_get_phy_info_82577(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  store %struct.e1000_phy_info* %9, %struct.e1000_phy_info** %4, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %11 = call i64 @e1000e_phy_has_link_generic(%struct.e1000_hw* %10, i32 1, i32 0, i32* %7)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i64, i64* %5, align 8
  store i64 %15, i64* %2, align 8
  br label %112

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = call i32 @e_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %21 = load i64, i64* @E1000_ERR_CONFIG, align 8
  %22 = sub nsw i64 0, %21
  store i64 %22, i64* %2, align 8
  br label %112

23:                                               ; preds = %16
  %24 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %25 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %27 = call i64 @e1000_check_polarity_82577(%struct.e1000_hw* %26)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i64, i64* %5, align 8
  store i64 %31, i64* %2, align 8
  br label %112

32:                                               ; preds = %23
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %34 = load i32, i32* @I82577_PHY_STATUS_2, align 4
  %35 = call i64 @e1e_rphy(%struct.e1000_hw* %33, i32 %34, i32* %6)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i64, i64* %5, align 8
  store i64 %39, i64* %2, align 8
  br label %112

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @I82577_PHY_STATUS2_MDIX, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %49 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @I82577_PHY_STATUS2_SPEED_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @I82577_PHY_STATUS2_SPEED_1000MBPS, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %101

55:                                               ; preds = %40
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %57 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %59, align 8
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %62 = bitcast %struct.e1000_hw* %61 to %struct.e1000_hw.0*
  %63 = call i64 %60(%struct.e1000_hw.0* %62)
  store i64 %63, i64* %5, align 8
  %64 = load i64, i64* %5, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %55
  %67 = load i64, i64* %5, align 8
  store i64 %67, i64* %2, align 8
  br label %112

68:                                               ; preds = %55
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %70 = load i32, i32* @MII_STAT1000, align 4
  %71 = call i64 @e1e_rphy(%struct.e1000_hw* %69, i32 %70, i32* %6)
  store i64 %71, i64* %5, align 8
  %72 = load i64, i64* %5, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i64, i64* %5, align 8
  store i64 %75, i64* %2, align 8
  br label %112

76:                                               ; preds = %68
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @LPA_1000LOCALRXOK, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i8*, i8** @e1000_1000t_rx_status_ok, align 8
  br label %85

83:                                               ; preds = %76
  %84 = load i8*, i8** @e1000_1000t_rx_status_not_ok, align 8
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i8* [ %82, %81 ], [ %84, %83 ]
  %87 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %88 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %87, i32 0, i32 3
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @LPA_1000REMRXOK, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %85
  %94 = load i8*, i8** @e1000_1000t_rx_status_ok, align 8
  br label %97

95:                                               ; preds = %85
  %96 = load i8*, i8** @e1000_1000t_rx_status_not_ok, align 8
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i8* [ %94, %93 ], [ %96, %95 ]
  %99 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %100 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  br label %111

101:                                              ; preds = %40
  %102 = load i32, i32* @E1000_CABLE_LENGTH_UNDEFINED, align 4
  %103 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %104 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 8
  %105 = load i8*, i8** @e1000_1000t_rx_status_undefined, align 8
  %106 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %107 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %106, i32 0, i32 3
  store i8* %105, i8** %107, align 8
  %108 = load i8*, i8** @e1000_1000t_rx_status_undefined, align 8
  %109 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %110 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %109, i32 0, i32 2
  store i8* %108, i8** %110, align 8
  br label %111

111:                                              ; preds = %101, %97
  store i64 0, i64* %2, align 8
  br label %112

112:                                              ; preds = %111, %74, %66, %38, %30, %19, %14
  %113 = load i64, i64* %2, align 8
  ret i64 %113
}

declare dso_local i64 @e1000e_phy_has_link_generic(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000_check_polarity_82577(%struct.e1000_hw*) #1

declare dso_local i64 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
