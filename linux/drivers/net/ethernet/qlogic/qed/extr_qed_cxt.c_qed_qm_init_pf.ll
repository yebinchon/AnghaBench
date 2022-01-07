; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_qm_init_pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_qm_init_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32, i32, i32, %struct.qed_qm_info }
%struct.qed_qm_info = type { i32, i32, i32, i32, i32, i32, i64, i64, i32, i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_qm_pf_rt_init_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qed_mcp_link_state = type { i32 }
%struct.qed_qm_iids = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.qed_mcp_link_state }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_qm_init_pf(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_qm_info*, align 8
  %8 = alloca %struct.qed_qm_pf_rt_init_params, align 8
  %9 = alloca %struct.qed_mcp_link_state*, align 8
  %10 = alloca %struct.qed_qm_iids, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %12 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %11, i32 0, i32 3
  store %struct.qed_qm_info* %12, %struct.qed_qm_info** %7, align 8
  %13 = bitcast %struct.qed_qm_iids* %10 to %struct.qed_qm_pf_rt_init_params*
  %14 = call i32 @memset(%struct.qed_qm_pf_rt_init_params* %13, i32 0, i32 88)
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %16 = bitcast %struct.qed_qm_iids* %10 to %struct.qed_qm_pf_rt_init_params*
  %17 = call i32 @qed_cxt_qm_iids(%struct.qed_hwfn* %15, %struct.qed_qm_pf_rt_init_params* %16)
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %19 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.TYPE_4__* @QED_LEADING_HWFN(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store %struct.qed_mcp_link_state* %24, %struct.qed_mcp_link_state** %9, align 8
  %25 = call i32 @memset(%struct.qed_qm_pf_rt_init_params* %8, i32 0, i32 88)
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %27 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %8, i32 0, i32 19
  store i32 %28, i32* %29, align 4
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %31 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %8, i32 0, i32 18
  store i32 %32, i32* %33, align 8
  %34 = load %struct.qed_qm_info*, %struct.qed_qm_info** %7, align 8
  %35 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %8, i32 0, i32 17
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  %39 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %8, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = getelementptr inbounds %struct.qed_qm_iids, %struct.qed_qm_iids* %10, i32 0, i32 15
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %8, i32 0, i32 16
  store i32 %41, i32* %42, align 8
  %43 = getelementptr inbounds %struct.qed_qm_iids, %struct.qed_qm_iids* %10, i32 0, i32 13
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %8, i32 0, i32 14
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.qed_qm_iids, %struct.qed_qm_iids* %10, i32 0, i32 11
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %8, i32 0, i32 12
  store i32 %47, i32* %48, align 8
  %49 = load %struct.qed_qm_info*, %struct.qed_qm_info** %7, align 8
  %50 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %8, i32 0, i32 10
  store i32 %51, i32* %52, align 8
  %53 = load %struct.qed_qm_info*, %struct.qed_qm_info** %7, align 8
  %54 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %53, i32 0, i32 7
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.qed_qm_info*, %struct.qed_qm_info** %7, align 8
  %57 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %56, i32 0, i32 6
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %55, %58
  %60 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %8, i32 0, i32 9
  store i64 %59, i64* %60, align 8
  %61 = load %struct.qed_qm_info*, %struct.qed_qm_info** %7, align 8
  %62 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %61, i32 0, i32 6
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %8, i32 0, i32 8
  store i64 %63, i64* %64, align 8
  %65 = load %struct.qed_qm_info*, %struct.qed_qm_info** %7, align 8
  %66 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %8, i32 0, i32 7
  store i32 %67, i32* %68, align 4
  %69 = load %struct.qed_qm_info*, %struct.qed_qm_info** %7, align 8
  %70 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %8, i32 0, i32 6
  store i32 %71, i32* %72, align 8
  %73 = load %struct.qed_qm_info*, %struct.qed_qm_info** %7, align 8
  %74 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %8, i32 0, i32 5
  store i32 %75, i32* %76, align 4
  %77 = load %struct.qed_qm_info*, %struct.qed_qm_info** %7, align 8
  %78 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %8, i32 0, i32 4
  store i32 %79, i32* %80, align 8
  %81 = load %struct.qed_mcp_link_state*, %struct.qed_mcp_link_state** %9, align 8
  %82 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %8, i32 0, i32 3
  store i32 %83, i32* %84, align 4
  %85 = load %struct.qed_qm_info*, %struct.qed_qm_info** %7, align 8
  %86 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %8, i32 0, i32 2
  store i32 %87, i32* %88, align 8
  %89 = load %struct.qed_qm_info*, %struct.qed_qm_info** %7, align 8
  %90 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %8, i32 0, i32 1
  store i32 %91, i32* %92, align 4
  %93 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %94 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %95 = call i32 @qed_qm_pf_rt_init(%struct.qed_hwfn* %93, %struct.qed_ptt* %94, %struct.qed_qm_pf_rt_init_params* %8)
  ret void
}

declare dso_local i32 @memset(%struct.qed_qm_pf_rt_init_params*, i32, i32) #1

declare dso_local i32 @qed_cxt_qm_iids(%struct.qed_hwfn*, %struct.qed_qm_pf_rt_init_params*) #1

declare dso_local %struct.TYPE_4__* @QED_LEADING_HWFN(i32) #1

declare dso_local i32 @qed_qm_pf_rt_init(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_qm_pf_rt_init_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
