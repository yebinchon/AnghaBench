; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_iwarp_qvmap_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_iwarp_qvmap_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i32 }
%struct.virtchnl_iwarp_qvlist_info = type { i32 }

@I40E_VF_STATE_ACTIVE = common dso_local global i32 0, align 4
@I40E_VF_STATE_IWARPENA = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@VIRTCHNL_OP_CONFIG_IWARP_IRQ_MAP = common dso_local global i32 0, align 4
@VIRTCHNL_OP_RELEASE_IWARP_IRQ_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vf*, i32*, i32)* @i40e_vc_iwarp_qvmap_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_vc_iwarp_qvmap_msg(%struct.i40e_vf* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.i40e_vf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.virtchnl_iwarp_qvlist_info*, align 8
  %8 = alloca i32, align 4
  store %struct.i40e_vf* %0, %struct.i40e_vf** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = bitcast i32* %9 to %struct.virtchnl_iwarp_qvlist_info*
  store %struct.virtchnl_iwarp_qvlist_info* %10, %struct.virtchnl_iwarp_qvlist_info** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @I40E_VF_STATE_ACTIVE, align 4
  %12 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %13 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %12, i32 0, i32 0
  %14 = call i32 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i32, i32* @I40E_VF_STATE_IWARPENA, align 4
  %18 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %19 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %18, i32 0, i32 0
  %20 = call i32 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %16, %3
  %23 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %23, i32* %8, align 4
  br label %39

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %29 = load %struct.virtchnl_iwarp_qvlist_info*, %struct.virtchnl_iwarp_qvlist_info** %7, align 8
  %30 = call i64 @i40e_config_iwarp_qvlist(%struct.i40e_vf* %28, %struct.virtchnl_iwarp_qvlist_info* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %32, %27
  br label %38

35:                                               ; preds = %24
  %36 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %37 = call i32 @i40e_release_iwarp_qvlist(%struct.i40e_vf* %36)
  br label %38

38:                                               ; preds = %35, %34
  br label %39

39:                                               ; preds = %38, %22
  %40 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @VIRTCHNL_OP_CONFIG_IWARP_IRQ_MAP, align 4
  br label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @VIRTCHNL_OP_RELEASE_IWARP_IRQ_MAP, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf* %40, i32 %48, i32 %49)
  ret i32 %50
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @i40e_config_iwarp_qvlist(%struct.i40e_vf*, %struct.virtchnl_iwarp_qvlist_info*) #1

declare dso_local i32 @i40e_release_iwarp_qvlist(%struct.i40e_vf*) #1

declare dso_local i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
