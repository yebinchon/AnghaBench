; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_iwarp_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_iwarp_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i32, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { i64, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@I40E_VF_STATE_ACTIVE = common dso_local global i32 0, align 4
@I40E_VF_STATE_IWARPENA = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@VIRTCHNL_OP_IWARP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vf*, i32*, i32)* @i40e_vc_iwarp_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_vc_iwarp_msg(%struct.i40e_vf* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.i40e_vf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40e_pf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i40e_vf* %0, %struct.i40e_vf** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %11 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %10, i32 0, i32 2
  %12 = load %struct.i40e_pf*, %struct.i40e_pf** %11, align 8
  store %struct.i40e_pf* %12, %struct.i40e_pf** %7, align 8
  %13 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %14 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %17 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %15, %20
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %22 = load i32, i32* @I40E_VF_STATE_ACTIVE, align 4
  %23 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %24 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %23, i32 0, i32 1
  %25 = call i32 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load i32, i32* @I40E_VF_STATE_IWARPENA, align 4
  %29 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %30 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %29, i32 0, i32 1
  %31 = call i32 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %27, %3
  %34 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %34, i32* %9, align 4
  br label %48

35:                                               ; preds = %27
  %36 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %37 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %40 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @i40e_notify_client_of_vf_msg(i32 %43, i32 %44, i32* %45, i32 %46)
  br label %48

48:                                               ; preds = %35, %33
  %49 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %50 = load i32, i32* @VIRTCHNL_OP_IWARP, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf* %49, i32 %50, i32 %51)
  ret i32 %52
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @i40e_notify_client_of_vf_msg(i32, i32, i32*, i32) #1

declare dso_local i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
