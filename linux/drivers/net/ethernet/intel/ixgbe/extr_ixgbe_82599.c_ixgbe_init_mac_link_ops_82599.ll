; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82599.c_ixgbe_init_mac_link_ops_82599.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82599.c_ixgbe_init_mac_link_ops_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_3__, %struct.ixgbe_mac_info }
%struct.TYPE_3__ = type { i64, i64 }
%struct.ixgbe_mac_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (%struct.ixgbe_hw.0*)*, i32*, i32, i32, i32*, i32*, i32* }
%struct.ixgbe_hw.0 = type opaque

@ixgbe_media_type_fiber = common dso_local global i64 0, align 8
@ixgbe_disable_tx_laser_multispeed_fiber = common dso_local global i32 0, align 4
@ixgbe_enable_tx_laser_multispeed_fiber = common dso_local global i32 0, align 4
@ixgbe_flap_tx_laser_multispeed_fiber = common dso_local global i32 0, align 4
@ixgbe_setup_mac_link_multispeed_fiber = common dso_local global i32 0, align 4
@ixgbe_setup_mac_link_82599 = common dso_local global i32 0, align 4
@ixgbe_set_hard_rate_select_speed = common dso_local global i32 0, align 4
@ixgbe_media_type_backplane = common dso_local global i64 0, align 8
@ixgbe_smart_speed_auto = common dso_local global i64 0, align 8
@ixgbe_smart_speed_on = common dso_local global i64 0, align 8
@ixgbe_setup_mac_link_smartspeed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_hw*)* @ixgbe_init_mac_link_ops_82599 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_init_mac_link_ops_82599(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca %struct.ixgbe_mac_info*, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %4 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %4, i32 0, i32 1
  store %struct.ixgbe_mac_info* %5, %struct.ixgbe_mac_info** %3, align 8
  %6 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %7 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.0*)** %8, align 8
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %11 = bitcast %struct.ixgbe_hw* %10 to %struct.ixgbe_hw.0*
  %12 = call i64 %9(%struct.ixgbe_hw.0* %11)
  %13 = load i64, i64* @ixgbe_media_type_fiber, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %17 = call i32 @ixgbe_mng_enabled(%struct.ixgbe_hw* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %15
  %20 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %21 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 6
  store i32* @ixgbe_disable_tx_laser_multispeed_fiber, i32** %22, align 8
  %23 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %24 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 5
  store i32* @ixgbe_enable_tx_laser_multispeed_fiber, i32** %25, align 8
  %26 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %27 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  store i32* @ixgbe_flap_tx_laser_multispeed_fiber, i32** %28, align 8
  br label %39

29:                                               ; preds = %15, %1
  %30 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %31 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 6
  store i32* null, i32** %32, align 8
  %33 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %34 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 5
  store i32* null, i32** %35, align 8
  %36 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %37 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 4
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %29, %19
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %41 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %47 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32* @ixgbe_setup_mac_link_multispeed_fiber, i32** %48, align 8
  %49 = load i32, i32* @ixgbe_setup_mac_link_82599, align 4
  %50 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %51 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @ixgbe_set_hard_rate_select_speed, align 4
  %54 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %55 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 8
  br label %94

57:                                               ; preds = %39
  %58 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %59 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.0*)** %60, align 8
  %62 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %63 = bitcast %struct.ixgbe_hw* %62 to %struct.ixgbe_hw.0*
  %64 = call i64 %61(%struct.ixgbe_hw.0* %63)
  %65 = load i64, i64* @ixgbe_media_type_backplane, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %89

67:                                               ; preds = %57
  %68 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %69 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @ixgbe_smart_speed_auto, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %81, label %74

74:                                               ; preds = %67
  %75 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %76 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @ixgbe_smart_speed_on, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %74, %67
  %82 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %83 = call i32 @ixgbe_verify_lesm_fw_enabled_82599(%struct.ixgbe_hw* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %87 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store i32* @ixgbe_setup_mac_link_smartspeed, i32** %88, align 8
  br label %93

89:                                               ; preds = %81, %74, %57
  %90 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %91 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  store i32* @ixgbe_setup_mac_link_82599, i32** %92, align 8
  br label %93

93:                                               ; preds = %89, %85
  br label %94

94:                                               ; preds = %93, %45
  ret void
}

declare dso_local i32 @ixgbe_mng_enabled(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_verify_lesm_fw_enabled_82599(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
