; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_mcp_trace_read_meta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_mcp_trace_read_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@DBG_STATUS_OK = common dso_local global i32 0, align 4
@NVM_MAGIC_VALUE = common dso_local global i64 0, align 8
@DBG_STATUS_INVALID_TRACE_SIGNATURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i64, i64, i64*)* @qed_mcp_trace_read_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_mcp_trace_read_meta(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca %struct.qed_ptt*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %18 = load i64*, i64** %11, align 8
  store i64* %18, i64** %15, align 8
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %20 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64*, i64** %11, align 8
  %24 = call i32 @qed_nvram_read(%struct.qed_hwfn* %19, %struct.qed_ptt* %20, i64 %21, i64 %22, i64* %23)
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* @DBG_STATUS_OK, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i32, i32* %16, align 4
  store i32 %29, i32* %6, align 4
  br label %70

30:                                               ; preds = %5
  %31 = load i64*, i64** %15, align 8
  %32 = call i64 @qed_read_unaligned_dword(i64* %31)
  store i64 %32, i64* %17, align 8
  %33 = load i64*, i64** %15, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 8
  store i64* %34, i64** %15, align 8
  %35 = load i64, i64* %17, align 8
  %36 = load i64, i64* @NVM_MAGIC_VALUE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @DBG_STATUS_INVALID_TRACE_SIGNATURE, align 4
  store i32 %39, i32* %6, align 4
  br label %70

40:                                               ; preds = %30
  %41 = load i64*, i64** %15, align 8
  %42 = getelementptr inbounds i64, i64* %41, i32 1
  store i64* %42, i64** %15, align 8
  %43 = load i64, i64* %41, align 8
  store i64 %43, i64* %12, align 8
  store i64 0, i64* %14, align 8
  br label %44

44:                                               ; preds = %55, %40
  %45 = load i64, i64* %14, align 8
  %46 = load i64, i64* %12, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load i64*, i64** %15, align 8
  %50 = getelementptr inbounds i64, i64* %49, i32 1
  store i64* %50, i64** %15, align 8
  %51 = load i64, i64* %49, align 8
  store i64 %51, i64* %13, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load i64*, i64** %15, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 %52
  store i64* %54, i64** %15, align 8
  br label %55

55:                                               ; preds = %48
  %56 = load i64, i64* %14, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %14, align 8
  br label %44

58:                                               ; preds = %44
  %59 = load i64*, i64** %15, align 8
  %60 = call i64 @qed_read_unaligned_dword(i64* %59)
  store i64 %60, i64* %17, align 8
  %61 = load i64*, i64** %15, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 8
  store i64* %62, i64** %15, align 8
  %63 = load i64, i64* %17, align 8
  %64 = load i64, i64* @NVM_MAGIC_VALUE, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load i32, i32* @DBG_STATUS_INVALID_TRACE_SIGNATURE, align 4
  store i32 %67, i32* %6, align 4
  br label %70

68:                                               ; preds = %58
  %69 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %68, %66, %38, %28
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @qed_nvram_read(%struct.qed_hwfn*, %struct.qed_ptt*, i64, i64, i64*) #1

declare dso_local i64 @qed_read_unaligned_dword(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
