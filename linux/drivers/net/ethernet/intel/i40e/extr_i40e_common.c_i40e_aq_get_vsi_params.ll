; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_aq_get_vsi_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_aq_get_vsi_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_vsi_context = type { i8*, i8*, i8*, i8*, i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_add_get_update_vsi = type { i32 }
%struct.i40e_aqc_add_get_update_vsi_completion = type { i32, i32, i32, i32 }

@i40e_aqc_opc_get_vsi_parameters = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_BUF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @i40e_aq_get_vsi_params(%struct.i40e_hw* %0, %struct.i40e_vsi_context* %1, %struct.i40e_asq_cmd_details* %2) #0 {
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca %struct.i40e_vsi_context*, align 8
  %6 = alloca %struct.i40e_asq_cmd_details*, align 8
  %7 = alloca %struct.i40e_aq_desc, align 4
  %8 = alloca %struct.i40e_aqc_add_get_update_vsi*, align 8
  %9 = alloca %struct.i40e_aqc_add_get_update_vsi_completion*, align 8
  %10 = alloca i64, align 8
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
  %17 = load i32, i32* @i40e_aqc_opc_get_vsi_parameters, align 4
  %18 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %7, i32 %17)
  %19 = load %struct.i40e_vsi_context*, %struct.i40e_vsi_context** %5, align 8
  %20 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %19, i32 0, i32 3
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @cpu_to_le16(i8* %21)
  %23 = load %struct.i40e_aqc_add_get_update_vsi*, %struct.i40e_aqc_add_get_update_vsi** %8, align 8
  %24 = getelementptr inbounds %struct.i40e_aqc_add_get_update_vsi, %struct.i40e_aqc_add_get_update_vsi* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i64, i64* @I40E_AQ_FLAG_BUF, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @cpu_to_le16(i8* %26)
  %28 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %7, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %27
  store i32 %30, i32* %28, align 4
  %31 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %32 = load %struct.i40e_vsi_context*, %struct.i40e_vsi_context** %5, align 8
  %33 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %32, i32 0, i32 4
  %34 = call i64 @i40e_asq_send_command(%struct.i40e_hw* %31, %struct.i40e_aq_desc* %7, i32* %33, i32 4, i32* null)
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %3
  br label %63

38:                                               ; preds = %3
  %39 = load %struct.i40e_aqc_add_get_update_vsi_completion*, %struct.i40e_aqc_add_get_update_vsi_completion** %9, align 8
  %40 = getelementptr inbounds %struct.i40e_aqc_add_get_update_vsi_completion, %struct.i40e_aqc_add_get_update_vsi_completion* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @le16_to_cpu(i32 %41)
  %43 = load %struct.i40e_vsi_context*, %struct.i40e_vsi_context** %5, align 8
  %44 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load %struct.i40e_aqc_add_get_update_vsi_completion*, %struct.i40e_aqc_add_get_update_vsi_completion** %9, align 8
  %46 = getelementptr inbounds %struct.i40e_aqc_add_get_update_vsi_completion, %struct.i40e_aqc_add_get_update_vsi_completion* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @le16_to_cpu(i32 %47)
  %49 = load %struct.i40e_vsi_context*, %struct.i40e_vsi_context** %5, align 8
  %50 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load %struct.i40e_aqc_add_get_update_vsi_completion*, %struct.i40e_aqc_add_get_update_vsi_completion** %9, align 8
  %52 = getelementptr inbounds %struct.i40e_aqc_add_get_update_vsi_completion, %struct.i40e_aqc_add_get_update_vsi_completion* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @le16_to_cpu(i32 %53)
  %55 = load %struct.i40e_vsi_context*, %struct.i40e_vsi_context** %5, align 8
  %56 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load %struct.i40e_aqc_add_get_update_vsi_completion*, %struct.i40e_aqc_add_get_update_vsi_completion** %9, align 8
  %58 = getelementptr inbounds %struct.i40e_aqc_add_get_update_vsi_completion, %struct.i40e_aqc_add_get_update_vsi_completion* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @le16_to_cpu(i32 %59)
  %61 = load %struct.i40e_vsi_context*, %struct.i40e_vsi_context** %5, align 8
  %62 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  br label %63

63:                                               ; preds = %38, %37
  %64 = load i64, i64* %10, align 8
  ret i64 %64
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @cpu_to_le16(i8*) #1

declare dso_local i64 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, i32*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
