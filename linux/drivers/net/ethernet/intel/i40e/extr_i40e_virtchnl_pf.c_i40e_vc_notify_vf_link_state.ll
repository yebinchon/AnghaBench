; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_notify_vf_link_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_notify_vf_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i32, i32, i64, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.i40e_link_status }
%struct.i40e_link_status = type { i32, i32 }
%struct.virtchnl_pf_event = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@VIRTCHNL_EVENT_LINK_CHANGE = common dso_local global i32 0, align 4
@PF_EVENT_SEVERITY_INFO = common dso_local global i32 0, align 4
@VIRTCHNL_LINK_SPEED_40GB = common dso_local global i32 0, align 4
@I40E_AQ_LINK_UP = common dso_local global i32 0, align 4
@VIRTCHNL_OP_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_vf*)* @i40e_vc_notify_vf_link_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_vc_notify_vf_link_state(%struct.i40e_vf* %0) #0 {
  %2 = alloca %struct.i40e_vf*, align 8
  %3 = alloca %struct.virtchnl_pf_event, align 4
  %4 = alloca %struct.i40e_pf*, align 8
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca %struct.i40e_link_status*, align 8
  %7 = alloca i32, align 4
  store %struct.i40e_vf* %0, %struct.i40e_vf** %2, align 8
  %8 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %9 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %8, i32 0, i32 4
  %10 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  store %struct.i40e_pf* %10, %struct.i40e_pf** %4, align 8
  %11 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %12 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %11, i32 0, i32 0
  store %struct.i40e_hw* %12, %struct.i40e_hw** %5, align 8
  %13 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %14 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store %struct.i40e_link_status* %16, %struct.i40e_link_status** %6, align 8
  %17 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %18 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %21 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = add nsw i32 %19, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @VIRTCHNL_EVENT_LINK_CHANGE, align 4
  %27 = getelementptr inbounds %struct.virtchnl_pf_event, %struct.virtchnl_pf_event* %3, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @PF_EVENT_SEVERITY_INFO, align 4
  %29 = getelementptr inbounds %struct.virtchnl_pf_event, %struct.virtchnl_pf_event* %3, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %31 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.virtchnl_pf_event, %struct.virtchnl_pf_event* %3, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds %struct.virtchnl_pf_event, %struct.virtchnl_pf_event* %3, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  br label %82

41:                                               ; preds = %1
  %42 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %43 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %41
  %47 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %48 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.virtchnl_pf_event, %struct.virtchnl_pf_event* %3, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %54 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = load i32, i32* @VIRTCHNL_LINK_SPEED_40GB, align 4
  br label %60

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i32 [ %58, %57 ], [ 0, %59 ]
  %62 = getelementptr inbounds %struct.virtchnl_pf_event, %struct.virtchnl_pf_event* %3, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  br label %81

65:                                               ; preds = %41
  %66 = load %struct.i40e_link_status*, %struct.i40e_link_status** %6, align 8
  %67 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @I40E_AQ_LINK_UP, align 4
  %70 = and i32 %68, %69
  %71 = getelementptr inbounds %struct.virtchnl_pf_event, %struct.virtchnl_pf_event* %3, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 4
  %74 = load %struct.i40e_link_status*, %struct.i40e_link_status** %6, align 8
  %75 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @i40e_virtchnl_link_speed(i32 %76)
  %78 = getelementptr inbounds %struct.virtchnl_pf_event, %struct.virtchnl_pf_event* %3, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  br label %81

81:                                               ; preds = %65, %60
  br label %82

82:                                               ; preds = %81, %34
  %83 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @VIRTCHNL_OP_EVENT, align 4
  %86 = bitcast %struct.virtchnl_pf_event* %3 to i32*
  %87 = call i32 @i40e_aq_send_msg_to_vf(%struct.i40e_hw* %83, i32 %84, i32 %85, i32 0, i32* %86, i32 16, i32* null)
  ret void
}

declare dso_local i32 @i40e_virtchnl_link_speed(i32) #1

declare dso_local i32 @i40e_aq_send_msg_to_vf(%struct.i40e_hw*, i32, i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
