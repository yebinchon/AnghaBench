; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_vc_notify_vf_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_vc_notify_vf_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vf = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.virtchnl_pf_event = type { i32, i32 }

@ICE_VF_STATE_INIT = common dso_local global i32 0, align 4
@ICE_VF_STATE_ACTIVE = common dso_local global i32 0, align 4
@VIRTCHNL_EVENT_RESET_IMPENDING = common dso_local global i32 0, align 4
@PF_EVENT_SEVERITY_CERTAIN_DOOM = common dso_local global i32 0, align 4
@VIRTCHNL_OP_EVENT = common dso_local global i32 0, align 4
@VIRTCHNL_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_vf*)* @ice_vc_notify_vf_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_vc_notify_vf_reset(%struct.ice_vf* %0) #0 {
  %2 = alloca %struct.ice_vf*, align 8
  %3 = alloca %struct.virtchnl_pf_event, align 4
  store %struct.ice_vf* %0, %struct.ice_vf** %2, align 8
  %4 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %5 = icmp ne %struct.ice_vf* %4, null
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %8 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %11 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %9, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %6, %1
  br label %48

17:                                               ; preds = %6
  %18 = load i32, i32* @ICE_VF_STATE_INIT, align 4
  %19 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %20 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @test_bit(i32 %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @ICE_VF_STATE_ACTIVE, align 4
  %26 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %27 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @test_bit(i32 %25, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %48

32:                                               ; preds = %24, %17
  %33 = load i32, i32* @VIRTCHNL_EVENT_RESET_IMPENDING, align 4
  %34 = getelementptr inbounds %struct.virtchnl_pf_event, %struct.virtchnl_pf_event* %3, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @PF_EVENT_SEVERITY_CERTAIN_DOOM, align 4
  %36 = getelementptr inbounds %struct.virtchnl_pf_event, %struct.virtchnl_pf_event* %3, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %38 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %42 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @VIRTCHNL_OP_EVENT, align 4
  %45 = load i32, i32* @VIRTCHNL_STATUS_SUCCESS, align 4
  %46 = bitcast %struct.virtchnl_pf_event* %3 to i32*
  %47 = call i32 @ice_aq_send_msg_to_vf(i32* %40, i64 %43, i32 %44, i32 %45, i32* %46, i32 8, i32* null)
  br label %48

48:                                               ; preds = %32, %31, %16
  ret void
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @ice_aq_send_msg_to_vf(i32*, i64, i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
