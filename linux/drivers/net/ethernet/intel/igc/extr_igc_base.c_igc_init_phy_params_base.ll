; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_base.c_igc_init_phy_params_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_base.c_igc_init_phy_params_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_hw = type { %struct.igc_phy_info, %struct.TYPE_3__ }
%struct.igc_phy_info = type { i64, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 (%struct.igc_hw.0*)* }
%struct.igc_hw.0 = type opaque
%struct.TYPE_3__ = type { i32 }

@igc_media_type_copper = common dso_local global i64 0, align 8
@igc_phy_none = common dso_local global i32 0, align 4
@AUTONEG_ADVERTISE_SPEED_DEFAULT_2500 = common dso_local global i32 0, align 4
@IGC_STATUS = common dso_local global i32 0, align 4
@IGC_STATUS_FUNC_MASK = common dso_local global i32 0, align 4
@IGC_STATUS_FUNC_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Error resetting the PHY.\0A\00", align 1
@igc_phy_i225 = common dso_local global i32 0, align 4
@IGC_ERR_PHY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.igc_hw*)* @igc_init_phy_params_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @igc_init_phy_params_base(%struct.igc_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.igc_hw*, align 8
  %4 = alloca %struct.igc_phy_info*, align 8
  %5 = alloca i64, align 8
  store %struct.igc_hw* %0, %struct.igc_hw** %3, align 8
  %6 = load %struct.igc_hw*, %struct.igc_hw** %3, align 8
  %7 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %6, i32 0, i32 0
  store %struct.igc_phy_info* %7, %struct.igc_phy_info** %4, align 8
  store i64 0, i64* %5, align 8
  %8 = load %struct.igc_hw*, %struct.igc_hw** %3, align 8
  %9 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @igc_media_type_copper, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @igc_phy_none, align 4
  %16 = load %struct.igc_phy_info*, %struct.igc_phy_info** %4, align 8
  %17 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  br label %66

18:                                               ; preds = %1
  %19 = load i32, i32* @AUTONEG_ADVERTISE_SPEED_DEFAULT_2500, align 4
  %20 = load %struct.igc_phy_info*, %struct.igc_phy_info** %4, align 8
  %21 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 8
  %22 = load %struct.igc_phy_info*, %struct.igc_phy_info** %4, align 8
  %23 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %22, i32 0, i32 1
  store i32 100, i32* %23, align 8
  %24 = load i32, i32* @IGC_STATUS, align 4
  %25 = call i32 @rd32(i32 %24)
  %26 = load i32, i32* @IGC_STATUS_FUNC_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @IGC_STATUS_FUNC_SHIFT, align 4
  %29 = ashr i32 %27, %28
  %30 = load %struct.igc_hw*, %struct.igc_hw** %3, align 8
  %31 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.igc_hw*, %struct.igc_hw** %3, align 8
  %34 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64 (%struct.igc_hw.0*)*, i64 (%struct.igc_hw.0*)** %36, align 8
  %38 = load %struct.igc_hw*, %struct.igc_hw** %3, align 8
  %39 = bitcast %struct.igc_hw* %38 to %struct.igc_hw.0*
  %40 = call i64 %37(%struct.igc_hw.0* %39)
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %18
  %44 = call i32 @hw_dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %66

45:                                               ; preds = %18
  %46 = load %struct.igc_hw*, %struct.igc_hw** %3, align 8
  %47 = call i64 @igc_get_phy_id(%struct.igc_hw* %46)
  store i64 %47, i64* %5, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i64, i64* %5, align 8
  store i64 %51, i64* %2, align 8
  br label %68

52:                                               ; preds = %45
  %53 = load %struct.igc_hw*, %struct.igc_hw** %3, align 8
  %54 = call i32 @igc_check_for_copper_link(%struct.igc_hw* %53)
  %55 = load %struct.igc_phy_info*, %struct.igc_phy_info** %4, align 8
  %56 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %62 [
    i32 128, label %58
  ]

58:                                               ; preds = %52
  %59 = load i32, i32* @igc_phy_i225, align 4
  %60 = load %struct.igc_phy_info*, %struct.igc_phy_info** %4, align 8
  %61 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  br label %65

62:                                               ; preds = %52
  %63 = load i64, i64* @IGC_ERR_PHY, align 8
  %64 = sub nsw i64 0, %63
  store i64 %64, i64* %5, align 8
  br label %66

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %62, %43, %14
  %67 = load i64, i64* %5, align 8
  store i64 %67, i64* %2, align 8
  br label %68

68:                                               ; preds = %66, %50
  %69 = load i64, i64* %2, align 8
  ret i64 %69
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i64 @igc_get_phy_id(%struct.igc_hw*) #1

declare dso_local i32 @igc_check_for_copper_link(%struct.igc_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
