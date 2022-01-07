; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_del_guest_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_del_guest_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.qlcnic_sriov* }
%struct.qlcnic_sriov = type { i32 }
%struct.qlcnic_vf_info = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@QLCNIC_MAC_DEL = common dso_local global i32 0, align 4
@QLCNIC_MAC_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_vf_info*, %struct.qlcnic_cmd_args*)* @qlcnic_sriov_pf_del_guest_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_pf_del_guest_vlan(%struct.qlcnic_adapter* %0, %struct.qlcnic_vf_info* %1, %struct.qlcnic_cmd_args* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.qlcnic_vf_info*, align 8
  %7 = alloca %struct.qlcnic_cmd_args*, align 8
  %8 = alloca %struct.qlcnic_sriov*, align 8
  %9 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store %struct.qlcnic_vf_info* %1, %struct.qlcnic_vf_info** %6, align 8
  store %struct.qlcnic_cmd_args* %2, %struct.qlcnic_cmd_args** %7, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %13, align 8
  store %struct.qlcnic_sriov* %14, %struct.qlcnic_sriov** %8, align 8
  %15 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %16 = call i32 @qlcnic_sriov_check_any_vlan(%struct.qlcnic_vf_info* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %57

21:                                               ; preds = %3
  %22 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %23 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 16
  store i32 %28, i32* %9, align 4
  %29 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %30 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %21
  %34 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %8, align 8
  %35 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @qlcnic_sriov_del_vlan_id(%struct.qlcnic_sriov* %34, %struct.qlcnic_vf_info* %35, i32 %36)
  store i32 0, i32* %4, align 4
  br label %57

38:                                               ; preds = %21
  %39 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %40 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @QLCNIC_MAC_DEL, align 4
  %43 = call i32 @qlcnic_sriov_cfg_vf_def_mac(%struct.qlcnic_adapter* %39, %struct.qlcnic_vf_info* %40, i32 %41, i32 %42)
  %44 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %8, align 8
  %45 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @qlcnic_sriov_del_vlan_id(%struct.qlcnic_sriov* %44, %struct.qlcnic_vf_info* %45, i32 %46)
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %49 = call i64 @qlcnic_83xx_pf_check(%struct.qlcnic_adapter* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %38
  %52 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %53 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %54 = load i32, i32* @QLCNIC_MAC_ADD, align 4
  %55 = call i32 @qlcnic_sriov_cfg_vf_def_mac(%struct.qlcnic_adapter* %52, %struct.qlcnic_vf_info* %53, i32 0, i32 %54)
  br label %56

56:                                               ; preds = %51, %38
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %33, %18
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @qlcnic_sriov_check_any_vlan(%struct.qlcnic_vf_info*) #1

declare dso_local i32 @qlcnic_sriov_del_vlan_id(%struct.qlcnic_sriov*, %struct.qlcnic_vf_info*, i32) #1

declare dso_local i32 @qlcnic_sriov_cfg_vf_def_mac(%struct.qlcnic_adapter*, %struct.qlcnic_vf_info*, i32, i32) #1

declare dso_local i64 @qlcnic_83xx_pf_check(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
