; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_init_dcb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_init_dcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.ice_port_info* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ice_port_info = type { i32, i64 }

@ICE_ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ICE_DCBX_STATUS_DONE = common dso_local global i64 0, align 8
@ICE_DCBX_STATUS_IN_PROGRESS = common dso_local global i64 0, align 8
@ICE_DCBX_STATUS_NOT_STARTED = common dso_local global i64 0, align 8
@ICE_AQ_RC_EPERM = common dso_local global i64 0, align 8
@ICE_DCBX_STATUS_DIS = common dso_local global i64 0, align 8
@ICE_ERR_NOT_READY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_init_dcb(%struct.ice_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_port_info*, align 8
  %7 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %9 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %8, i32 0, i32 2
  %10 = load %struct.ice_port_info*, %struct.ice_port_info** %9, align 8
  store %struct.ice_port_info* %10, %struct.ice_port_info** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %12 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ICE_ERR_NOT_SUPPORTED, align 4
  store i32 %18, i32* %3, align 4
  br label %83

19:                                               ; preds = %2
  %20 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %21 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %23 = call i64 @ice_get_dcbx_status(%struct.ice_hw* %22)
  %24 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %25 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %27 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ICE_DCBX_STATUS_DONE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %19
  %32 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %33 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ICE_DCBX_STATUS_IN_PROGRESS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %39 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ICE_DCBX_STATUS_NOT_STARTED, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %37, %31, %19
  %44 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %45 = call i32 @ice_get_dcb_cfg(%struct.ice_port_info* %44)
  store i32 %45, i32* %7, align 4
  %46 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %47 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ICE_AQ_RC_EPERM, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %54 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %43
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %83

59:                                               ; preds = %43
  br label %69

60:                                               ; preds = %37
  %61 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %62 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ICE_DCBX_STATUS_DIS, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* @ICE_ERR_NOT_READY, align 4
  store i32 %67, i32* %3, align 4
  br label %83

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68, %59
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %74 = call i32 @ice_aq_cfg_lldp_mib_change(%struct.ice_hw* %73, i32 1, i32* null)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %79 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  br label %80

80:                                               ; preds = %77, %72
  br label %81

81:                                               ; preds = %80, %69
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %66, %57, %17
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i64 @ice_get_dcbx_status(%struct.ice_hw*) #1

declare dso_local i32 @ice_get_dcb_cfg(%struct.ice_port_info*) #1

declare dso_local i32 @ice_aq_cfg_lldp_mib_change(%struct.ice_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
