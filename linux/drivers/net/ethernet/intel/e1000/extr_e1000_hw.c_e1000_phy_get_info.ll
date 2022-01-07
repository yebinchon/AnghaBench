; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_phy_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_phy_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i64 }
%struct.e1000_phy_info = type { i8*, i8*, i32, i32, i32, i32, i32, i32 }

@e1000_cable_length_undefined = common dso_local global i32 0, align 4
@e1000_10bt_ext_dist_enable_undefined = common dso_local global i32 0, align 4
@e1000_rev_polarity_undefined = common dso_local global i32 0, align 4
@e1000_downshift_undefined = common dso_local global i32 0, align 4
@e1000_polarity_reversal_undefined = common dso_local global i32 0, align 4
@e1000_auto_x_mode_undefined = common dso_local global i32 0, align 4
@e1000_1000t_rx_status_undefined = common dso_local global i8* null, align 8
@e1000_media_type_copper = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"PHY info is only valid for copper media\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i64 0, align 8
@PHY_STATUS = common dso_local global i32 0, align 4
@MII_SR_LINK_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"PHY info is only valid if link is up\0A\00", align 1
@e1000_phy_igp = common dso_local global i64 0, align 8
@e1000_phy_8211 = common dso_local global i64 0, align 8
@e1000_phy_8201 = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_phy_get_info(%struct.e1000_hw* %0, %struct.e1000_phy_info* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca %struct.e1000_phy_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store %struct.e1000_phy_info* %1, %struct.e1000_phy_info** %5, align 8
  %8 = load i32, i32* @e1000_cable_length_undefined, align 4
  %9 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %10 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %9, i32 0, i32 7
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @e1000_10bt_ext_dist_enable_undefined, align 4
  %12 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %13 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %12, i32 0, i32 6
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @e1000_rev_polarity_undefined, align 4
  %15 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %16 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @e1000_downshift_undefined, align 4
  %18 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %19 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @e1000_polarity_reversal_undefined, align 4
  %21 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %22 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @e1000_auto_x_mode_undefined, align 4
  %24 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %25 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load i8*, i8** @e1000_1000t_rx_status_undefined, align 8
  %27 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %28 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @e1000_1000t_rx_status_undefined, align 8
  %30 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %31 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %33 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @e1000_media_type_copper, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = call i32 @e_dbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %39 = load i64, i64* @E1000_ERR_CONFIG, align 8
  %40 = sub nsw i64 0, %39
  store i64 %40, i64* %3, align 8
  br label %95

41:                                               ; preds = %2
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %43 = load i32, i32* @PHY_STATUS, align 4
  %44 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %42, i32 %43, i32* %7)
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i64, i64* %6, align 8
  store i64 %48, i64* %3, align 8
  br label %95

49:                                               ; preds = %41
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %51 = load i32, i32* @PHY_STATUS, align 4
  %52 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %50, i32 %51, i32* %7)
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i64, i64* %6, align 8
  store i64 %56, i64* %3, align 8
  br label %95

57:                                               ; preds = %49
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @MII_SR_LINK_STATUS, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @MII_SR_LINK_STATUS, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = call i32 @e_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i64, i64* @E1000_ERR_CONFIG, align 8
  %66 = sub nsw i64 0, %65
  store i64 %66, i64* %3, align 8
  br label %95

67:                                               ; preds = %57
  %68 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %69 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @e1000_phy_igp, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %75 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %76 = call i64 @e1000_phy_igp_get_info(%struct.e1000_hw* %74, %struct.e1000_phy_info* %75)
  store i64 %76, i64* %3, align 8
  br label %95

77:                                               ; preds = %67
  %78 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %79 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @e1000_phy_8211, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %89, label %83

83:                                               ; preds = %77
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %85 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @e1000_phy_8201, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %83, %77
  %90 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %90, i64* %3, align 8
  br label %95

91:                                               ; preds = %83
  %92 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %93 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %94 = call i64 @e1000_phy_m88_get_info(%struct.e1000_hw* %92, %struct.e1000_phy_info* %93)
  store i64 %94, i64* %3, align 8
  br label %95

95:                                               ; preds = %91, %89, %73, %63, %55, %47, %37
  %96 = load i64, i64* %3, align 8
  ret i64 %96
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_phy_igp_get_info(%struct.e1000_hw*, %struct.e1000_phy_info*) #1

declare dso_local i64 @e1000_phy_m88_get_info(%struct.e1000_hw*, %struct.e1000_phy_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
