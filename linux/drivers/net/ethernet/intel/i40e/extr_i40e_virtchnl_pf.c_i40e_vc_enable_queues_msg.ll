; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_enable_queues_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_enable_queues_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i64, i32, i32, %struct.TYPE_2__*, i64, i32, %struct.i40e_pf* }
%struct.TYPE_2__ = type { i64 }
%struct.i40e_pf = type { i32* }
%struct.virtchnl_queue_select = type { i64, i64, i32 }

@I40E_VF_STATE_ACTIVE = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@I40E_ERR_TIMEOUT = common dso_local global i32 0, align 4
@VIRTCHNL_OP_ENABLE_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vf*, i32*)* @i40e_vc_enable_queues_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_vc_enable_queues_msg(%struct.i40e_vf* %0, i32* %1) #0 {
  %3 = alloca %struct.i40e_vf*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.virtchnl_queue_select*, align 8
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i40e_vf* %0, %struct.i40e_vf** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = bitcast i32* %9 to %struct.virtchnl_queue_select*
  store %struct.virtchnl_queue_select* %10, %struct.virtchnl_queue_select** %5, align 8
  %11 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %12 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %11, i32 0, i32 6
  %13 = load %struct.i40e_pf*, %struct.i40e_pf** %12, align 8
  store %struct.i40e_pf* %13, %struct.i40e_pf** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* @I40E_VF_STATE_ACTIVE, align 4
  %15 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %16 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %15, i32 0, i32 5
  %17 = call i32 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %20, i32* %7, align 4
  br label %112

21:                                               ; preds = %2
  %22 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %23 = load %struct.virtchnl_queue_select*, %struct.virtchnl_queue_select** %5, align 8
  %24 = getelementptr inbounds %struct.virtchnl_queue_select, %struct.virtchnl_queue_select* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @i40e_vc_isvalid_vsi_id(%struct.i40e_vf* %22, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %29, i32* %7, align 4
  br label %112

30:                                               ; preds = %21
  %31 = load %struct.virtchnl_queue_select*, %struct.virtchnl_queue_select** %5, align 8
  %32 = getelementptr inbounds %struct.virtchnl_queue_select, %struct.virtchnl_queue_select* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 0, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.virtchnl_queue_select*, %struct.virtchnl_queue_select** %5, align 8
  %37 = getelementptr inbounds %struct.virtchnl_queue_select, %struct.virtchnl_queue_select* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 0, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %41, i32* %7, align 4
  br label %112

42:                                               ; preds = %35, %30
  %43 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %44 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %47 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.virtchnl_queue_select*, %struct.virtchnl_queue_select** %5, align 8
  %52 = getelementptr inbounds %struct.virtchnl_queue_select, %struct.virtchnl_queue_select* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @i40e_ctrl_vf_rx_rings(i32 %50, i64 %53, i32 1)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %42
  %57 = load i32, i32* @I40E_ERR_TIMEOUT, align 4
  store i32 %57, i32* %7, align 4
  br label %112

58:                                               ; preds = %42
  %59 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %60 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %63 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.virtchnl_queue_select*, %struct.virtchnl_queue_select** %5, align 8
  %68 = getelementptr inbounds %struct.virtchnl_queue_select, %struct.virtchnl_queue_select* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @i40e_ctrl_vf_tx_rings(i32 %66, i64 %69, i32 1)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %58
  %73 = load i32, i32* @I40E_ERR_TIMEOUT, align 4
  store i32 %73, i32* %7, align 4
  br label %112

74:                                               ; preds = %58
  %75 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %76 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %109

79:                                               ; preds = %74
  store i32 1, i32* %8, align 4
  br label %80

80:                                               ; preds = %105, %79
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %83 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %108

86:                                               ; preds = %80
  %87 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %88 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %91 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %90, i32 0, i32 3
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds i32, i32* %89, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @i40e_vsi_start_rings(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %86
  %103 = load i32, i32* @I40E_ERR_TIMEOUT, align 4
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %102, %86
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %80

108:                                              ; preds = %80
  br label %109

109:                                              ; preds = %108, %74
  %110 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %111 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %110, i32 0, i32 2
  store i32 1, i32* %111, align 4
  br label %112

112:                                              ; preds = %109, %72, %56, %40, %28, %19
  %113 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %114 = load i32, i32* @VIRTCHNL_OP_ENABLE_QUEUES, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf* %113, i32 %114, i32 %115)
  ret i32 %116
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @i40e_vc_isvalid_vsi_id(%struct.i40e_vf*, i32) #1

declare dso_local i64 @i40e_ctrl_vf_rx_rings(i32, i64, i32) #1

declare dso_local i64 @i40e_ctrl_vf_tx_rings(i32, i64, i32) #1

declare dso_local i64 @i40e_vsi_start_rings(i32) #1

declare dso_local i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
