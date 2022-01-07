; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_aq_get_switch_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_aq_get_switch_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_aqc_get_switch_config_resp = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_switch_seid = type { i32 }

@i40e_aqc_opc_get_switch_config = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_BUF = common dso_local global i64 0, align 8
@I40E_AQ_LARGE_BUF = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_LB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_get_switch_config(%struct.i40e_hw* %0, %struct.i40e_aqc_get_switch_config_resp* %1, i32 %2, i32* %3, %struct.i40e_asq_cmd_details* %4) #0 {
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca %struct.i40e_aqc_get_switch_config_resp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.i40e_asq_cmd_details*, align 8
  %11 = alloca %struct.i40e_aq_desc, align 4
  %12 = alloca %struct.i40e_aqc_switch_seid*, align 8
  %13 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %6, align 8
  store %struct.i40e_aqc_get_switch_config_resp* %1, %struct.i40e_aqc_get_switch_config_resp** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.i40e_asq_cmd_details* %4, %struct.i40e_asq_cmd_details** %10, align 8
  %14 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %11, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = bitcast i32* %15 to %struct.i40e_aqc_switch_seid*
  store %struct.i40e_aqc_switch_seid* %16, %struct.i40e_aqc_switch_seid** %12, align 8
  %17 = load i32, i32* @i40e_aqc_opc_get_switch_config, align 4
  %18 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %11, i32 %17)
  %19 = load i64, i64* @I40E_AQ_FLAG_BUF, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @cpu_to_le16(i32 %20)
  %22 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %11, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %21
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @I40E_AQ_LARGE_BUF, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %5
  %29 = load i64, i64* @I40E_AQ_FLAG_LB, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @cpu_to_le16(i32 %30)
  %32 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %11, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %28, %5
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cpu_to_le16(i32 %37)
  %39 = load %struct.i40e_aqc_switch_seid*, %struct.i40e_aqc_switch_seid** %12, align 8
  %40 = getelementptr inbounds %struct.i40e_aqc_switch_seid, %struct.i40e_aqc_switch_seid* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %42 = load %struct.i40e_aqc_get_switch_config_resp*, %struct.i40e_aqc_get_switch_config_resp** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %10, align 8
  %45 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %41, %struct.i40e_aq_desc* %11, %struct.i40e_aqc_get_switch_config_resp* %42, i32 %43, %struct.i40e_asq_cmd_details* %44)
  store i32 %45, i32* %13, align 4
  %46 = load %struct.i40e_aqc_switch_seid*, %struct.i40e_aqc_switch_seid** %12, align 8
  %47 = getelementptr inbounds %struct.i40e_aqc_switch_seid, %struct.i40e_aqc_switch_seid* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le16_to_cpu(i32 %48)
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %13, align 4
  ret i32 %51
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, %struct.i40e_aqc_get_switch_config_resp*, i32, %struct.i40e_asq_cmd_details*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
