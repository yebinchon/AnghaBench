; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_vc_notify_vf_link_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_vc_notify_vf_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vf = type { i32, i32, i64, i32, %struct.ice_pf* }
%struct.ice_pf = type { %struct.ice_hw }
%struct.ice_hw = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ice_link_status }
%struct.ice_link_status = type { i32, i32 }
%struct.virtchnl_pf_event = type { i32, i32, i32 }

@VIRTCHNL_EVENT_LINK_CHANGE = common dso_local global i32 0, align 4
@PF_EVENT_SEVERITY_INFO = common dso_local global i32 0, align 4
@ICE_AQ_LINK_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@ICE_AQ_LINK_UP = common dso_local global i32 0, align 4
@VIRTCHNL_OP_EVENT = common dso_local global i32 0, align 4
@VIRTCHNL_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_vf*)* @ice_vc_notify_vf_link_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_vc_notify_vf_link_state(%struct.ice_vf* %0) #0 {
  %2 = alloca %struct.ice_vf*, align 8
  %3 = alloca %struct.virtchnl_pf_event, align 4
  %4 = alloca %struct.ice_link_status*, align 8
  %5 = alloca %struct.ice_pf*, align 8
  %6 = alloca %struct.ice_hw*, align 8
  store %struct.ice_vf* %0, %struct.ice_vf** %2, align 8
  %7 = bitcast %struct.virtchnl_pf_event* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 12, i1 false)
  %8 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %9 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %8, i32 0, i32 4
  %10 = load %struct.ice_pf*, %struct.ice_pf** %9, align 8
  store %struct.ice_pf* %10, %struct.ice_pf** %5, align 8
  %11 = load %struct.ice_pf*, %struct.ice_pf** %5, align 8
  %12 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %11, i32 0, i32 0
  store %struct.ice_hw* %12, %struct.ice_hw** %6, align 8
  %13 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %14 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.ice_link_status* %17, %struct.ice_link_status** %4, align 8
  %18 = load i32, i32* @VIRTCHNL_EVENT_LINK_CHANGE, align 4
  %19 = getelementptr inbounds %struct.virtchnl_pf_event, %struct.virtchnl_pf_event* %3, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @PF_EVENT_SEVERITY_INFO, align 4
  %21 = getelementptr inbounds %struct.virtchnl_pf_event, %struct.virtchnl_pf_event* %3, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %23 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %1
  %27 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %28 = load i32, i32* @ICE_AQ_LINK_SPEED_UNKNOWN, align 4
  %29 = call i32 @ice_set_pfe_link(%struct.ice_vf* %27, %struct.virtchnl_pf_event* %3, i32 %28, i32 0)
  br label %53

30:                                               ; preds = %1
  %31 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %32 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %37 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %38 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ice_set_pfe_link_forced(%struct.ice_vf* %36, %struct.virtchnl_pf_event* %3, i32 %39)
  br label %52

41:                                               ; preds = %30
  %42 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %43 = load %struct.ice_link_status*, %struct.ice_link_status** %4, align 8
  %44 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ice_link_status*, %struct.ice_link_status** %4, align 8
  %47 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ICE_AQ_LINK_UP, align 4
  %50 = and i32 %48, %49
  %51 = call i32 @ice_set_pfe_link(%struct.ice_vf* %42, %struct.virtchnl_pf_event* %3, i32 %45, i32 %50)
  br label %52

52:                                               ; preds = %41, %35
  br label %53

53:                                               ; preds = %52, %26
  %54 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %55 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %56 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @VIRTCHNL_OP_EVENT, align 4
  %59 = load i32, i32* @VIRTCHNL_STATUS_SUCCESS, align 4
  %60 = bitcast %struct.virtchnl_pf_event* %3 to i32*
  %61 = call i32 @ice_aq_send_msg_to_vf(%struct.ice_hw* %54, i32 %57, i32 %58, i32 %59, i32* %60, i32 12, i32* null)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ice_set_pfe_link(%struct.ice_vf*, %struct.virtchnl_pf_event*, i32, i32) #2

declare dso_local i32 @ice_set_pfe_link_forced(%struct.ice_vf*, %struct.virtchnl_pf_event*, i32) #2

declare dso_local i32 @ice_aq_send_msg_to_vf(%struct.ice_hw*, i32, i32, i32, i32*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
