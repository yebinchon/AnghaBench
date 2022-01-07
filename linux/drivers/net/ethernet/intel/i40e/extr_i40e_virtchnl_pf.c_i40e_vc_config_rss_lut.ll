; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_config_rss_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_config_rss_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i64, i64, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.i40e_vsi** }
%struct.i40e_vsi = type { i32 }
%struct.virtchnl_rss_lut = type { i64, i64*, i32 }

@I40E_VF_STATE_ACTIVE = common dso_local global i32 0, align 4
@I40E_VF_HLUT_ARRAY_SIZE = common dso_local global i64 0, align 8
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@VIRTCHNL_OP_CONFIG_RSS_LUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vf*, i32*)* @i40e_vc_config_rss_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_vc_config_rss_lut(%struct.i40e_vf* %0, i32* %1) #0 {
  %3 = alloca %struct.i40e_vf*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.virtchnl_rss_lut*, align 8
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca %struct.i40e_vsi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.i40e_vf* %0, %struct.i40e_vf** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = bitcast i32* %10 to %struct.virtchnl_rss_lut*
  store %struct.virtchnl_rss_lut* %11, %struct.virtchnl_rss_lut** %5, align 8
  %12 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %13 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %12, i32 0, i32 3
  %14 = load %struct.i40e_pf*, %struct.i40e_pf** %13, align 8
  store %struct.i40e_pf* %14, %struct.i40e_pf** %6, align 8
  store %struct.i40e_vsi* null, %struct.i40e_vsi** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* @I40E_VF_STATE_ACTIVE, align 4
  %16 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %17 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %16, i32 0, i32 2
  %18 = call i32 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %2
  %21 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %22 = load %struct.virtchnl_rss_lut*, %struct.virtchnl_rss_lut** %5, align 8
  %23 = getelementptr inbounds %struct.virtchnl_rss_lut, %struct.virtchnl_rss_lut* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @i40e_vc_isvalid_vsi_id(%struct.i40e_vf* %21, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load %struct.virtchnl_rss_lut*, %struct.virtchnl_rss_lut** %5, align 8
  %29 = getelementptr inbounds %struct.virtchnl_rss_lut, %struct.virtchnl_rss_lut* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @I40E_VF_HLUT_ARRAY_SIZE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27, %20, %2
  %34 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %34, i32* %8, align 4
  br label %74

35:                                               ; preds = %27
  store i64 0, i64* %9, align 8
  br label %36

36:                                               ; preds = %56, %35
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.virtchnl_rss_lut*, %struct.virtchnl_rss_lut** %5, align 8
  %39 = getelementptr inbounds %struct.virtchnl_rss_lut, %struct.virtchnl_rss_lut* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %36
  %43 = load %struct.virtchnl_rss_lut*, %struct.virtchnl_rss_lut** %5, align 8
  %44 = getelementptr inbounds %struct.virtchnl_rss_lut, %struct.virtchnl_rss_lut* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %50 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sge i64 %48, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %54, i32* %8, align 4
  br label %74

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %9, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %9, align 8
  br label %36

59:                                               ; preds = %36
  %60 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %61 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %60, i32 0, i32 0
  %62 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %61, align 8
  %63 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %64 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %62, i64 %65
  %67 = load %struct.i40e_vsi*, %struct.i40e_vsi** %66, align 8
  store %struct.i40e_vsi* %67, %struct.i40e_vsi** %7, align 8
  %68 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %69 = load %struct.virtchnl_rss_lut*, %struct.virtchnl_rss_lut** %5, align 8
  %70 = getelementptr inbounds %struct.virtchnl_rss_lut, %struct.virtchnl_rss_lut* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* @I40E_VF_HLUT_ARRAY_SIZE, align 8
  %73 = call i32 @i40e_config_rss(%struct.i40e_vsi* %68, i32* null, i64* %71, i64 %72)
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %59, %53, %33
  %75 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %76 = load i32, i32* @VIRTCHNL_OP_CONFIG_RSS_LUT, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf* %75, i32 %76, i32 %77)
  ret i32 %78
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @i40e_vc_isvalid_vsi_id(%struct.i40e_vf*, i32) #1

declare dso_local i32 @i40e_config_rss(%struct.i40e_vsi*, i32*, i64*, i64) #1

declare dso_local i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
