; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c___qed_vf_get_link_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c___qed_vf_get_link_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_mcp_link_capabilities = type { i32 }
%struct.qed_bulletin_content = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__qed_vf_get_link_caps(%struct.qed_hwfn* %0, %struct.qed_mcp_link_capabilities* %1, %struct.qed_bulletin_content* %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_mcp_link_capabilities*, align 8
  %6 = alloca %struct.qed_bulletin_content*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_mcp_link_capabilities* %1, %struct.qed_mcp_link_capabilities** %5, align 8
  store %struct.qed_bulletin_content* %2, %struct.qed_bulletin_content** %6, align 8
  %7 = load %struct.qed_mcp_link_capabilities*, %struct.qed_mcp_link_capabilities** %5, align 8
  %8 = call i32 @memset(%struct.qed_mcp_link_capabilities* %7, i32 0, i32 4)
  %9 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %6, align 8
  %10 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.qed_mcp_link_capabilities*, %struct.qed_mcp_link_capabilities** %5, align 8
  %13 = getelementptr inbounds %struct.qed_mcp_link_capabilities, %struct.qed_mcp_link_capabilities* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  ret void
}

declare dso_local i32 @memset(%struct.qed_mcp_link_capabilities*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
