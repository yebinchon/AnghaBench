; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_get_stats_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_get_stats_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i64, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.i40e_vsi** }
%struct.i40e_vsi = type { %struct.i40e_eth_stats }
%struct.i40e_eth_stats = type { i32 }
%struct.virtchnl_queue_select = type { i32 }

@I40E_VF_STATE_ACTIVE = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@VIRTCHNL_OP_GET_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vf*, i32*)* @i40e_vc_get_stats_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_vc_get_stats_msg(%struct.i40e_vf* %0, i32* %1) #0 {
  %3 = alloca %struct.i40e_vf*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.virtchnl_queue_select*, align 8
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca %struct.i40e_eth_stats, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.i40e_vsi*, align 8
  store %struct.i40e_vf* %0, %struct.i40e_vf** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = bitcast i32* %10 to %struct.virtchnl_queue_select*
  store %struct.virtchnl_queue_select* %11, %struct.virtchnl_queue_select** %5, align 8
  %12 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %13 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %12, i32 0, i32 2
  %14 = load %struct.i40e_pf*, %struct.i40e_pf** %13, align 8
  store %struct.i40e_pf* %14, %struct.i40e_pf** %6, align 8
  store i32 0, i32* %8, align 4
  %15 = call i32 @memset(%struct.i40e_eth_stats* %7, i32 0, i32 4)
  %16 = load i32, i32* @I40E_VF_STATE_ACTIVE, align 4
  %17 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %18 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %17, i32 0, i32 1
  %19 = call i32 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %22, i32* %8, align 4
  br label %52

23:                                               ; preds = %2
  %24 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %25 = load %struct.virtchnl_queue_select*, %struct.virtchnl_queue_select** %5, align 8
  %26 = getelementptr inbounds %struct.virtchnl_queue_select, %struct.virtchnl_queue_select* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @i40e_vc_isvalid_vsi_id(%struct.i40e_vf* %24, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %31, i32* %8, align 4
  br label %52

32:                                               ; preds = %23
  %33 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %34 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %33, i32 0, i32 0
  %35 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %34, align 8
  %36 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %37 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %35, i64 %38
  %40 = load %struct.i40e_vsi*, %struct.i40e_vsi** %39, align 8
  store %struct.i40e_vsi* %40, %struct.i40e_vsi** %9, align 8
  %41 = load %struct.i40e_vsi*, %struct.i40e_vsi** %9, align 8
  %42 = icmp ne %struct.i40e_vsi* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %32
  %44 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %44, i32* %8, align 4
  br label %52

45:                                               ; preds = %32
  %46 = load %struct.i40e_vsi*, %struct.i40e_vsi** %9, align 8
  %47 = call i32 @i40e_update_eth_stats(%struct.i40e_vsi* %46)
  %48 = load %struct.i40e_vsi*, %struct.i40e_vsi** %9, align 8
  %49 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %48, i32 0, i32 0
  %50 = bitcast %struct.i40e_eth_stats* %7 to i8*
  %51 = bitcast %struct.i40e_eth_stats* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 4, i1 false)
  br label %52

52:                                               ; preds = %45, %43, %30, %21
  %53 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %54 = load i32, i32* @VIRTCHNL_OP_GET_STATS, align 4
  %55 = load i32, i32* %8, align 4
  %56 = bitcast %struct.i40e_eth_stats* %7 to i32*
  %57 = call i32 @i40e_vc_send_msg_to_vf(%struct.i40e_vf* %53, i32 %54, i32 %55, i32* %56, i32 4)
  ret i32 %57
}

declare dso_local i32 @memset(%struct.i40e_eth_stats*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @i40e_vc_isvalid_vsi_id(%struct.i40e_vf*, i32) #1

declare dso_local i32 @i40e_update_eth_stats(%struct.i40e_vsi*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @i40e_vc_send_msg_to_vf(%struct.i40e_vf*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
