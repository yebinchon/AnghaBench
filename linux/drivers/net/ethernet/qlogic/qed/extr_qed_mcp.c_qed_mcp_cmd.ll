; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_mcp_mb_params = type { i8*, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_mcp_cmd(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i8* %2, i8* %3, i8** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.qed_hwfn*, align 8
  %9 = alloca %struct.qed_ptt*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.qed_mcp_mb_params, align 8
  %15 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %8, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i8** %5, i8*** %13, align 8
  %16 = call i32 @memset(%struct.qed_mcp_mb_params* %14, i32 0, i32 32)
  %17 = load i8*, i8** %10, align 8
  %18 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %14, i32 0, i32 3
  store i8* %17, i8** %18, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %14, i32 0, i32 2
  store i8* %19, i8** %20, align 8
  %21 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %22 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %23 = call i32 @qed_mcp_cmd_and_union(%struct.qed_hwfn* %21, %struct.qed_ptt* %22, %struct.qed_mcp_mb_params* %14)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* %15, align 4
  store i32 %27, i32* %7, align 4
  br label %35

28:                                               ; preds = %6
  %29 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %14, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = load i8**, i8*** %12, align 8
  store i8* %30, i8** %31, align 8
  %32 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %14, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i8**, i8*** %13, align 8
  store i8* %33, i8** %34, align 8
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %28, %26
  %36 = load i32, i32* %7, align 4
  ret i32 %36
}

declare dso_local i32 @memset(%struct.qed_mcp_mb_params*, i32, i32) #1

declare dso_local i32 @qed_mcp_cmd_and_union(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_mcp_mb_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
