; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_cfg_vf_def_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_cfg_vf_def_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32 }
%struct.qlcnic_vf_info = type { i32, %struct.qlcnic_vport* }
%struct.qlcnic_vport = type { i32* }
%struct.qlcnic_cmd_args = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.qlcnic_macvlan_mbx = type { i32, i32, i32, i32, i32, i32, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QLCNIC_CMD_CONFIG_MAC_VLAN = common dso_local global i32 0, align 4
@QLC_83XX_MBX_CMD_NO_WAIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QLCNIC_MAC_ADD = common dso_local global i32 0, align 4
@QLCNIC_MAC_VLAN_ADD = common dso_local global i32 0, align 4
@QLCNIC_MAC_VLAN_DEL = common dso_local global i32 0, align 4
@BIT_31 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_vf_info*, i64, i32)* @qlcnic_sriov_cfg_vf_def_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_cfg_vf_def_mac(%struct.qlcnic_adapter* %0, %struct.qlcnic_vf_info* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca %struct.qlcnic_vf_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.qlcnic_cmd_args*, align 8
  %11 = alloca %struct.qlcnic_macvlan_mbx, align 8
  %12 = alloca %struct.qlcnic_vport*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %6, align 8
  store %struct.qlcnic_vf_info* %1, %struct.qlcnic_vf_info** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %7, align 8
  %18 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %17, i32 0, i32 1
  %19 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %18, align 8
  store %struct.qlcnic_vport* %19, %struct.qlcnic_vport** %12, align 8
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call %struct.qlcnic_cmd_args* @kzalloc(i32 16, i32 %20)
  store %struct.qlcnic_cmd_args* %21, %struct.qlcnic_cmd_args** %10, align 8
  %22 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %10, align 8
  %23 = icmp ne %struct.qlcnic_cmd_args* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %138

27:                                               ; preds = %4
  %28 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %10, align 8
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %30 = load i32, i32* @QLCNIC_CMD_CONFIG_MAC_VLAN, align 4
  %31 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %28, %struct.qlcnic_adapter* %29, i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %134

35:                                               ; preds = %27
  %36 = load i32, i32* @QLC_83XX_MBX_CMD_NO_WAIT, align 4
  %37 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %10, align 8
  %38 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %40 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %7, align 8
  %41 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @qlcnic_sriov_pf_get_vport_handle(%struct.qlcnic_adapter* %39, i32 %42)
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %14, align 4
  br label %131

49:                                               ; preds = %35
  %50 = load i64, i64* %8, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @QLCNIC_MAC_ADD, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @QLCNIC_MAC_VLAN_ADD, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56, %52
  %61 = load i32, i32* @QLCNIC_MAC_VLAN_ADD, align 4
  br label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @QLCNIC_MAC_VLAN_DEL, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %64, %49
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, 256
  %69 = or i32 %68, 192
  %70 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %10, align 8
  %71 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 %69, i32* %74, align 4
  %75 = load i32, i32* %16, align 4
  %76 = and i32 %75, 65535
  %77 = shl i32 %76, 16
  %78 = load i32, i32* @BIT_31, align 4
  %79 = or i32 %77, %78
  %80 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %10, align 8
  %81 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %79
  store i32 %86, i32* %84, align 4
  %87 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %12, align 8
  %88 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  store i32* %89, i32** %13, align 8
  %90 = load i64, i64* %8, align 8
  %91 = getelementptr inbounds %struct.qlcnic_macvlan_mbx, %struct.qlcnic_macvlan_mbx* %11, i32 0, i32 6
  store i64 %90, i64* %91, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.qlcnic_macvlan_mbx, %struct.qlcnic_macvlan_mbx* %11, i32 0, i32 0
  store i32 %94, i32* %95, align 8
  %96 = load i32*, i32** %13, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.qlcnic_macvlan_mbx, %struct.qlcnic_macvlan_mbx* %11, i32 0, i32 1
  store i32 %98, i32* %99, align 4
  %100 = load i32*, i32** %13, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.qlcnic_macvlan_mbx, %struct.qlcnic_macvlan_mbx* %11, i32 0, i32 2
  store i32 %102, i32* %103, align 8
  %104 = load i32*, i32** %13, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 3
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.qlcnic_macvlan_mbx, %struct.qlcnic_macvlan_mbx* %11, i32 0, i32 3
  store i32 %106, i32* %107, align 4
  %108 = load i32*, i32** %13, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 4
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.qlcnic_macvlan_mbx, %struct.qlcnic_macvlan_mbx* %11, i32 0, i32 4
  store i32 %110, i32* %111, align 8
  %112 = load i32*, i32** %13, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 5
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.qlcnic_macvlan_mbx, %struct.qlcnic_macvlan_mbx* %11, i32 0, i32 5
  store i32 %114, i32* %115, align 4
  %116 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %10, align 8
  %117 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  store i32* %120, i32** %15, align 8
  %121 = load i32*, i32** %15, align 8
  %122 = call i32 @memcpy(i32* %121, %struct.qlcnic_macvlan_mbx* %11, i32 32)
  %123 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %124 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %10, align 8
  %125 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %123, %struct.qlcnic_cmd_args* %124)
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %14, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %66
  %129 = load i32, i32* %14, align 4
  store i32 %129, i32* %5, align 4
  br label %138

130:                                              ; preds = %66
  br label %131

131:                                              ; preds = %130, %46
  %132 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %10, align 8
  %133 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %132)
  br label %134

134:                                              ; preds = %131, %34
  %135 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %10, align 8
  %136 = call i32 @kfree(%struct.qlcnic_cmd_args* %135)
  %137 = load i32, i32* %14, align 4
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %134, %128, %24
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local %struct.qlcnic_cmd_args* @kzalloc(i32, i32) #1

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_sriov_pf_get_vport_handle(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.qlcnic_macvlan_mbx*, i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

declare dso_local i32 @kfree(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
