; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_vc_get_stats_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_vc_get_stats_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vf = type { i64, i32, %struct.ice_pf* }
%struct.ice_pf = type { %struct.ice_vsi** }
%struct.ice_vsi = type { %struct.ice_eth_stats }
%struct.ice_eth_stats = type { i32 }
%struct.virtchnl_queue_select = type { i32 }

@VIRTCHNL_STATUS_SUCCESS = common dso_local global i32 0, align 4
@ICE_VF_STATE_ACTIVE = common dso_local global i32 0, align 4
@VIRTCHNL_STATUS_ERR_PARAM = common dso_local global i32 0, align 4
@VIRTCHNL_OP_GET_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_vf*, i32*)* @ice_vc_get_stats_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_vc_get_stats_msg(%struct.ice_vf* %0, i32* %1) #0 {
  %3 = alloca %struct.ice_vf*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.virtchnl_queue_select*, align 8
  %7 = alloca %struct.ice_pf*, align 8
  %8 = alloca %struct.ice_eth_stats, align 4
  %9 = alloca %struct.ice_vsi*, align 8
  store %struct.ice_vf* %0, %struct.ice_vf** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32, i32* @VIRTCHNL_STATUS_SUCCESS, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = bitcast i32* %11 to %struct.virtchnl_queue_select*
  store %struct.virtchnl_queue_select* %12, %struct.virtchnl_queue_select** %6, align 8
  %13 = load %struct.ice_vf*, %struct.ice_vf** %3, align 8
  %14 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %13, i32 0, i32 2
  %15 = load %struct.ice_pf*, %struct.ice_pf** %14, align 8
  store %struct.ice_pf* %15, %struct.ice_pf** %7, align 8
  %16 = load i32, i32* @ICE_VF_STATE_ACTIVE, align 4
  %17 = load %struct.ice_vf*, %struct.ice_vf** %3, align 8
  %18 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @test_bit(i32 %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @VIRTCHNL_STATUS_ERR_PARAM, align 4
  store i32 %23, i32* %5, align 4
  br label %54

24:                                               ; preds = %2
  %25 = load %struct.ice_vf*, %struct.ice_vf** %3, align 8
  %26 = load %struct.virtchnl_queue_select*, %struct.virtchnl_queue_select** %6, align 8
  %27 = getelementptr inbounds %struct.virtchnl_queue_select, %struct.virtchnl_queue_select* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ice_vc_isvalid_vsi_id(%struct.ice_vf* %25, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @VIRTCHNL_STATUS_ERR_PARAM, align 4
  store i32 %32, i32* %5, align 4
  br label %54

33:                                               ; preds = %24
  %34 = load %struct.ice_pf*, %struct.ice_pf** %7, align 8
  %35 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %34, i32 0, i32 0
  %36 = load %struct.ice_vsi**, %struct.ice_vsi*** %35, align 8
  %37 = load %struct.ice_vf*, %struct.ice_vf** %3, align 8
  %38 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.ice_vsi*, %struct.ice_vsi** %36, i64 %39
  %41 = load %struct.ice_vsi*, %struct.ice_vsi** %40, align 8
  store %struct.ice_vsi* %41, %struct.ice_vsi** %9, align 8
  %42 = load %struct.ice_vsi*, %struct.ice_vsi** %9, align 8
  %43 = icmp ne %struct.ice_vsi* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %33
  %45 = load i32, i32* @VIRTCHNL_STATUS_ERR_PARAM, align 4
  store i32 %45, i32* %5, align 4
  br label %54

46:                                               ; preds = %33
  %47 = call i32 @memset(%struct.ice_eth_stats* %8, i32 0, i32 4)
  %48 = load %struct.ice_vsi*, %struct.ice_vsi** %9, align 8
  %49 = call i32 @ice_update_eth_stats(%struct.ice_vsi* %48)
  %50 = load %struct.ice_vsi*, %struct.ice_vsi** %9, align 8
  %51 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %50, i32 0, i32 0
  %52 = bitcast %struct.ice_eth_stats* %8 to i8*
  %53 = bitcast %struct.ice_eth_stats* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  br label %54

54:                                               ; preds = %46, %44, %31, %22
  %55 = load %struct.ice_vf*, %struct.ice_vf** %3, align 8
  %56 = load i32, i32* @VIRTCHNL_OP_GET_STATS, align 4
  %57 = load i32, i32* %5, align 4
  %58 = bitcast %struct.ice_eth_stats* %8 to i32*
  %59 = call i32 @ice_vc_send_msg_to_vf(%struct.ice_vf* %55, i32 %56, i32 %57, i32* %58, i32 4)
  ret i32 %59
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @ice_vc_isvalid_vsi_id(%struct.ice_vf*, i32) #1

declare dso_local i32 @memset(%struct.ice_eth_stats*, i32, i32) #1

declare dso_local i32 @ice_update_eth_stats(%struct.ice_vsi*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ice_vc_send_msg_to_vf(%struct.ice_vf*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
