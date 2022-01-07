; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_configure_tx_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_configure_tx_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_mcp_link_state = type { i32 }
%struct.qed_vf_info = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.qed_mcp_link_state }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32)* @qed_iov_configure_tx_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iov_configure_tx_rate(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_ptt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qed_mcp_link_state*, align 8
  %11 = alloca %struct.qed_vf_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.qed_vf_info* @qed_iov_get_vf_info(%struct.qed_hwfn* %14, i32 %15, i32 1)
  store %struct.qed_vf_info* %16, %struct.qed_vf_info** %11, align 8
  %17 = load %struct.qed_vf_info*, %struct.qed_vf_info** %11, align 8
  %18 = icmp ne %struct.qed_vf_info* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %48

22:                                               ; preds = %4
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %24 = load %struct.qed_vf_info*, %struct.qed_vf_info** %11, align 8
  %25 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @qed_fw_vport(%struct.qed_hwfn* %23, i32 %26, i32* %12)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %5, align 4
  br label %48

32:                                               ; preds = %22
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %34 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.TYPE_4__* @QED_LEADING_HWFN(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store %struct.qed_mcp_link_state* %39, %struct.qed_mcp_link_state** %10, align 8
  %40 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %41 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.qed_mcp_link_state*, %struct.qed_mcp_link_state** %10, align 8
  %45 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @qed_init_vport_rl(%struct.qed_hwfn* %40, %struct.qed_ptt* %41, i32 %42, i32 %43, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %32, %30, %19
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.qed_vf_info* @qed_iov_get_vf_info(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @qed_fw_vport(%struct.qed_hwfn*, i32, i32*) #1

declare dso_local %struct.TYPE_4__* @QED_LEADING_HWFN(i32) #1

declare dso_local i32 @qed_init_vport_rl(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
