; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_disable_queues_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_disable_queues_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i32, i64, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { i32* }
%struct.virtchnl_queue_select = type { i64, i64, i32 }

@I40E_VF_STATE_ACTIVE = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@I40E_MAX_VF_QUEUES = common dso_local global i64 0, align 8
@I40E_ERR_TIMEOUT = common dso_local global i32 0, align 4
@VIRTCHNL_OP_DISABLE_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vf*, i32*)* @i40e_vc_disable_queues_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_vc_disable_queues_msg(%struct.i40e_vf* %0, i32* %1) #0 {
  %3 = alloca %struct.i40e_vf*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.virtchnl_queue_select*, align 8
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca i32, align 4
  store %struct.i40e_vf* %0, %struct.i40e_vf** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to %struct.virtchnl_queue_select*
  store %struct.virtchnl_queue_select* %9, %struct.virtchnl_queue_select** %5, align 8
  %10 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %11 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %10, i32 0, i32 3
  %12 = load %struct.i40e_pf*, %struct.i40e_pf** %11, align 8
  store %struct.i40e_pf* %12, %struct.i40e_pf** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %14 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load i32, i32* @I40E_VF_STATE_ACTIVE, align 4
  %16 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %17 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %16, i32 0, i32 2
  %18 = call i32 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %21, i32* %7, align 4
  br label %88

22:                                               ; preds = %2
  %23 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %24 = load %struct.virtchnl_queue_select*, %struct.virtchnl_queue_select** %5, align 8
  %25 = getelementptr inbounds %struct.virtchnl_queue_select, %struct.virtchnl_queue_select* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @i40e_vc_isvalid_vsi_id(%struct.i40e_vf* %23, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %30, i32* %7, align 4
  br label %88

31:                                               ; preds = %22
  %32 = load %struct.virtchnl_queue_select*, %struct.virtchnl_queue_select** %5, align 8
  %33 = getelementptr inbounds %struct.virtchnl_queue_select, %struct.virtchnl_queue_select* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.virtchnl_queue_select*, %struct.virtchnl_queue_select** %5, align 8
  %38 = getelementptr inbounds %struct.virtchnl_queue_select, %struct.virtchnl_queue_select* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.virtchnl_queue_select*, %struct.virtchnl_queue_select** %5, align 8
  %43 = getelementptr inbounds %struct.virtchnl_queue_select, %struct.virtchnl_queue_select* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @I40E_MAX_VF_QUEUES, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.virtchnl_queue_select*, %struct.virtchnl_queue_select** %5, align 8
  %49 = getelementptr inbounds %struct.virtchnl_queue_select, %struct.virtchnl_queue_select* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @I40E_MAX_VF_QUEUES, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47, %41, %36
  %54 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %54, i32* %7, align 4
  br label %88

55:                                               ; preds = %47
  %56 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %57 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %60 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.virtchnl_queue_select*, %struct.virtchnl_queue_select** %5, align 8
  %65 = getelementptr inbounds %struct.virtchnl_queue_select, %struct.virtchnl_queue_select* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @i40e_ctrl_vf_tx_rings(i32 %63, i64 %66, i32 0)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %55
  %70 = load i32, i32* @I40E_ERR_TIMEOUT, align 4
  store i32 %70, i32* %7, align 4
  br label %88

71:                                               ; preds = %55
  %72 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %73 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %76 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.virtchnl_queue_select*, %struct.virtchnl_queue_select** %5, align 8
  %81 = getelementptr inbounds %struct.virtchnl_queue_select, %struct.virtchnl_queue_select* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @i40e_ctrl_vf_rx_rings(i32 %79, i64 %82, i32 0)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %71
  %86 = load i32, i32* @I40E_ERR_TIMEOUT, align 4
  store i32 %86, i32* %7, align 4
  br label %88

87:                                               ; preds = %71
  br label %88

88:                                               ; preds = %87, %85, %69, %53, %29, %20
  %89 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %90 = load i32, i32* @VIRTCHNL_OP_DISABLE_QUEUES, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf* %89, i32 %90, i32 %91)
  ret i32 %92
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @i40e_vc_isvalid_vsi_id(%struct.i40e_vf*, i32) #1

declare dso_local i64 @i40e_ctrl_vf_tx_rings(i32, i64, i32) #1

declare dso_local i64 @i40e_ctrl_vf_rx_rings(i32, i64, i32) #1

declare dso_local i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
