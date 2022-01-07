; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_validate_cfg_macvlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_validate_cfg_macvlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32 }
%struct.qlcnic_vf_info = type { %struct.qlcnic_vport* }
%struct.qlcnic_vport = type { i32, i64, i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@BIT_8 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BIT_31 = common dso_local global i32 0, align 4
@QLC_PVID_MODE = common dso_local global i64 0, align 8
@QLCNIC_MAC_ADD = common dso_local global i32 0, align 4
@QLCNIC_MAC_VLAN_ADD = common dso_local global i32 0, align 4
@QLCNIC_MAC_VLAN_DEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_vf_info*, %struct.qlcnic_cmd_args*)* @qlcnic_sriov_validate_cfg_macvlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_validate_cfg_macvlan(%struct.qlcnic_adapter* %0, %struct.qlcnic_vf_info* %1, %struct.qlcnic_cmd_args* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.qlcnic_vf_info*, align 8
  %7 = alloca %struct.qlcnic_cmd_args*, align 8
  %8 = alloca %struct.qlcnic_vport*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store %struct.qlcnic_vf_info* %1, %struct.qlcnic_vf_info** %6, align 8
  store %struct.qlcnic_cmd_args* %2, %struct.qlcnic_cmd_args** %7, align 8
  %11 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %12 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %11, i32 0, i32 0
  %13 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %12, align 8
  store %struct.qlcnic_vport* %13, %struct.qlcnic_vport** %8, align 8
  %14 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %15 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @BIT_8, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %101

26:                                               ; preds = %3
  %27 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %28 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %27, i32 0, i32 0
  %29 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %28, align 8
  %30 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = shl i32 %31, 16
  %33 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %34 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %32
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* @BIT_31, align 4
  %41 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %42 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %40
  store i32 %47, i32* %45, align 4
  %48 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %8, align 8
  %49 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @QLC_PVID_MODE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %100

53:                                               ; preds = %26
  %54 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %55 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 7
  store i32 %60, i32* %9, align 4
  %61 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %62 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, -8
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @QLCNIC_MAC_ADD, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %53
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @QLCNIC_MAC_VLAN_ADD, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71, %53
  %76 = load i32, i32* @QLCNIC_MAC_VLAN_ADD, align 4
  br label %79

77:                                               ; preds = %71
  %78 = load i32, i32* @QLCNIC_MAC_VLAN_DEL, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  store i32 %80, i32* %10, align 4
  %81 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %8, align 8
  %82 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = shl i32 %83, 16
  %85 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %86 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 3
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %84
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %94 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %92
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %79, %26
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %23
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
