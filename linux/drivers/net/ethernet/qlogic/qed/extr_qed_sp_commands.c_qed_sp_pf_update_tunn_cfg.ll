; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sp_commands.c_qed_sp_pf_update_tunn_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sp_commands.c_qed_sp_pf_update_tunn_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_tunnel_info = type { i32 }
%struct.qed_spq_comp_cb = type { i32 }
%struct.qed_spq_entry = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.qed_sp_init_data = type { i32, %struct.qed_spq_comp_cb*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@COMMON_RAMROD_PF_UPDATE = common dso_local global i32 0, align 4
@PROTOCOLID_COMMON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_sp_pf_update_tunn_cfg(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.qed_tunnel_info* %2, i32 %3, %struct.qed_spq_comp_cb* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca %struct.qed_ptt*, align 8
  %9 = alloca %struct.qed_tunnel_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.qed_spq_comp_cb*, align 8
  %12 = alloca %struct.qed_spq_entry*, align 8
  %13 = alloca %struct.qed_sp_init_data, align 8
  %14 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %8, align 8
  store %struct.qed_tunnel_info* %2, %struct.qed_tunnel_info** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.qed_spq_comp_cb* %4, %struct.qed_spq_comp_cb** %11, align 8
  store %struct.qed_spq_entry* null, %struct.qed_spq_entry** %12, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %14, align 4
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %18 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = call i64 @IS_VF(%struct.TYPE_8__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %24 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %9, align 8
  %25 = call i32 @qed_vf_pf_tunnel_param_update(%struct.qed_hwfn* %23, %struct.qed_tunnel_info* %24)
  store i32 %25, i32* %6, align 4
  br label %78

26:                                               ; preds = %5
  %27 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %9, align 8
  %28 = icmp ne %struct.qed_tunnel_info* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %78

32:                                               ; preds = %26
  %33 = call i32 @memset(%struct.qed_sp_init_data* %13, i32 0, i32 24)
  %34 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %35 = call i32 @qed_spq_get_cid(%struct.qed_hwfn* %34)
  %36 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %13, i32 0, i32 3
  store i32 %35, i32* %36, align 4
  %37 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %38 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %13, i32 0, i32 2
  store i32 %40, i32* %41, align 8
  %42 = load i32, i32* %10, align 4
  %43 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %13, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = load %struct.qed_spq_comp_cb*, %struct.qed_spq_comp_cb** %11, align 8
  %45 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %13, i32 0, i32 1
  store %struct.qed_spq_comp_cb* %44, %struct.qed_spq_comp_cb** %45, align 8
  %46 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %47 = load i32, i32* @COMMON_RAMROD_PF_UPDATE, align 4
  %48 = load i32, i32* @PROTOCOLID_COMMON, align 4
  %49 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %46, %struct.qed_spq_entry** %12, i32 %47, i32 %48, %struct.qed_sp_init_data* %13)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %32
  %53 = load i32, i32* %14, align 4
  store i32 %53, i32* %6, align 4
  br label %78

54:                                               ; preds = %32
  %55 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %56 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %9, align 8
  %57 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %12, align 8
  %58 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = call i32 @qed_tunn_set_pf_update_params(%struct.qed_hwfn* %55, %struct.qed_tunnel_info* %56, i32* %60)
  %62 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %63 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %12, align 8
  %64 = call i32 @qed_spq_post(%struct.qed_hwfn* %62, %struct.qed_spq_entry* %63, i32* null)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %54
  %68 = load i32, i32* %14, align 4
  store i32 %68, i32* %6, align 4
  br label %78

69:                                               ; preds = %54
  %70 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %71 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %72 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %73 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = call i32 @qed_set_hw_tunn_mode_port(%struct.qed_hwfn* %70, %struct.qed_ptt* %71, i32* %75)
  %77 = load i32, i32* %14, align 4
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %69, %67, %52, %29, %22
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i64 @IS_VF(%struct.TYPE_8__*) #1

declare dso_local i32 @qed_vf_pf_tunnel_param_update(%struct.qed_hwfn*, %struct.qed_tunnel_info*) #1

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_spq_get_cid(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i32 @qed_tunn_set_pf_update_params(%struct.qed_hwfn*, %struct.qed_tunnel_info*, i32*) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

declare dso_local i32 @qed_set_hw_tunn_mode_port(%struct.qed_hwfn*, %struct.qed_ptt*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
