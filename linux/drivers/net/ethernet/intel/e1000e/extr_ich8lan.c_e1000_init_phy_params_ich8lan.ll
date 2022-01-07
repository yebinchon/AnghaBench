; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_init_phy_params_ich8lan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_init_phy_params_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i32, i32, i32, %struct.TYPE_2__, i8*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32 }

@e1000_power_up_phy_copper = common dso_local global i32 0, align 4
@e1000_power_down_phy_copper_ich8lan = common dso_local global i32 0, align 4
@e1000e_write_phy_reg_bm = common dso_local global i8* null, align 8
@e1000e_read_phy_reg_bm = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"Cannot determine PHY addr. Erroring out\0A\00", align 1
@e1000_phy_unknown = common dso_local global i64 0, align 8
@e1000_phy_igp_3 = common dso_local global i32 0, align 4
@AUTONEG_ADVERTISE_SPEED_DEFAULT = common dso_local global i8* null, align 8
@e1000e_read_phy_reg_igp_locked = common dso_local global i32 0, align 4
@e1000e_write_phy_reg_igp_locked = common dso_local global i32 0, align 4
@e1000e_get_phy_info_igp = common dso_local global i32 0, align 4
@e1000_check_polarity_igp = common dso_local global i32 0, align 4
@e1000e_phy_force_speed_duplex_igp = common dso_local global i32 0, align 4
@e1000_phy_ife = common dso_local global i32 0, align 4
@E1000_ALL_NOT_GIG = common dso_local global i8* null, align 8
@e1000_get_phy_info_ife = common dso_local global i32 0, align 4
@e1000_check_polarity_ife = common dso_local global i32 0, align 4
@e1000_phy_force_speed_duplex_ife = common dso_local global i32 0, align 4
@e1000_phy_bm = common dso_local global i32 0, align 4
@e1000e_phy_sw_reset = common dso_local global i32 0, align 4
@e1000e_get_phy_info_m88 = common dso_local global i32 0, align 4
@e1000_check_polarity_m88 = common dso_local global i32 0, align 4
@e1000e_phy_force_speed_duplex_m88 = common dso_local global i32 0, align 4
@E1000_ERR_PHY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_init_phy_params_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_init_phy_params_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  store %struct.e1000_phy_info* %8, %struct.e1000_phy_info** %4, align 8
  store i64 0, i64* %6, align 8
  %9 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %10 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %12 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %11, i32 0, i32 1
  store i32 100, i32* %12, align 4
  %13 = load i32, i32* @e1000_power_up_phy_copper, align 4
  %14 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %15 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 9
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @e1000_power_down_phy_copper_ich8lan, align 4
  %18 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %19 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 8
  store i32 %17, i32* %20, align 8
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %22 = call i64 @e1000e_determine_phy_address(%struct.e1000_hw* %21)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %1
  %26 = load i8*, i8** @e1000e_write_phy_reg_bm, align 8
  %27 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %28 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  store i8* %26, i8** %29, align 8
  %30 = load i8*, i8** @e1000e_read_phy_reg_bm, align 8
  %31 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %32 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 5
  store i8* %30, i8** %33, align 8
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %35 = call i64 @e1000e_determine_phy_address(%struct.e1000_hw* %34)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = call i32 @e_dbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %40 = load i64, i64* %5, align 8
  store i64 %40, i64* %2, align 8
  br label %152

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %41, %1
  %43 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %44 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %43, i32 0, i32 2
  store i32 0, i32* %44, align 8
  br label %45

45:                                               ; preds = %66, %42
  %46 = load i64, i64* @e1000_phy_unknown, align 8
  %47 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %48 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @e1000e_get_phy_type_from_id(i32 %49)
  %51 = icmp eq i64 %46, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i64, i64* %6, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %6, align 8
  %55 = icmp slt i64 %53, 100
  br label %56

56:                                               ; preds = %52, %45
  %57 = phi i1 [ false, %45 ], [ %55, %52 ]
  br i1 %57, label %58, label %67

58:                                               ; preds = %56
  %59 = call i32 @usleep_range(i32 1000, i32 1100)
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %61 = call i64 @e1000e_get_phy_id(%struct.e1000_hw* %60)
  store i64 %61, i64* %5, align 8
  %62 = load i64, i64* %5, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i64, i64* %5, align 8
  store i64 %65, i64* %2, align 8
  br label %152

66:                                               ; preds = %58
  br label %45

67:                                               ; preds = %56
  %68 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %69 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  switch i32 %70, label %148 [
    i32 128, label %71
    i32 130, label %98
    i32 129, label %98
    i32 131, label %98
    i32 132, label %117
  ]

71:                                               ; preds = %67
  %72 = load i32, i32* @e1000_phy_igp_3, align 4
  %73 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %74 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 8
  %75 = load i8*, i8** @AUTONEG_ADVERTISE_SPEED_DEFAULT, align 8
  %76 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %77 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %76, i32 0, i32 4
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* @e1000e_read_phy_reg_igp_locked, align 4
  %79 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %80 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 7
  store i32 %78, i32* %81, align 4
  %82 = load i32, i32* @e1000e_write_phy_reg_igp_locked, align 4
  %83 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %84 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 6
  store i32 %82, i32* %85, align 8
  %86 = load i32, i32* @e1000e_get_phy_info_igp, align 4
  %87 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %88 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  store i32 %86, i32* %89, align 8
  %90 = load i32, i32* @e1000_check_polarity_igp, align 4
  %91 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %92 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 4
  %94 = load i32, i32* @e1000e_phy_force_speed_duplex_igp, align 4
  %95 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %96 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 8
  br label %151

98:                                               ; preds = %67, %67, %67
  %99 = load i32, i32* @e1000_phy_ife, align 4
  %100 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %101 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 8
  %102 = load i8*, i8** @E1000_ALL_NOT_GIG, align 8
  %103 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %104 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %103, i32 0, i32 4
  store i8* %102, i8** %104, align 8
  %105 = load i32, i32* @e1000_get_phy_info_ife, align 4
  %106 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %107 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  store i32 %105, i32* %108, align 8
  %109 = load i32, i32* @e1000_check_polarity_ife, align 4
  %110 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %111 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 4
  %113 = load i32, i32* @e1000_phy_force_speed_duplex_ife, align 4
  %114 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %115 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 8
  br label %151

117:                                              ; preds = %67
  %118 = load i32, i32* @e1000_phy_bm, align 4
  %119 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %120 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %119, i32 0, i32 5
  store i32 %118, i32* %120, align 8
  %121 = load i8*, i8** @AUTONEG_ADVERTISE_SPEED_DEFAULT, align 8
  %122 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %123 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %122, i32 0, i32 4
  store i8* %121, i8** %123, align 8
  %124 = load i8*, i8** @e1000e_read_phy_reg_bm, align 8
  %125 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %126 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 5
  store i8* %124, i8** %127, align 8
  %128 = load i8*, i8** @e1000e_write_phy_reg_bm, align 8
  %129 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %130 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 4
  store i8* %128, i8** %131, align 8
  %132 = load i32, i32* @e1000e_phy_sw_reset, align 4
  %133 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %134 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 3
  store i32 %132, i32* %135, align 4
  %136 = load i32, i32* @e1000e_get_phy_info_m88, align 4
  %137 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %138 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 2
  store i32 %136, i32* %139, align 8
  %140 = load i32, i32* @e1000_check_polarity_m88, align 4
  %141 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %142 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  store i32 %140, i32* %143, align 4
  %144 = load i32, i32* @e1000e_phy_force_speed_duplex_m88, align 4
  %145 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %146 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  store i32 %144, i32* %147, align 8
  br label %151

148:                                              ; preds = %67
  %149 = load i64, i64* @E1000_ERR_PHY, align 8
  %150 = sub nsw i64 0, %149
  store i64 %150, i64* %2, align 8
  br label %152

151:                                              ; preds = %117, %98, %71
  store i64 0, i64* %2, align 8
  br label %152

152:                                              ; preds = %151, %148, %64, %38
  %153 = load i64, i64* %2, align 8
  ret i64 %153
}

declare dso_local i64 @e1000e_determine_phy_address(%struct.e1000_hw*) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000e_get_phy_type_from_id(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @e1000e_get_phy_id(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
