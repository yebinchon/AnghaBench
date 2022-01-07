; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_aq_set_vsi_uc_promisc_on_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_aq_set_vsi_uc_promisc_on_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_set_vsi_promiscuous_modes = type { i8*, i8*, i8*, i8* }

@i40e_aqc_opc_set_vsi_promiscuous_modes = common dso_local global i32 0, align 4
@I40E_AQC_SET_VSI_PROMISC_UNICAST = common dso_local global i32 0, align 4
@I40E_AQC_SET_VSI_VLAN_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_set_vsi_uc_promisc_on_vlan(%struct.i40e_hw* %0, i32 %1, i32 %2, i32 %3, %struct.i40e_asq_cmd_details* %4) #0 {
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i40e_asq_cmd_details*, align 8
  %11 = alloca %struct.i40e_aq_desc, align 4
  %12 = alloca %struct.i40e_aqc_set_vsi_promiscuous_modes*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.i40e_asq_cmd_details* %4, %struct.i40e_asq_cmd_details** %10, align 8
  %15 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %11, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = bitcast i32* %16 to %struct.i40e_aqc_set_vsi_promiscuous_modes*
  store %struct.i40e_aqc_set_vsi_promiscuous_modes* %17, %struct.i40e_aqc_set_vsi_promiscuous_modes** %12, align 8
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* @i40e_aqc_opc_set_vsi_promiscuous_modes, align 4
  %19 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %11, i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load i32, i32* @I40E_AQC_SET_VSI_PROMISC_UNICAST, align 4
  %24 = load i32, i32* %14, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %14, align 4
  br label %26

26:                                               ; preds = %22, %5
  %27 = load i32, i32* %14, align 4
  %28 = call i8* @cpu_to_le16(i32 %27)
  %29 = load %struct.i40e_aqc_set_vsi_promiscuous_modes*, %struct.i40e_aqc_set_vsi_promiscuous_modes** %12, align 8
  %30 = getelementptr inbounds %struct.i40e_aqc_set_vsi_promiscuous_modes, %struct.i40e_aqc_set_vsi_promiscuous_modes* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* @I40E_AQC_SET_VSI_PROMISC_UNICAST, align 4
  %32 = call i8* @cpu_to_le16(i32 %31)
  %33 = load %struct.i40e_aqc_set_vsi_promiscuous_modes*, %struct.i40e_aqc_set_vsi_promiscuous_modes** %12, align 8
  %34 = getelementptr inbounds %struct.i40e_aqc_set_vsi_promiscuous_modes, %struct.i40e_aqc_set_vsi_promiscuous_modes* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i8* @cpu_to_le16(i32 %35)
  %37 = load %struct.i40e_aqc_set_vsi_promiscuous_modes*, %struct.i40e_aqc_set_vsi_promiscuous_modes** %12, align 8
  %38 = getelementptr inbounds %struct.i40e_aqc_set_vsi_promiscuous_modes, %struct.i40e_aqc_set_vsi_promiscuous_modes* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @I40E_AQC_SET_VSI_VLAN_VALID, align 4
  %41 = or i32 %39, %40
  %42 = call i8* @cpu_to_le16(i32 %41)
  %43 = load %struct.i40e_aqc_set_vsi_promiscuous_modes*, %struct.i40e_aqc_set_vsi_promiscuous_modes** %12, align 8
  %44 = getelementptr inbounds %struct.i40e_aqc_set_vsi_promiscuous_modes, %struct.i40e_aqc_set_vsi_promiscuous_modes* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %46 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %10, align 8
  %47 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %45, %struct.i40e_aq_desc* %11, i32* null, i32 0, %struct.i40e_asq_cmd_details* %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  ret i32 %48
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, %struct.i40e_asq_cmd_details*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
