; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_get_resc_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_get_resc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_resc_alloc_out_params = type { i32, i32, i32, i32, i32 }
%struct.qed_resc_alloc_in_params = type { i32, i32, i32, i32, i32 }

@DRV_MSG_GET_RESOURCE_ALLOC_MSG = common dso_local global i32 0, align 4
@FW_MSG_CODE_RESOURCE_ALLOC_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_mcp_get_resc_info(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.qed_hwfn*, align 8
  %9 = alloca %struct.qed_ptt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.qed_resc_alloc_out_params, align 4
  %15 = alloca %struct.qed_resc_alloc_in_params, align 4
  %16 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %8, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = bitcast %struct.qed_resc_alloc_in_params* %15 to %struct.qed_resc_alloc_out_params*
  %18 = call i32 @memset(%struct.qed_resc_alloc_out_params* %17, i32 0, i32 20)
  %19 = load i32, i32* @DRV_MSG_GET_RESOURCE_ALLOC_MSG, align 4
  %20 = getelementptr inbounds %struct.qed_resc_alloc_in_params, %struct.qed_resc_alloc_in_params* %15, i32 0, i32 4
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %10, align 4
  %22 = getelementptr inbounds %struct.qed_resc_alloc_in_params, %struct.qed_resc_alloc_in_params* %15, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = call i32 @memset(%struct.qed_resc_alloc_out_params* %14, i32 0, i32 20)
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %25 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %26 = bitcast %struct.qed_resc_alloc_in_params* %15 to %struct.qed_resc_alloc_out_params*
  %27 = call i32 @qed_mcp_resc_allocation_msg(%struct.qed_hwfn* %24, %struct.qed_ptt* %25, %struct.qed_resc_alloc_out_params* %26, %struct.qed_resc_alloc_out_params* %14)
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %6
  %31 = load i32, i32* %16, align 4
  store i32 %31, i32* %7, align 4
  br label %48

32:                                               ; preds = %6
  %33 = getelementptr inbounds %struct.qed_resc_alloc_out_params, %struct.qed_resc_alloc_out_params* %14, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %11, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @FW_MSG_CODE_RESOURCE_ALLOC_OK, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.qed_resc_alloc_out_params, %struct.qed_resc_alloc_out_params* %14, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %12, align 8
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.qed_resc_alloc_out_params, %struct.qed_resc_alloc_out_params* %14, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %13, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %40, %32
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %47, %30
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @memset(%struct.qed_resc_alloc_out_params*, i32, i32) #1

declare dso_local i32 @qed_mcp_resc_allocation_msg(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_resc_alloc_out_params*, %struct.qed_resc_alloc_out_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
