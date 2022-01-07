; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_read_pf_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_read_pf_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qed_mcp_function_info }
%struct.qed_mcp_function_info = type { i32, i32 }
%struct.public_func = type { i32 }

@FUNC_MF_CFG_MIN_BW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"bandwidth minimum out of bounds [%02x]. Set to 1\0A\00", align 1
@FUNC_MF_CFG_MAX_BW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"bandwidth maximum out of bounds [%02x]. Set to 100\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.public_func*)* @qed_read_pf_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_read_pf_bandwidth(%struct.qed_hwfn* %0, %struct.public_func* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.public_func*, align 8
  %5 = alloca %struct.qed_mcp_function_info*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.public_func* %1, %struct.public_func** %4, align 8
  %6 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %7 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.qed_mcp_function_info* %9, %struct.qed_mcp_function_info** %5, align 8
  %10 = load %struct.public_func*, %struct.public_func** %4, align 8
  %11 = getelementptr inbounds %struct.public_func, %struct.public_func* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @FUNC_MF_CFG_MIN_BW, align 4
  %14 = call i8* @QED_MFW_GET_FIELD(i32 %12, i32 %13)
  %15 = ptrtoint i8* %14 to i32
  %16 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %5, align 8
  %17 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %5, align 8
  %19 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %5, align 8
  %24 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 100
  br i1 %26, label %27, label %35

27:                                               ; preds = %22, %2
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %29 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %5, align 8
  %30 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @DP_INFO(%struct.qed_hwfn* %28, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %5, align 8
  %34 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  br label %35

35:                                               ; preds = %27, %22
  %36 = load %struct.public_func*, %struct.public_func** %4, align 8
  %37 = getelementptr inbounds %struct.public_func, %struct.public_func* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @FUNC_MF_CFG_MAX_BW, align 4
  %40 = call i8* @QED_MFW_GET_FIELD(i32 %38, i32 %39)
  %41 = ptrtoint i8* %40 to i32
  %42 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %5, align 8
  %43 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %5, align 8
  %45 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %53, label %48

48:                                               ; preds = %35
  %49 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %5, align 8
  %50 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %51, 100
  br i1 %52, label %53, label %61

53:                                               ; preds = %48, %35
  %54 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %55 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %5, align 8
  %56 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @DP_INFO(%struct.qed_hwfn* %54, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %5, align 8
  %60 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %59, i32 0, i32 1
  store i32 100, i32* %60, align 4
  br label %61

61:                                               ; preds = %53, %48
  ret void
}

declare dso_local i8* @QED_MFW_GET_FIELD(i32, i32) #1

declare dso_local i32 @DP_INFO(%struct.qed_hwfn*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
