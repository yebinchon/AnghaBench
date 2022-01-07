; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_notify_vf_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_notify_vf_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.virtchnl_pf_event = type { i32, i32 }

@I40E_VF_STATE_INIT = common dso_local global i32 0, align 4
@I40E_VF_STATE_ACTIVE = common dso_local global i32 0, align 4
@VIRTCHNL_EVENT_RESET_IMPENDING = common dso_local global i32 0, align 4
@PF_EVENT_SEVERITY_CERTAIN_DOOM = common dso_local global i32 0, align 4
@VIRTCHNL_OP_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_vc_notify_vf_reset(%struct.i40e_vf* %0) #0 {
  %2 = alloca %struct.i40e_vf*, align 8
  %3 = alloca %struct.virtchnl_pf_event, align 4
  %4 = alloca i32, align 4
  store %struct.i40e_vf* %0, %struct.i40e_vf** %2, align 8
  %5 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %6 = icmp ne %struct.i40e_vf* %5, null
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %9 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %12 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %10, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %7, %1
  br label %56

18:                                               ; preds = %7
  %19 = load i32, i32* @I40E_VF_STATE_INIT, align 4
  %20 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %21 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %20, i32 0, i32 2
  %22 = call i32 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @I40E_VF_STATE_ACTIVE, align 4
  %26 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %27 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %26, i32 0, i32 2
  %28 = call i32 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %56

31:                                               ; preds = %24, %18
  %32 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %33 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %36 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = add nsw i32 %34, %42
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* @VIRTCHNL_EVENT_RESET_IMPENDING, align 4
  %45 = getelementptr inbounds %struct.virtchnl_pf_event, %struct.virtchnl_pf_event* %3, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @PF_EVENT_SEVERITY_CERTAIN_DOOM, align 4
  %47 = getelementptr inbounds %struct.virtchnl_pf_event, %struct.virtchnl_pf_event* %3, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %49 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @VIRTCHNL_OP_EVENT, align 4
  %54 = bitcast %struct.virtchnl_pf_event* %3 to i32*
  %55 = call i32 @i40e_aq_send_msg_to_vf(%struct.TYPE_6__* %51, i32 %52, i32 %53, i32 0, i32* %54, i32 8, i32* null)
  br label %56

56:                                               ; preds = %31, %30, %17
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @i40e_aq_send_msg_to_vf(%struct.TYPE_6__*, i32, i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
