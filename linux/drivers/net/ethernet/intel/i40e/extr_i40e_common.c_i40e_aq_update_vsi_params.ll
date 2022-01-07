; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_aq_update_vsi_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_aq_update_vsi_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_vsi_context = type { i8*, i8*, i32, i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_add_get_update_vsi = type { i32 }
%struct.i40e_aqc_add_get_update_vsi_completion = type { i32, i32 }

@i40e_aqc_opc_update_vsi_parameters = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_BUF = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_RD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_update_vsi_params(%struct.i40e_hw* %0, %struct.i40e_vsi_context* %1, %struct.i40e_asq_cmd_details* %2) #0 {
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca %struct.i40e_vsi_context*, align 8
  %6 = alloca %struct.i40e_asq_cmd_details*, align 8
  %7 = alloca %struct.i40e_aq_desc, align 4
  %8 = alloca %struct.i40e_aqc_add_get_update_vsi*, align 8
  %9 = alloca %struct.i40e_aqc_add_get_update_vsi_completion*, align 8
  %10 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %4, align 8
  store %struct.i40e_vsi_context* %1, %struct.i40e_vsi_context** %5, align 8
  store %struct.i40e_asq_cmd_details* %2, %struct.i40e_asq_cmd_details** %6, align 8
  %11 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %7, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = bitcast i32* %12 to %struct.i40e_aqc_add_get_update_vsi*
  store %struct.i40e_aqc_add_get_update_vsi* %13, %struct.i40e_aqc_add_get_update_vsi** %8, align 8
  %14 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %7, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = bitcast i32* %15 to %struct.i40e_aqc_add_get_update_vsi_completion*
  store %struct.i40e_aqc_add_get_update_vsi_completion* %16, %struct.i40e_aqc_add_get_update_vsi_completion** %9, align 8
  %17 = load i32, i32* @i40e_aqc_opc_update_vsi_parameters, align 4
  %18 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %7, i32 %17)
  %19 = load %struct.i40e_vsi_context*, %struct.i40e_vsi_context** %5, align 8
  %20 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @cpu_to_le16(i32 %21)
  %23 = load %struct.i40e_aqc_add_get_update_vsi*, %struct.i40e_aqc_add_get_update_vsi** %8, align 8
  %24 = getelementptr inbounds %struct.i40e_aqc_add_get_update_vsi, %struct.i40e_aqc_add_get_update_vsi* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @I40E_AQ_FLAG_BUF, align 4
  %26 = load i32, i32* @I40E_AQ_FLAG_RD, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @cpu_to_le16(i32 %27)
  %29 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %28
  store i32 %31, i32* %29, align 4
  %32 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %33 = load %struct.i40e_vsi_context*, %struct.i40e_vsi_context** %5, align 8
  %34 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %33, i32 0, i32 2
  %35 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %6, align 8
  %36 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %32, %struct.i40e_aq_desc* %7, i32* %34, i32 4, %struct.i40e_asq_cmd_details* %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.i40e_aqc_add_get_update_vsi_completion*, %struct.i40e_aqc_add_get_update_vsi_completion** %9, align 8
  %38 = getelementptr inbounds %struct.i40e_aqc_add_get_update_vsi_completion, %struct.i40e_aqc_add_get_update_vsi_completion* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @le16_to_cpu(i32 %39)
  %41 = load %struct.i40e_vsi_context*, %struct.i40e_vsi_context** %5, align 8
  %42 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.i40e_aqc_add_get_update_vsi_completion*, %struct.i40e_aqc_add_get_update_vsi_completion** %9, align 8
  %44 = getelementptr inbounds %struct.i40e_aqc_add_get_update_vsi_completion, %struct.i40e_aqc_add_get_update_vsi_completion* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @le16_to_cpu(i32 %45)
  %47 = load %struct.i40e_vsi_context*, %struct.i40e_vsi_context** %5, align 8
  %48 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* %10, align 4
  ret i32 %49
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, %struct.i40e_asq_cmd_details*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
