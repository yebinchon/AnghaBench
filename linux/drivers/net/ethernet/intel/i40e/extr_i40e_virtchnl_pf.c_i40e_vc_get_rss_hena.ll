; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_get_rss_hena.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_get_rss_hena.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i32, %struct.i40e_pf* }
%struct.i40e_pf = type { i32 }
%struct.virtchnl_rss_hena = type { i32 }

@I40E_VF_STATE_ACTIVE = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@I40E_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@VIRTCHNL_OP_GET_RSS_HENA_CAPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vf*, i32*)* @i40e_vc_get_rss_hena to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_vc_get_rss_hena(%struct.i40e_vf* %0, i32* %1) #0 {
  %3 = alloca %struct.i40e_vf*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.virtchnl_rss_hena*, align 8
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i40e_vf* %0, %struct.i40e_vf** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.virtchnl_rss_hena* null, %struct.virtchnl_rss_hena** %5, align 8
  %9 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %10 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %9, i32 0, i32 1
  %11 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  store %struct.i40e_pf* %11, %struct.i40e_pf** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* @I40E_VF_STATE_ACTIVE, align 4
  %13 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %14 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %13, i32 0, i32 0
  %15 = call i32 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %18, i32* %7, align 4
  br label %32

19:                                               ; preds = %2
  store i32 4, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.virtchnl_rss_hena* @kzalloc(i32 %20, i32 %21)
  store %struct.virtchnl_rss_hena* %22, %struct.virtchnl_rss_hena** %5, align 8
  %23 = load %struct.virtchnl_rss_hena*, %struct.virtchnl_rss_hena** %5, align 8
  %24 = icmp ne %struct.virtchnl_rss_hena* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @I40E_ERR_NO_MEMORY, align 4
  store i32 %26, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %32

27:                                               ; preds = %19
  %28 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %29 = call i32 @i40e_pf_get_default_rss_hena(%struct.i40e_pf* %28)
  %30 = load %struct.virtchnl_rss_hena*, %struct.virtchnl_rss_hena** %5, align 8
  %31 = getelementptr inbounds %struct.virtchnl_rss_hena, %struct.virtchnl_rss_hena* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %27, %25, %17
  %33 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %34 = load i32, i32* @VIRTCHNL_OP_GET_RSS_HENA_CAPS, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.virtchnl_rss_hena*, %struct.virtchnl_rss_hena** %5, align 8
  %37 = bitcast %struct.virtchnl_rss_hena* %36 to i32*
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @i40e_vc_send_msg_to_vf(%struct.i40e_vf* %33, i32 %34, i32 %35, i32* %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.virtchnl_rss_hena*, %struct.virtchnl_rss_hena** %5, align 8
  %41 = call i32 @kfree(%struct.virtchnl_rss_hena* %40)
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.virtchnl_rss_hena* @kzalloc(i32, i32) #1

declare dso_local i32 @i40e_pf_get_default_rss_hena(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_vc_send_msg_to_vf(%struct.i40e_vf*, i32, i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.virtchnl_rss_hena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
