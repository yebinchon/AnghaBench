; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_del_rx_ctx_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_del_rx_ctx_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_bc_trans = type { %struct.qlcnic_vf_info* }
%struct.qlcnic_vf_info = type { i64, %struct.TYPE_6__*, %struct.qlcnic_adapter* }
%struct.TYPE_6__ = type { i32 }
%struct.qlcnic_adapter = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32* }

@QLCNIC_MAC_DEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_bc_trans*, %struct.qlcnic_cmd_args*)* @qlcnic_sriov_pf_del_rx_ctx_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_pf_del_rx_ctx_cmd(%struct.qlcnic_bc_trans* %0, %struct.qlcnic_cmd_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_bc_trans*, align 8
  %5 = alloca %struct.qlcnic_cmd_args*, align 8
  %6 = alloca %struct.qlcnic_vf_info*, align 8
  %7 = alloca %struct.qlcnic_adapter*, align 8
  %8 = alloca i32, align 4
  store %struct.qlcnic_bc_trans* %0, %struct.qlcnic_bc_trans** %4, align 8
  store %struct.qlcnic_cmd_args* %1, %struct.qlcnic_cmd_args** %5, align 8
  %9 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %10 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %9, i32 0, i32 0
  %11 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %10, align 8
  store %struct.qlcnic_vf_info* %11, %struct.qlcnic_vf_info** %6, align 8
  %12 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %13 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %12, i32 0, i32 2
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %13, align 8
  store %struct.qlcnic_adapter* %14, %struct.qlcnic_adapter** %7, align 8
  %15 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %16 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %17 = call i32 @qlcnic_sriov_validate_del_rx_ctx(%struct.qlcnic_vf_info* %15, %struct.qlcnic_cmd_args* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %22 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, 201326592
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %57

29:                                               ; preds = %2
  %30 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %31 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %32 = load i32, i32* @QLCNIC_MAC_DEL, align 4
  %33 = call i32 @qlcnic_83xx_cfg_default_mac_vlan(%struct.qlcnic_adapter* %30, %struct.qlcnic_vf_info* %31, i32 %32)
  %34 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %35 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 16
  %40 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %41 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %39
  store i32 %46, i32* %44, align 4
  %47 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %48 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %49 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %47, %struct.qlcnic_cmd_args* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %29
  %53 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %54 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %52, %29
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %20
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @qlcnic_sriov_validate_del_rx_ctx(%struct.qlcnic_vf_info*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @qlcnic_83xx_cfg_default_mac_vlan(%struct.qlcnic_adapter*, %struct.qlcnic_vf_info*, i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
