; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_int_igu_init_pure_rt_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_int_igu_init_pure_rt_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.qed_igu_block* }
%struct.qed_igu_block = type { i32, i32, i32 }
%struct.qed_ptt = type { i32 }

@NETIF_MSG_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Cleaning SB [%04x]: func_id= %d is_pf = %d vector_num = 0x%0x\0A\00", align 1
@IGU_CLEANUP_SLEEP_LENGTH = common dso_local global i32 0, align 4
@IGU_REG_WRITE_DONE_PENDING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"Failed SB[0x%08x] still appearing in WRITE_DONE_PENDING\0A\00", align 1
@CAU_REG_PI_MEMORY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_int_igu_init_pure_rt_single(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_ptt*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.qed_igu_block*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %16 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.qed_igu_block*, %struct.qed_igu_block** %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds %struct.qed_igu_block, %struct.qed_igu_block* %20, i64 %21
  store %struct.qed_igu_block* %22, %struct.qed_igu_block** %11, align 8
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %24 = load i32, i32* @NETIF_MSG_INTR, align 4
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.qed_igu_block*, %struct.qed_igu_block** %11, align 8
  %27 = getelementptr inbounds %struct.qed_igu_block, %struct.qed_igu_block* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.qed_igu_block*, %struct.qed_igu_block** %11, align 8
  %30 = getelementptr inbounds %struct.qed_igu_block, %struct.qed_igu_block* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.qed_igu_block*, %struct.qed_igu_block** %11, align 8
  %33 = getelementptr inbounds %struct.qed_igu_block, %struct.qed_igu_block* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %23, i32 %24, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %25, i32 %28, i32 %31, i32 %34)
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %5
  %39 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %40 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @qed_int_igu_cleanup_sb(%struct.qed_hwfn* %39, %struct.qed_ptt* %40, i64 %41, i32 1, i64 %42)
  br label %44

44:                                               ; preds = %38, %5
  %45 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %46 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @qed_int_igu_cleanup_sb(%struct.qed_hwfn* %45, %struct.qed_ptt* %46, i64 %47, i32 0, i64 %48)
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %73, %44
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @IGU_CLEANUP_SLEEP_LENGTH, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %50
  %55 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %56 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %57 = load i64, i64* @IGU_REG_WRITE_DONE_PENDING, align 8
  %58 = load i64, i64* %8, align 8
  %59 = udiv i64 %58, 32
  %60 = mul i64 %59, 4
  %61 = add i64 %57, %60
  %62 = call i32 @qed_rd(%struct.qed_hwfn* %55, %struct.qed_ptt* %56, i64 %61)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i64, i64* %8, align 8
  %65 = urem i64 %64, 32
  %66 = call i32 @BIT(i64 %65)
  %67 = and i32 %63, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %54
  %70 = call i32 @usleep_range(i32 10, i32 20)
  br label %72

71:                                               ; preds = %54
  br label %76

72:                                               ; preds = %69
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %13, align 4
  br label %50

76:                                               ; preds = %71, %50
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* @IGU_CLEANUP_SLEEP_LENGTH, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %82 = load i64, i64* %8, align 8
  %83 = call i32 @DP_NOTICE(%struct.qed_hwfn* %81, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i64 %82)
  br label %84

84:                                               ; preds = %80, %76
  store i32 0, i32* %12, align 4
  br label %85

85:                                               ; preds = %100, %84
  %86 = load i32, i32* %12, align 4
  %87 = icmp slt i32 %86, 12
  br i1 %87, label %88, label %103

88:                                               ; preds = %85
  %89 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %90 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %91 = load i64, i64* @CAU_REG_PI_MEMORY, align 8
  %92 = load i64, i64* %8, align 8
  %93 = mul i64 %92, 12
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = add i64 %93, %95
  %97 = mul i64 %96, 4
  %98 = add i64 %91, %97
  %99 = call i32 @qed_wr(%struct.qed_hwfn* %89, %struct.qed_ptt* %90, i64 %98, i32 0)
  br label %100

100:                                              ; preds = %88
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  br label %85

103:                                              ; preds = %85
  ret void
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @qed_int_igu_cleanup_sb(%struct.qed_hwfn*, %struct.qed_ptt*, i64, i32, i64) #1

declare dso_local i32 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i64) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i64) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
