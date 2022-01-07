; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_enable_vlan_stripping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_enable_vlan_stripping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.i40e_vsi** }
%struct.i40e_vsi = type { i32 }

@I40E_VF_STATE_ACTIVE = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@VIRTCHNL_OP_ENABLE_VLAN_STRIPPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vf*, i32*)* @i40e_vc_enable_vlan_stripping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_vc_enable_vlan_stripping(%struct.i40e_vf* %0, i32* %1) #0 {
  %3 = alloca %struct.i40e_vf*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_vsi*, align 8
  store %struct.i40e_vf* %0, %struct.i40e_vf** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @I40E_VF_STATE_ACTIVE, align 4
  %8 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %9 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %8, i32 0, i32 2
  %10 = call i32 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %13, i32* %5, align 4
  br label %27

14:                                               ; preds = %2
  %15 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %16 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %18, align 8
  %20 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %21 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %19, i64 %22
  %24 = load %struct.i40e_vsi*, %struct.i40e_vsi** %23, align 8
  store %struct.i40e_vsi* %24, %struct.i40e_vsi** %6, align 8
  %25 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %26 = call i32 @i40e_vlan_stripping_enable(%struct.i40e_vsi* %25)
  br label %27

27:                                               ; preds = %14, %12
  %28 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %29 = load i32, i32* @VIRTCHNL_OP_ENABLE_VLAN_STRIPPING, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf* %28, i32 %29, i32 %30)
  ret i32 %31
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @i40e_vlan_stripping_enable(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
