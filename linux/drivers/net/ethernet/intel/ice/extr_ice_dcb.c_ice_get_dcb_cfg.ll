; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_get_dcb_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_get_dcb_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_port_info = type { %struct.ice_dcbx_cfg, %struct.TYPE_4__* }
%struct.ice_dcbx_cfg = type { i8*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ice_aqc_get_cee_dcb_cfg_resp = type { i32 }

@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ICE_DCBX_MODE_CEE = common dso_local global i8* null, align 8
@ICE_AQ_RC_ENOENT = common dso_local global i64 0, align 8
@ICE_DCBX_MODE_IEEE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_get_dcb_cfg(%struct.ice_port_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_port_info*, align 8
  %4 = alloca %struct.ice_aqc_get_cee_dcb_cfg_resp, align 4
  %5 = alloca %struct.ice_dcbx_cfg*, align 8
  %6 = alloca i32, align 4
  store %struct.ice_port_info* %0, %struct.ice_port_info** %3, align 8
  %7 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %8 = icmp ne %struct.ice_port_info* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %10, i32* %2, align 4
  br label %55

11:                                               ; preds = %1
  %12 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %13 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = call i32 @ice_aq_get_cee_dcb_cfg(%struct.TYPE_4__* %14, %struct.ice_aqc_get_cee_dcb_cfg_resp* %4, i32* null)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %11
  %19 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %20 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %19, i32 0, i32 0
  store %struct.ice_dcbx_cfg* %20, %struct.ice_dcbx_cfg** %5, align 8
  %21 = load i8*, i8** @ICE_DCBX_MODE_CEE, align 8
  %22 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %5, align 8
  %23 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = getelementptr inbounds %struct.ice_aqc_get_cee_dcb_cfg_resp, %struct.ice_aqc_get_cee_dcb_cfg_resp* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le32_to_cpu(i32 %25)
  %27 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %5, align 8
  %28 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %5, align 8
  %30 = call i32 @ice_cee_to_dcb_cfg(%struct.ice_aqc_get_cee_dcb_cfg_resp* %4, %struct.ice_dcbx_cfg* %29)
  %31 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %32 = load i8*, i8** @ICE_DCBX_MODE_CEE, align 8
  %33 = call i32 @ice_get_ieee_or_cee_dcb_cfg(%struct.ice_port_info* %31, i8* %32)
  store i32 %33, i32* %6, align 4
  br label %53

34:                                               ; preds = %11
  %35 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %36 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ICE_AQ_RC_ENOENT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %34
  %44 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %45 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %44, i32 0, i32 0
  store %struct.ice_dcbx_cfg* %45, %struct.ice_dcbx_cfg** %5, align 8
  %46 = load i8*, i8** @ICE_DCBX_MODE_IEEE, align 8
  %47 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %5, align 8
  %48 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %50 = load i8*, i8** @ICE_DCBX_MODE_IEEE, align 8
  %51 = call i32 @ice_get_ieee_or_cee_dcb_cfg(%struct.ice_port_info* %49, i8* %50)
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %43, %34
  br label %53

53:                                               ; preds = %52, %18
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %9
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @ice_aq_get_cee_dcb_cfg(%struct.TYPE_4__*, %struct.ice_aqc_get_cee_dcb_cfg_resp*, i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ice_cee_to_dcb_cfg(%struct.ice_aqc_get_cee_dcb_cfg_resp*, %struct.ice_dcbx_cfg*) #1

declare dso_local i32 @ice_get_ieee_or_cee_dcb_cfg(%struct.ice_port_info*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
