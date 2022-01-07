; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_fw_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_fw_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.bnx2x = type { i32, i32 }

@func_mb = common dso_local global %struct.TYPE_2__* null, align 8
@BNX2X_MSG_MCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"wrote command (%x) to FW MB param 0x%08x\0A\00", align 1
@FW_MSG_SEQ_NUMBER_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"[after %d ms] read (%x) seq is (%x) from FW MB\0A\00", align 1
@FW_MSG_CODE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"FW failed to respond!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_fw_command(%struct.bnx2x* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %13 = call i32 @BP_FW_MB_IDX(%struct.bnx2x* %12)
  store i32 %13, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %14 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %15 = call i64 @CHIP_REV_IS_SLOW(%struct.bnx2x* %14)
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 100, i32 10
  store i32 %18, i32* %11, align 4
  %19 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %20 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %23 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @func_mb, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @SHMEM_WR(%struct.bnx2x* %26, i32 %32, i32 %33)
  %35 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @func_mb, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @SHMEM_WR(%struct.bnx2x* %35, i32 %41, i32 %44)
  %46 = load i32, i32* @BNX2X_MSG_MCP, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %6, align 4
  %51 = call i32 (i32, i8*, i32, i32, ...) @DP(i32 %46, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %73, %3
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @msleep(i32 %53)
  %55 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @func_mb, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @SHMEM_RD(%struct.bnx2x* %55, i32 %61)
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %52
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @FW_MSG_SEQ_NUMBER_MASK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %64, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  %72 = icmp slt i32 %70, 500
  br label %73

73:                                               ; preds = %69, %63
  %74 = phi i1 [ false, %63 ], [ %72, %69 ]
  br i1 %74, label %52, label %75

75:                                               ; preds = %73
  %76 = load i32, i32* @BNX2X_MSG_MCP, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = mul nsw i32 %77, %78
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 (i32, i8*, i32, i32, ...) @DP(i32 %76, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %80, i32 %81)
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @FW_MSG_SEQ_NUMBER_MASK, align 4
  %86 = and i32 %84, %85
  %87 = icmp eq i32 %83, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %75
  %89 = load i32, i32* @FW_MSG_CODE_MASK, align 4
  %90 = load i32, i32* %9, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %9, align 4
  br label %96

92:                                               ; preds = %75
  %93 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %94 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %95 = call i32 @bnx2x_fw_dump(%struct.bnx2x* %94)
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %92, %88
  %97 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %98 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %97, i32 0, i32 1
  %99 = call i32 @mutex_unlock(i32* %98)
  %100 = load i32, i32* %9, align 4
  ret i32 %100
}

declare dso_local i32 @BP_FW_MB_IDX(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_REV_IS_SLOW(%struct.bnx2x*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @SHMEM_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @DP(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @SHMEM_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

declare dso_local i32 @bnx2x_fw_dump(%struct.bnx2x*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
