; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_vc_config_rss_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_vc_config_rss_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vf = type { i64, %struct.ice_pf*, i32 }
%struct.ice_pf = type { %struct.ice_vsi**, i32 }
%struct.ice_vsi = type { i32 }
%struct.virtchnl_rss_key = type { i64, i32, i32 }

@VIRTCHNL_STATUS_SUCCESS = common dso_local global i32 0, align 4
@ICE_VF_STATE_ACTIVE = common dso_local global i32 0, align 4
@VIRTCHNL_STATUS_ERR_PARAM = common dso_local global i32 0, align 4
@ICE_VSIQF_HKEY_ARRAY_SIZE = common dso_local global i64 0, align 8
@ICE_FLAG_RSS_ENA = common dso_local global i32 0, align 4
@VIRTCHNL_STATUS_ERR_ADMIN_QUEUE_ERROR = common dso_local global i32 0, align 4
@VIRTCHNL_OP_CONFIG_RSS_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_vf*, i32*)* @ice_vc_config_rss_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_vc_config_rss_key(%struct.ice_vf* %0, i32* %1) #0 {
  %3 = alloca %struct.ice_vf*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.virtchnl_rss_key*, align 8
  %7 = alloca %struct.ice_pf*, align 8
  %8 = alloca %struct.ice_vsi*, align 8
  store %struct.ice_vf* %0, %struct.ice_vf** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* @VIRTCHNL_STATUS_SUCCESS, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = bitcast i32* %10 to %struct.virtchnl_rss_key*
  store %struct.virtchnl_rss_key* %11, %struct.virtchnl_rss_key** %6, align 8
  %12 = load %struct.ice_vf*, %struct.ice_vf** %3, align 8
  %13 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %12, i32 0, i32 1
  %14 = load %struct.ice_pf*, %struct.ice_pf** %13, align 8
  store %struct.ice_pf* %14, %struct.ice_pf** %7, align 8
  store %struct.ice_vsi* null, %struct.ice_vsi** %8, align 8
  %15 = load i32, i32* @ICE_VF_STATE_ACTIVE, align 4
  %16 = load %struct.ice_vf*, %struct.ice_vf** %3, align 8
  %17 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @test_bit(i32 %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @VIRTCHNL_STATUS_ERR_PARAM, align 4
  store i32 %22, i32* %5, align 4
  br label %74

23:                                               ; preds = %2
  %24 = load %struct.ice_vf*, %struct.ice_vf** %3, align 8
  %25 = load %struct.virtchnl_rss_key*, %struct.virtchnl_rss_key** %6, align 8
  %26 = getelementptr inbounds %struct.virtchnl_rss_key, %struct.virtchnl_rss_key* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ice_vc_isvalid_vsi_id(%struct.ice_vf* %24, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @VIRTCHNL_STATUS_ERR_PARAM, align 4
  store i32 %31, i32* %5, align 4
  br label %74

32:                                               ; preds = %23
  %33 = load %struct.virtchnl_rss_key*, %struct.virtchnl_rss_key** %6, align 8
  %34 = getelementptr inbounds %struct.virtchnl_rss_key, %struct.virtchnl_rss_key* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ICE_VSIQF_HKEY_ARRAY_SIZE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @VIRTCHNL_STATUS_ERR_PARAM, align 4
  store i32 %39, i32* %5, align 4
  br label %74

40:                                               ; preds = %32
  %41 = load i32, i32* @ICE_FLAG_RSS_ENA, align 4
  %42 = load %struct.ice_vf*, %struct.ice_vf** %3, align 8
  %43 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %42, i32 0, i32 1
  %44 = load %struct.ice_pf*, %struct.ice_pf** %43, align 8
  %45 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @test_bit(i32 %41, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* @VIRTCHNL_STATUS_ERR_PARAM, align 4
  store i32 %50, i32* %5, align 4
  br label %74

51:                                               ; preds = %40
  %52 = load %struct.ice_pf*, %struct.ice_pf** %7, align 8
  %53 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %52, i32 0, i32 0
  %54 = load %struct.ice_vsi**, %struct.ice_vsi*** %53, align 8
  %55 = load %struct.ice_vf*, %struct.ice_vf** %3, align 8
  %56 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.ice_vsi*, %struct.ice_vsi** %54, i64 %57
  %59 = load %struct.ice_vsi*, %struct.ice_vsi** %58, align 8
  store %struct.ice_vsi* %59, %struct.ice_vsi** %8, align 8
  %60 = load %struct.ice_vsi*, %struct.ice_vsi** %8, align 8
  %61 = icmp ne %struct.ice_vsi* %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %51
  %63 = load i32, i32* @VIRTCHNL_STATUS_ERR_PARAM, align 4
  store i32 %63, i32* %5, align 4
  br label %74

64:                                               ; preds = %51
  %65 = load %struct.ice_vsi*, %struct.ice_vsi** %8, align 8
  %66 = load %struct.virtchnl_rss_key*, %struct.virtchnl_rss_key** %6, align 8
  %67 = getelementptr inbounds %struct.virtchnl_rss_key, %struct.virtchnl_rss_key* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @ice_set_rss(%struct.ice_vsi* %65, i32 %68, i32* null, i32 0)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* @VIRTCHNL_STATUS_ERR_ADMIN_QUEUE_ERROR, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %71, %64
  br label %74

74:                                               ; preds = %73, %62, %49, %38, %30, %21
  %75 = load %struct.ice_vf*, %struct.ice_vf** %3, align 8
  %76 = load i32, i32* @VIRTCHNL_OP_CONFIG_RSS_KEY, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @ice_vc_send_msg_to_vf(%struct.ice_vf* %75, i32 %76, i32 %77, i32* null, i32 0)
  ret i32 %78
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @ice_vc_isvalid_vsi_id(%struct.ice_vf*, i32) #1

declare dso_local i64 @ice_set_rss(%struct.ice_vsi*, i32, i32*, i32) #1

declare dso_local i32 @ice_vc_send_msg_to_vf(%struct.ice_vf*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
