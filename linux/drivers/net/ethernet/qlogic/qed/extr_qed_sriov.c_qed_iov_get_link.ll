; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_get_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_get_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_mcp_link_params = type { i32 }
%struct.qed_mcp_link_state = type { i32 }
%struct.qed_mcp_link_capabilities = type { i32 }
%struct.qed_vf_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.qed_bulletin_content* }
%struct.qed_bulletin_content = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, i32, %struct.qed_mcp_link_params*, %struct.qed_mcp_link_state*, %struct.qed_mcp_link_capabilities*)* @qed_iov_get_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_iov_get_link(%struct.qed_hwfn* %0, i32 %1, %struct.qed_mcp_link_params* %2, %struct.qed_mcp_link_state* %3, %struct.qed_mcp_link_capabilities* %4) #0 {
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qed_mcp_link_params*, align 8
  %9 = alloca %struct.qed_mcp_link_state*, align 8
  %10 = alloca %struct.qed_mcp_link_capabilities*, align 8
  %11 = alloca %struct.qed_vf_info*, align 8
  %12 = alloca %struct.qed_bulletin_content*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.qed_mcp_link_params* %2, %struct.qed_mcp_link_params** %8, align 8
  store %struct.qed_mcp_link_state* %3, %struct.qed_mcp_link_state** %9, align 8
  store %struct.qed_mcp_link_capabilities* %4, %struct.qed_mcp_link_capabilities** %10, align 8
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.qed_vf_info* @qed_iov_get_vf_info(%struct.qed_hwfn* %13, i32 %14, i32 0)
  store %struct.qed_vf_info* %15, %struct.qed_vf_info** %11, align 8
  %16 = load %struct.qed_vf_info*, %struct.qed_vf_info** %11, align 8
  %17 = icmp ne %struct.qed_vf_info* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  br label %47

19:                                               ; preds = %5
  %20 = load %struct.qed_vf_info*, %struct.qed_vf_info** %11, align 8
  %21 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %22, align 8
  store %struct.qed_bulletin_content* %23, %struct.qed_bulletin_content** %12, align 8
  %24 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %8, align 8
  %25 = icmp ne %struct.qed_mcp_link_params* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %28 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %8, align 8
  %29 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %12, align 8
  %30 = call i32 @__qed_vf_get_link_params(%struct.qed_hwfn* %27, %struct.qed_mcp_link_params* %28, %struct.qed_bulletin_content* %29)
  br label %31

31:                                               ; preds = %26, %19
  %32 = load %struct.qed_mcp_link_state*, %struct.qed_mcp_link_state** %9, align 8
  %33 = icmp ne %struct.qed_mcp_link_state* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %36 = load %struct.qed_mcp_link_state*, %struct.qed_mcp_link_state** %9, align 8
  %37 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %12, align 8
  %38 = call i32 @__qed_vf_get_link_state(%struct.qed_hwfn* %35, %struct.qed_mcp_link_state* %36, %struct.qed_bulletin_content* %37)
  br label %39

39:                                               ; preds = %34, %31
  %40 = load %struct.qed_mcp_link_capabilities*, %struct.qed_mcp_link_capabilities** %10, align 8
  %41 = icmp ne %struct.qed_mcp_link_capabilities* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %44 = load %struct.qed_mcp_link_capabilities*, %struct.qed_mcp_link_capabilities** %10, align 8
  %45 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %12, align 8
  %46 = call i32 @__qed_vf_get_link_caps(%struct.qed_hwfn* %43, %struct.qed_mcp_link_capabilities* %44, %struct.qed_bulletin_content* %45)
  br label %47

47:                                               ; preds = %18, %42, %39
  ret void
}

declare dso_local %struct.qed_vf_info* @qed_iov_get_vf_info(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @__qed_vf_get_link_params(%struct.qed_hwfn*, %struct.qed_mcp_link_params*, %struct.qed_bulletin_content*) #1

declare dso_local i32 @__qed_vf_get_link_state(%struct.qed_hwfn*, %struct.qed_mcp_link_state*, %struct.qed_bulletin_content*) #1

declare dso_local i32 @__qed_vf_get_link_caps(%struct.qed_hwfn*, %struct.qed_mcp_link_capabilities*, %struct.qed_bulletin_content*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
