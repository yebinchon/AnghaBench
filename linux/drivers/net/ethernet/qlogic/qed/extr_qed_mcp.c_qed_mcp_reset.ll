; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.qed_ptt = type { i32 }

@QED_MCP_RESP_ITER_US = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [69 x i8] c"The MFW is not responsive. Avoid sending MCP_RESET mailbox command.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@MISCS_REG_GENERIC_POR_0 = common dso_local global i32 0, align 4
@drv_mb_header = common dso_local global i32 0, align 4
@DRV_MSG_CODE_MCP_RESET = common dso_local global i64 0, align 8
@QED_MCP_RESET_RETRIES = common dso_local global i64 0, align 8
@QED_MSG_SP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"MCP was reset after %d usec\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Failed to reset MCP\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_mcp_reset(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  %11 = load i64, i64* @QED_MCP_RESP_ITER_US, align 8
  store i64 %11, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %13 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %20 = call i32 @DP_NOTICE(%struct.qed_hwfn* %19, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %92

23:                                               ; preds = %2
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %25 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = call i32 @spin_lock_bh(i32* %27)
  %29 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %30 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %31 = load i32, i32* @MISCS_REG_GENERIC_POR_0, align 4
  %32 = call i64 @qed_rd(%struct.qed_hwfn* %29, %struct.qed_ptt* %30, i32 %31)
  store i64 %32, i64* %6, align 8
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %34 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %35 = call i32 @qed_mcp_reread_offsets(%struct.qed_hwfn* %33, %struct.qed_ptt* %34)
  %36 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %37 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  store i64 %41, i64* %7, align 8
  %42 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %43 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %44 = load i32, i32* @drv_mb_header, align 4
  %45 = load i64, i64* @DRV_MSG_CODE_MCP_RESET, align 8
  %46 = load i64, i64* %7, align 8
  %47 = or i64 %45, %46
  %48 = call i32 @DRV_MB_WR(%struct.qed_hwfn* %42, %struct.qed_ptt* %43, i32 %44, i64 %47)
  br label %49

49:                                               ; preds = %64, %23
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @udelay(i64 %50)
  br label %52

52:                                               ; preds = %49
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %55 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %56 = load i32, i32* @MISCS_REG_GENERIC_POR_0, align 4
  %57 = call i64 @qed_rd(%struct.qed_hwfn* %54, %struct.qed_ptt* %55, i32 %56)
  %58 = icmp eq i64 %53, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load i64, i64* %9, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %9, align 8
  %62 = load i64, i64* @QED_MCP_RESET_RETRIES, align 8
  %63 = icmp slt i64 %60, %62
  br label %64

64:                                               ; preds = %59, %52
  %65 = phi i1 [ false, %52 ], [ %63, %59 ]
  br i1 %65, label %49, label %66

66:                                               ; preds = %64
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %69 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %70 = load i32, i32* @MISCS_REG_GENERIC_POR_0, align 4
  %71 = call i64 @qed_rd(%struct.qed_hwfn* %68, %struct.qed_ptt* %69, i32 %70)
  %72 = icmp ne i64 %67, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %66
  %74 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %75 = load i32, i32* @QED_MSG_SP, align 4
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %8, align 8
  %78 = mul nsw i64 %76, %77
  %79 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %74, i32 %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %78)
  br label %85

80:                                               ; preds = %66
  %81 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %82 = call i32 @DP_ERR(%struct.qed_hwfn* %81, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %83 = load i32, i32* @EAGAIN, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %80, %73
  %86 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %87 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = call i32 @spin_unlock_bh(i32* %89)
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %85, %18
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @qed_mcp_reread_offsets(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @DRV_MB_WR(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i64) #1

declare dso_local i32 @udelay(i64) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i64) #1

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
