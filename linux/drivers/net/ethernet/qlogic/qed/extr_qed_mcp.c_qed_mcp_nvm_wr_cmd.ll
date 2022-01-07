; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_nvm_wr_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_nvm_wr_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_mcp_mb_params = type { i8**, i8*, i8*, i64, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i8*, i8*, i8**, i8**, i8*, i8**)* @qed_mcp_nvm_wr_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_mcp_nvm_wr_cmd(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i8* %2, i8* %3, i8** %4, i8** %5, i8* %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.qed_hwfn*, align 8
  %11 = alloca %struct.qed_ptt*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca %struct.qed_mcp_mb_params, align 8
  %19 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %10, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8** %4, i8*** %14, align 8
  store i8** %5, i8*** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8** %7, i8*** %17, align 8
  %20 = call i32 @memset(%struct.qed_mcp_mb_params* %18, i32 0, i32 48)
  %21 = load i8*, i8** %12, align 8
  %22 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %18, i32 0, i32 5
  store i8* %21, i8** %22, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %18, i32 0, i32 4
  store i8* %23, i8** %24, align 8
  %25 = load i8**, i8*** %17, align 8
  %26 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %18, i32 0, i32 0
  store i8** %25, i8*** %26, align 8
  %27 = load i8*, i8** %16, align 8
  %28 = ptrtoint i8* %27 to i64
  %29 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %18, i32 0, i32 3
  store i64 %28, i64* %29, align 8
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %31 = load %struct.qed_ptt*, %struct.qed_ptt** %11, align 8
  %32 = call i32 @qed_mcp_cmd_and_union(%struct.qed_hwfn* %30, %struct.qed_ptt* %31, %struct.qed_mcp_mb_params* %18)
  store i32 %32, i32* %19, align 4
  %33 = load i32, i32* %19, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %8
  %36 = load i32, i32* %19, align 4
  store i32 %36, i32* %9, align 4
  br label %47

37:                                               ; preds = %8
  %38 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %18, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = load i8**, i8*** %14, align 8
  store i8* %39, i8** %40, align 8
  %41 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %18, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load i8**, i8*** %15, align 8
  store i8* %42, i8** %43, align 8
  %44 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %45 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 0, i32* %46, align 4
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %37, %35
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local i32 @memset(%struct.qed_mcp_mb_params*, i32, i32) #1

declare dso_local i32 @qed_mcp_cmd_and_union(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_mcp_mb_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
