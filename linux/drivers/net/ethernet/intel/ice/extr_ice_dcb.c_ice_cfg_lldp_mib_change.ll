; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_cfg_lldp_mib_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_cfg_lldp_mib_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { %struct.TYPE_4__, %struct.ice_port_info* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ice_port_info = type { i64, i32 }

@ICE_ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ICE_DCBX_STATUS_DIS = common dso_local global i64 0, align 8
@ICE_ERR_NOT_READY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_cfg_lldp_mib_change(%struct.ice_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_port_info*, align 8
  %7 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %9 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %8, i32 0, i32 1
  %10 = load %struct.ice_port_info*, %struct.ice_port_info** %9, align 8
  store %struct.ice_port_info* %10, %struct.ice_port_info** %6, align 8
  %11 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %12 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ICE_ERR_NOT_SUPPORTED, align 4
  store i32 %18, i32* %3, align 4
  br label %46

19:                                               ; preds = %2
  %20 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %21 = call i64 @ice_get_dcbx_status(%struct.ice_hw* %20)
  %22 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %23 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %25 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ICE_DCBX_STATUS_DIS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i32, i32* @ICE_ERR_NOT_READY, align 4
  store i32 %30, i32* %3, align 4
  br label %46

31:                                               ; preds = %19
  %32 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @ice_aq_cfg_lldp_mib_change(%struct.ice_hw* %32, i32 %33, i32* null)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %43 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %37, %31
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %29, %17
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @ice_get_dcbx_status(%struct.ice_hw*) #1

declare dso_local i32 @ice_aq_cfg_lldp_mib_change(%struct.ice_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
