; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c___qed_vf_get_link_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c___qed_vf_get_link_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_mcp_link_params = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.qed_bulletin_content = type { i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__qed_vf_get_link_params(%struct.qed_hwfn* %0, %struct.qed_mcp_link_params* %1, %struct.qed_bulletin_content* %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_mcp_link_params*, align 8
  %6 = alloca %struct.qed_bulletin_content*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_mcp_link_params* %1, %struct.qed_mcp_link_params** %5, align 8
  store %struct.qed_bulletin_content* %2, %struct.qed_bulletin_content** %6, align 8
  %7 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %5, align 8
  %8 = call i32 @memset(%struct.qed_mcp_link_params* %7, i32 0, i32 28)
  %9 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %6, align 8
  %10 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %5, align 8
  %13 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  store i32 %11, i32* %14, align 4
  %15 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %6, align 8
  %16 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %5, align 8
  %19 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %6, align 8
  %22 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %5, align 8
  %25 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %6, align 8
  %28 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %5, align 8
  %31 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  store i32 %29, i32* %32, align 4
  %33 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %6, align 8
  %34 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %5, align 8
  %37 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %6, align 8
  %40 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %5, align 8
  %43 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %6, align 8
  %46 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %5, align 8
  %49 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  ret void
}

declare dso_local i32 @memset(%struct.qed_mcp_link_params*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
