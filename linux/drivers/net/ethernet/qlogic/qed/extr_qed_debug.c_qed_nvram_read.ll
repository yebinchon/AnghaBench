; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_nvram_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_nvram_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@QED_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"nvram_read: reading image of size %d bytes from NVRAM\0A\00", align 1
@MCP_DRV_NVM_BUF_LEN = common dso_local global i64 0, align 8
@DRV_MSG_CODE_NVM_READ_NVRAM = common dso_local global i32 0, align 4
@DRV_MB_PARAM_NVM_LEN_OFFSET = common dso_local global i32 0, align 4
@DBG_STATUS_NVRAM_READ_FAILED = common dso_local global i32 0, align 4
@FW_MSG_CODE_MASK = common dso_local global i32 0, align 4
@FW_MSG_CODE_NVM_OK = common dso_local global i32 0, align 4
@DBG_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32*)* @qed_nvram_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_nvram_read(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca %struct.qed_ptt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %16, align 8
  store i32 0, i32* %17, align 4
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %21 = load i32, i32* @QED_MSG_DEBUG, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %20, i32 %21, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %69, %5
  %25 = load i64, i64* %16, align 8
  %26 = load i64, i64* @MCP_DRV_NVM_BUF_LEN, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i64, i64* @MCP_DRV_NVM_BUF_LEN, align 8
  br label %32

30:                                               ; preds = %24
  %31 = load i64, i64* %16, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i64 [ %29, %28 ], [ %31, %30 ]
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %15, align 4
  %35 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %36 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %37 = load i32, i32* @DRV_MSG_CODE_NVM_READ_NVRAM, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %17, align 4
  %40 = add nsw i32 %38, %39
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* @DRV_MB_PARAM_NVM_LEN_OFFSET, align 4
  %43 = shl i32 %41, %42
  %44 = or i32 %40, %43
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %17, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = call i64 @qed_mcp_nvm_rd_cmd(%struct.qed_hwfn* %35, %struct.qed_ptt* %36, i32 %37, i32 %44, i32* %12, i32* %13, i32* %14, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %32
  %52 = load i32, i32* @DBG_STATUS_NVRAM_READ_FAILED, align 4
  store i32 %52, i32* %6, align 4
  br label %74

53:                                               ; preds = %32
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @FW_MSG_CODE_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @FW_MSG_CODE_NVM_OK, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @DBG_STATUS_NVRAM_READ_FAILED, align 4
  store i32 %60, i32* %6, align 4
  br label %74

61:                                               ; preds = %53
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %17, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %16, align 8
  %68 = sub nsw i64 %67, %66
  store i64 %68, i64* %16, align 8
  br label %69

69:                                               ; preds = %61
  %70 = load i64, i64* %16, align 8
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %24, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %72, %59, %51
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32) #1

declare dso_local i64 @qed_mcp_nvm_rd_cmd(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
