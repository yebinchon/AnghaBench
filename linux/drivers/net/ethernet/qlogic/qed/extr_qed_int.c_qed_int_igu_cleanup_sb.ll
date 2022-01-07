; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_int_igu_cleanup_sb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_int_igu_cleanup_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@IGU_CMD_INT_ACK_BASE = common dso_local global i32 0, align 4
@IGU_CLEANUP_SLEEP_LENGTH = common dso_local global i32 0, align 4
@IGU_CLEANUP_CLEANUP_SET = common dso_local global i32 0, align 4
@IGU_CLEANUP_CLEANUP_TYPE = common dso_local global i32 0, align 4
@IGU_CLEANUP_COMMAND_TYPE = common dso_local global i32 0, align 4
@IGU_COMMAND_TYPE_SET = common dso_local global i32 0, align 4
@IGU_CTRL_REG_PXP_ADDR = common dso_local global i32 0, align 4
@IGU_CTRL_REG_FID = common dso_local global i32 0, align 4
@IGU_CTRL_REG_TYPE = common dso_local global i32 0, align 4
@IGU_CTRL_CMD_TYPE_WR = common dso_local global i32 0, align 4
@IGU_REG_COMMAND_REG_32LSB_DATA = common dso_local global i32 0, align 4
@IGU_REG_COMMAND_REG_CTRL = common dso_local global i32 0, align 4
@IGU_REG_CLEANUP_STATUS_0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"Timeout waiting for clear status 0x%08x [for sb %d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32)* @qed_int_igu_cleanup_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_int_igu_cleanup_sb(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_ptt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* @IGU_CMD_INT_ACK_BASE, align 4
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* @IGU_CLEANUP_SLEEP_LENGTH, align 4
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %15, align 4
  %23 = load i32, i32* @IGU_CLEANUP_CLEANUP_SET, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  %28 = call i32 @SET_FIELD(i32 %22, i32 %23, i32 %27)
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* @IGU_CLEANUP_CLEANUP_TYPE, align 4
  %31 = call i32 @SET_FIELD(i32 %29, i32 %30, i32 0)
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* @IGU_CLEANUP_COMMAND_TYPE, align 4
  %34 = load i32, i32* @IGU_COMMAND_TYPE_SET, align 4
  %35 = call i32 @SET_FIELD(i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @IGU_CTRL_REG_PXP_ADDR, align 4
  %38 = load i32, i32* %16, align 4
  %39 = call i32 @SET_FIELD(i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @IGU_CTRL_REG_FID, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @SET_FIELD(i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @IGU_CTRL_REG_TYPE, align 4
  %46 = load i32, i32* @IGU_CTRL_CMD_TYPE_WR, align 4
  %47 = call i32 @SET_FIELD(i32 %44, i32 %45, i32 %46)
  %48 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %49 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %50 = load i32, i32* @IGU_REG_COMMAND_REG_32LSB_DATA, align 4
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @qed_wr(%struct.qed_hwfn* %48, %struct.qed_ptt* %49, i32 %50, i32 %51)
  %53 = call i32 (...) @barrier()
  %54 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %55 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %56 = load i32, i32* @IGU_REG_COMMAND_REG_CTRL, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @qed_wr(%struct.qed_hwfn* %54, %struct.qed_ptt* %55, i32 %56, i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = srem i32 %59, 32
  %61 = shl i32 1, %60
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %8, align 4
  %63 = sdiv i32 %62, 32
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 4
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %14, align 4
  %67 = load i64, i64* @IGU_REG_CLEANUP_STATUS_0, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %14, align 4
  br label %72

72:                                               ; preds = %91, %5
  %73 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %74 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @qed_rd(%struct.qed_hwfn* %73, %struct.qed_ptt* %74, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %13, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = load i32, i32* %13, align 4
  br label %85

84:                                               ; preds = %72
  br label %85

85:                                               ; preds = %84, %82
  %86 = phi i32 [ %83, %82 ], [ 0, %84 ]
  %87 = icmp eq i32 %79, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %95

89:                                               ; preds = %85
  %90 = call i32 @usleep_range(i32 5000, i32 10000)
  br label %91

91:                                               ; preds = %89
  %92 = load i32, i32* %17, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %17, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %72, label %95

95:                                               ; preds = %91, %88
  %96 = load i32, i32* %17, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %95
  %99 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @DP_NOTICE(%struct.qed_hwfn* %99, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %98, %95
  ret void
}

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
