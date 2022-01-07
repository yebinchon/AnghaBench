; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_update_link_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_update_link_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_port_info = type { %struct.ice_hw*, %struct.TYPE_2__ }
%struct.ice_hw = type { i32 }
%struct.TYPE_2__ = type { %struct.ice_link_status }
%struct.ice_link_status = type { i32, i32 }
%struct.ice_aqc_get_phy_caps_data = type { i32 }

@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ICE_AQ_MEDIA_AVAILABLE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ICE_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@ICE_AQC_REPORT_TOPO_CAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_update_link_info(%struct.ice_port_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_port_info*, align 8
  %4 = alloca %struct.ice_link_status*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_aqc_get_phy_caps_data*, align 8
  %7 = alloca %struct.ice_hw*, align 8
  store %struct.ice_port_info* %0, %struct.ice_port_info** %3, align 8
  %8 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %9 = icmp ne %struct.ice_port_info* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %11, i32* %2, align 4
  br label %62

12:                                               ; preds = %1
  %13 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %14 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.ice_link_status* %15, %struct.ice_link_status** %4, align 8
  %16 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %17 = call i32 @ice_aq_get_link_info(%struct.ice_port_info* %16, i32 1, i32* null, i32* null)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %62

22:                                               ; preds = %12
  %23 = load %struct.ice_link_status*, %struct.ice_link_status** %4, align 8
  %24 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ICE_AQ_MEDIA_AVAILABLE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %60

29:                                               ; preds = %22
  %30 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %31 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %30, i32 0, i32 0
  %32 = load %struct.ice_hw*, %struct.ice_hw** %31, align 8
  store %struct.ice_hw* %32, %struct.ice_hw** %7, align 8
  %33 = load %struct.ice_hw*, %struct.ice_hw** %7, align 8
  %34 = call i32 @ice_hw_to_dev(%struct.ice_hw* %33)
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.ice_aqc_get_phy_caps_data* @devm_kzalloc(i32 %34, i32 4, i32 %35)
  store %struct.ice_aqc_get_phy_caps_data* %36, %struct.ice_aqc_get_phy_caps_data** %6, align 8
  %37 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %6, align 8
  %38 = icmp ne %struct.ice_aqc_get_phy_caps_data* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  store i32 %40, i32* %2, align 4
  br label %62

41:                                               ; preds = %29
  %42 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %43 = load i32, i32* @ICE_AQC_REPORT_TOPO_CAP, align 4
  %44 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %6, align 8
  %45 = call i32 @ice_aq_get_phy_caps(%struct.ice_port_info* %42, i32 0, i32 %43, %struct.ice_aqc_get_phy_caps_data* %44, i32* null)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %41
  %49 = load %struct.ice_link_status*, %struct.ice_link_status** %4, align 8
  %50 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %6, align 8
  %53 = getelementptr inbounds %struct.ice_aqc_get_phy_caps_data, %struct.ice_aqc_get_phy_caps_data* %52, i32 0, i32 0
  %54 = call i32 @memcpy(i32 %51, i32* %53, i32 4)
  br label %55

55:                                               ; preds = %48, %41
  %56 = load %struct.ice_hw*, %struct.ice_hw** %7, align 8
  %57 = call i32 @ice_hw_to_dev(%struct.ice_hw* %56)
  %58 = load %struct.ice_aqc_get_phy_caps_data*, %struct.ice_aqc_get_phy_caps_data** %6, align 8
  %59 = call i32 @devm_kfree(i32 %57, %struct.ice_aqc_get_phy_caps_data* %58)
  br label %60

60:                                               ; preds = %55, %22
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %39, %20, %10
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @ice_aq_get_link_info(%struct.ice_port_info*, i32, i32*, i32*) #1

declare dso_local %struct.ice_aqc_get_phy_caps_data* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @ice_hw_to_dev(%struct.ice_hw*) #1

declare dso_local i32 @ice_aq_get_phy_caps(%struct.ice_port_info*, i32, i32, %struct.ice_aqc_get_phy_caps_data*, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @devm_kfree(i32, %struct.ice_aqc_get_phy_caps_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
