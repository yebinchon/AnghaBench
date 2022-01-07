; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_config_rss_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_config_rss_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i64, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.i40e_vsi** }
%struct.i40e_vsi = type { i32 }
%struct.virtchnl_rss_key = type { i64, i32, i32 }

@I40E_VF_STATE_ACTIVE = common dso_local global i32 0, align 4
@I40E_HKEY_ARRAY_SIZE = common dso_local global i64 0, align 8
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@VIRTCHNL_OP_CONFIG_RSS_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vf*, i32*)* @i40e_vc_config_rss_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_vc_config_rss_key(%struct.i40e_vf* %0, i32* %1) #0 {
  %3 = alloca %struct.i40e_vf*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.virtchnl_rss_key*, align 8
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca %struct.i40e_vsi*, align 8
  %8 = alloca i32, align 4
  store %struct.i40e_vf* %0, %struct.i40e_vf** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = bitcast i32* %9 to %struct.virtchnl_rss_key*
  store %struct.virtchnl_rss_key* %10, %struct.virtchnl_rss_key** %5, align 8
  %11 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %12 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %11, i32 0, i32 2
  %13 = load %struct.i40e_pf*, %struct.i40e_pf** %12, align 8
  store %struct.i40e_pf* %13, %struct.i40e_pf** %6, align 8
  store %struct.i40e_vsi* null, %struct.i40e_vsi** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* @I40E_VF_STATE_ACTIVE, align 4
  %15 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %16 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %15, i32 0, i32 1
  %17 = call i32 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %21 = load %struct.virtchnl_rss_key*, %struct.virtchnl_rss_key** %5, align 8
  %22 = getelementptr inbounds %struct.virtchnl_rss_key, %struct.virtchnl_rss_key* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @i40e_vc_isvalid_vsi_id(%struct.i40e_vf* %20, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.virtchnl_rss_key*, %struct.virtchnl_rss_key** %5, align 8
  %28 = getelementptr inbounds %struct.virtchnl_rss_key, %struct.virtchnl_rss_key* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @I40E_HKEY_ARRAY_SIZE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26, %19, %2
  %33 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %33, i32* %8, align 4
  br label %48

34:                                               ; preds = %26
  %35 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %36 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %35, i32 0, i32 0
  %37 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %36, align 8
  %38 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %39 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %37, i64 %40
  %42 = load %struct.i40e_vsi*, %struct.i40e_vsi** %41, align 8
  store %struct.i40e_vsi* %42, %struct.i40e_vsi** %7, align 8
  %43 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %44 = load %struct.virtchnl_rss_key*, %struct.virtchnl_rss_key** %5, align 8
  %45 = getelementptr inbounds %struct.virtchnl_rss_key, %struct.virtchnl_rss_key* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @i40e_config_rss(%struct.i40e_vsi* %43, i32 %46, i32* null, i32 0)
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %34, %32
  %49 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %50 = load i32, i32* @VIRTCHNL_OP_CONFIG_RSS_KEY, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf* %49, i32 %50, i32 %51)
  ret i32 %52
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @i40e_vc_isvalid_vsi_id(%struct.i40e_vf*, i32) #1

declare dso_local i32 @i40e_config_rss(%struct.i40e_vsi*, i32, i32*, i32) #1

declare dso_local i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
