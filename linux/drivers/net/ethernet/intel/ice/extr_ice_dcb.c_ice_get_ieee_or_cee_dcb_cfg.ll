; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_get_ieee_or_cee_dcb_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_get_ieee_or_cee_dcb_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_port_info = type { %struct.TYPE_4__*, %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ice_dcbx_cfg = type { i32 }

@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ICE_DCBX_MODE_IEEE = common dso_local global i64 0, align 8
@ICE_DCBX_MODE_CEE = common dso_local global i64 0, align 8
@ICE_AQ_LLDP_MIB_LOCAL = common dso_local global i32 0, align 4
@ICE_AQ_LLDP_BRID_TYPE_NEAREST_BRID = common dso_local global i32 0, align 4
@ICE_AQ_LLDP_MIB_REMOTE = common dso_local global i32 0, align 4
@ICE_AQ_RC_ENOENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_port_info*, i64)* @ice_get_ieee_or_cee_dcb_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_get_ieee_or_cee_dcb_cfg(%struct.ice_port_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_port_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ice_dcbx_cfg*, align 8
  %7 = alloca i32, align 4
  store %struct.ice_port_info* %0, %struct.ice_port_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.ice_dcbx_cfg* null, %struct.ice_dcbx_cfg** %6, align 8
  %8 = load %struct.ice_port_info*, %struct.ice_port_info** %4, align 8
  %9 = icmp ne %struct.ice_port_info* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %11, i32* %3, align 4
  br label %60

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @ICE_DCBX_MODE_IEEE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load %struct.ice_port_info*, %struct.ice_port_info** %4, align 8
  %18 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %17, i32 0, i32 3
  store %struct.ice_dcbx_cfg* %18, %struct.ice_dcbx_cfg** %6, align 8
  br label %27

19:                                               ; preds = %12
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @ICE_DCBX_MODE_CEE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.ice_port_info*, %struct.ice_port_info** %4, align 8
  %25 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %24, i32 0, i32 2
  store %struct.ice_dcbx_cfg* %25, %struct.ice_dcbx_cfg** %6, align 8
  br label %26

26:                                               ; preds = %23, %19
  br label %27

27:                                               ; preds = %26, %16
  %28 = load %struct.ice_port_info*, %struct.ice_port_info** %4, align 8
  %29 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i32, i32* @ICE_AQ_LLDP_MIB_LOCAL, align 4
  %32 = load i32, i32* @ICE_AQ_LLDP_BRID_TYPE_NEAREST_BRID, align 4
  %33 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %6, align 8
  %34 = call i32 @ice_aq_get_dcb_cfg(%struct.TYPE_4__* %30, i32 %31, i32 %32, %struct.ice_dcbx_cfg* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %58

38:                                               ; preds = %27
  %39 = load %struct.ice_port_info*, %struct.ice_port_info** %4, align 8
  %40 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %39, i32 0, i32 1
  store %struct.ice_dcbx_cfg* %40, %struct.ice_dcbx_cfg** %6, align 8
  %41 = load %struct.ice_port_info*, %struct.ice_port_info** %4, align 8
  %42 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* @ICE_AQ_LLDP_MIB_REMOTE, align 4
  %45 = load i32, i32* @ICE_AQ_LLDP_BRID_TYPE_NEAREST_BRID, align 4
  %46 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %6, align 8
  %47 = call i32 @ice_aq_get_dcb_cfg(%struct.TYPE_4__* %43, i32 %44, i32 %45, %struct.ice_dcbx_cfg* %46)
  store i32 %47, i32* %7, align 4
  %48 = load %struct.ice_port_info*, %struct.ice_port_info** %4, align 8
  %49 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ICE_AQ_RC_ENOENT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %56, %38
  br label %58

58:                                               ; preds = %57, %37
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %10
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @ice_aq_get_dcb_cfg(%struct.TYPE_4__*, i32, i32, %struct.ice_dcbx_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
