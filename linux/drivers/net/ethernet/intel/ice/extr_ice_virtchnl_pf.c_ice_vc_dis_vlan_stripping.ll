; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_vc_dis_vlan_stripping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_vc_dis_vlan_stripping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vf = type { i64, i32, %struct.ice_pf* }
%struct.ice_pf = type { %struct.ice_vsi** }
%struct.ice_vsi = type { i32 }

@VIRTCHNL_STATUS_SUCCESS = common dso_local global i32 0, align 4
@ICE_VF_STATE_ACTIVE = common dso_local global i32 0, align 4
@VIRTCHNL_STATUS_ERR_PARAM = common dso_local global i32 0, align 4
@VIRTCHNL_OP_DISABLE_VLAN_STRIPPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_vf*)* @ice_vc_dis_vlan_stripping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_vc_dis_vlan_stripping(%struct.ice_vf* %0) #0 {
  %2 = alloca %struct.ice_vf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_pf*, align 8
  %5 = alloca %struct.ice_vsi*, align 8
  store %struct.ice_vf* %0, %struct.ice_vf** %2, align 8
  %6 = load i32, i32* @VIRTCHNL_STATUS_SUCCESS, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %8 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %7, i32 0, i32 2
  %9 = load %struct.ice_pf*, %struct.ice_pf** %8, align 8
  store %struct.ice_pf* %9, %struct.ice_pf** %4, align 8
  %10 = load i32, i32* @ICE_VF_STATE_ACTIVE, align 4
  %11 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %12 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @test_bit(i32 %10, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @VIRTCHNL_STATUS_ERR_PARAM, align 4
  store i32 %17, i32* %3, align 4
  br label %38

18:                                               ; preds = %1
  %19 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %20 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %19, i32 0, i32 0
  %21 = load %struct.ice_vsi**, %struct.ice_vsi*** %20, align 8
  %22 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %23 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.ice_vsi*, %struct.ice_vsi** %21, i64 %24
  %26 = load %struct.ice_vsi*, %struct.ice_vsi** %25, align 8
  store %struct.ice_vsi* %26, %struct.ice_vsi** %5, align 8
  %27 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %28 = icmp ne %struct.ice_vsi* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %18
  %30 = load i32, i32* @VIRTCHNL_STATUS_ERR_PARAM, align 4
  store i32 %30, i32* %3, align 4
  br label %38

31:                                               ; preds = %18
  %32 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %33 = call i64 @ice_vsi_manage_vlan_stripping(%struct.ice_vsi* %32, i32 0)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @VIRTCHNL_STATUS_ERR_PARAM, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %31
  br label %38

38:                                               ; preds = %37, %29, %16
  %39 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %40 = load i32, i32* @VIRTCHNL_OP_DISABLE_VLAN_STRIPPING, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @ice_vc_send_msg_to_vf(%struct.ice_vf* %39, i32 %40, i32 %41, i32* null, i32 0)
  ret i32 %42
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i64 @ice_vsi_manage_vlan_stripping(%struct.ice_vsi*, i32) #1

declare dso_local i32 @ice_vc_send_msg_to_vf(%struct.ice_vf*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
