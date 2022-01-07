; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_handle_ufp_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_handle_ufp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.qed_ptt = type { i32 }

@QED_UFP_MODE_VNIC_BW = common dso_local global i64 0, align 8
@QED_UFP_MODE_ETS = common dso_local global i64 0, align 8
@QED_DCBX_OPERATIONAL_MIB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Invalid sched type, discard the UFP config\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*)* @qed_mcp_handle_ufp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_mcp_handle_ufp_event(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  %6 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %7 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %8 = call i32 @qed_mcp_read_ufp_config(%struct.qed_hwfn* %6, %struct.qed_ptt* %7)
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %10 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @QED_UFP_MODE_VNIC_BW, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %2
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %17 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %21 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %24 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %23, i32 0, i32 1
  %25 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %26 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @qed_hw_info_set_offload_tc(i32* %24, i32 %28)
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %31 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %32 = call i32 @qed_qm_reconf(%struct.qed_hwfn* %30, %struct.qed_ptt* %31)
  br label %51

33:                                               ; preds = %2
  %34 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %35 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @QED_UFP_MODE_ETS, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %42 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %43 = load i32, i32* @QED_DCBX_OPERATIONAL_MIB, align 4
  %44 = call i32 @qed_dcbx_mib_update_event(%struct.qed_hwfn* %41, %struct.qed_ptt* %42, i32 %43)
  br label %50

45:                                               ; preds = %33
  %46 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %47 = call i32 @DP_ERR(%struct.qed_hwfn* %46, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %56

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %15
  %52 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %53 = call i32 @qed_sp_pf_update_ufp(%struct.qed_hwfn* %52)
  %54 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %55 = call i32 @qed_sp_pf_update_stag(%struct.qed_hwfn* %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %51, %45
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @qed_mcp_read_ufp_config(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @qed_hw_info_set_offload_tc(i32*, i32) #1

declare dso_local i32 @qed_qm_reconf(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @qed_dcbx_mib_update_event(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @qed_sp_pf_update_ufp(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_sp_pf_update_stag(%struct.qed_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
