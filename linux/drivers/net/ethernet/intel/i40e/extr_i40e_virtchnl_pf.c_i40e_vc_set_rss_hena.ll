; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_set_rss_hena.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_set_rss_hena.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i32, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { i32 }
%struct.virtchnl_rss_hena = type { i32 }

@I40E_VF_STATE_ACTIVE = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@VIRTCHNL_OP_SET_RSS_HENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vf*, i32*)* @i40e_vc_set_rss_hena to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_vc_set_rss_hena(%struct.i40e_vf* %0, i32* %1) #0 {
  %3 = alloca %struct.i40e_vf*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.virtchnl_rss_hena*, align 8
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca %struct.i40e_hw*, align 8
  %8 = alloca i32, align 4
  store %struct.i40e_vf* %0, %struct.i40e_vf** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = bitcast i32* %9 to %struct.virtchnl_rss_hena*
  store %struct.virtchnl_rss_hena* %10, %struct.virtchnl_rss_hena** %5, align 8
  %11 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %12 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %11, i32 0, i32 2
  %13 = load %struct.i40e_pf*, %struct.i40e_pf** %12, align 8
  store %struct.i40e_pf* %13, %struct.i40e_pf** %6, align 8
  %14 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %15 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %14, i32 0, i32 0
  store %struct.i40e_hw* %15, %struct.i40e_hw** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load i32, i32* @I40E_VF_STATE_ACTIVE, align 4
  %17 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %18 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %17, i32 0, i32 1
  %19 = call i32 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %22, i32* %8, align 4
  br label %43

23:                                               ; preds = %2
  %24 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %25 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %26 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @I40E_VFQF_HENA1(i32 0, i32 %27)
  %29 = load %struct.virtchnl_rss_hena*, %struct.virtchnl_rss_hena** %5, align 8
  %30 = getelementptr inbounds %struct.virtchnl_rss_hena, %struct.virtchnl_rss_hena* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @i40e_write_rx_ctl(%struct.i40e_hw* %24, i32 %28, i32 %31)
  %33 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %34 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %35 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @I40E_VFQF_HENA1(i32 1, i32 %36)
  %38 = load %struct.virtchnl_rss_hena*, %struct.virtchnl_rss_hena** %5, align 8
  %39 = getelementptr inbounds %struct.virtchnl_rss_hena, %struct.virtchnl_rss_hena* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 32
  %42 = call i32 @i40e_write_rx_ctl(%struct.i40e_hw* %33, i32 %37, i32 %41)
  br label %43

43:                                               ; preds = %23, %21
  %44 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %45 = load i32, i32* @VIRTCHNL_OP_SET_RSS_HENA, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf* %44, i32 %45, i32 %46)
  ret i32 %47
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @i40e_write_rx_ctl(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_VFQF_HENA1(i32, i32) #1

declare dso_local i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
