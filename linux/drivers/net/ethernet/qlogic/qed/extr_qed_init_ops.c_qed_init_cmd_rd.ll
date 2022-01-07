; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_ops.c_qed_init_cmd_rd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_ops.c_qed_init_cmd_rd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.init_read_op = type { i32, i32 }

@QED_INIT_POLL_PERIOD_US = common dso_local global i32 0, align 4
@INIT_READ_OP_ADDRESS = common dso_local global i32 0, align 4
@INIT_READ_OP_POLL_TYPE = common dso_local global i32 0, align 4
@INIT_POLL_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Invalid poll comparison type %08x\0A\00", align 1
@QED_INIT_MAX_POLL_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"Timeout when polling reg: 0x%08x [ Waiting-for: %08x Got: %08x (comparison %08x)]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ptt*, %struct.init_read_op*)* @qed_init_cmd_rd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_init_cmd_rd(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.init_read_op* %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca %struct.init_read_op*, align 8
  %7 = alloca i32 (i32, i32)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  store %struct.init_read_op* %2, %struct.init_read_op** %6, align 8
  %14 = load i32, i32* @QED_INIT_POLL_PERIOD_US, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.init_read_op*, %struct.init_read_op** %6, align 8
  %16 = getelementptr inbounds %struct.init_read_op, %struct.init_read_op* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @INIT_READ_OP_ADDRESS, align 4
  %21 = call i32 @GET_FIELD(i32 %19, i32 %20)
  %22 = shl i32 %21, 2
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @INIT_READ_OP_POLL_TYPE, align 4
  %25 = call i32 @GET_FIELD(i32 %23, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %27 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @qed_rd(%struct.qed_hwfn* %26, %struct.qed_ptt* %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @INIT_POLL_NONE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  br label %90

34:                                               ; preds = %3
  %35 = load i32, i32* %12, align 4
  switch i32 %35, label %39 [
    i32 129, label %36
    i32 128, label %37
    i32 130, label %38
  ]

36:                                               ; preds = %34
  store i32 (i32, i32)* @comp_eq, i32 (i32, i32)** %7, align 8
  br label %45

37:                                               ; preds = %34
  store i32 (i32, i32)* @comp_or, i32 (i32, i32)** %7, align 8
  br label %45

38:                                               ; preds = %34
  store i32 (i32, i32)* @comp_and, i32 (i32, i32)** %7, align 8
  br label %45

39:                                               ; preds = %34
  %40 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %41 = load %struct.init_read_op*, %struct.init_read_op** %6, align 8
  %42 = getelementptr inbounds %struct.init_read_op, %struct.init_read_op* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (%struct.qed_hwfn*, i8*, i32, ...) @DP_ERR(%struct.qed_hwfn* %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %90

45:                                               ; preds = %38, %37, %36
  %46 = load %struct.init_read_op*, %struct.init_read_op** %6, align 8
  %47 = getelementptr inbounds %struct.init_read_op, %struct.init_read_op* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le32_to_cpu(i32 %48)
  store i32 %49, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %70, %45
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @QED_INIT_MAX_POLL_COUNT, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load i32 (i32, i32)*, i32 (i32, i32)** %7, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 %55(i32 %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  br label %61

61:                                               ; preds = %54, %50
  %62 = phi i1 [ false, %50 ], [ %60, %54 ]
  br i1 %62, label %63, label %73

63:                                               ; preds = %61
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @udelay(i32 %64)
  %66 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %67 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @qed_rd(%struct.qed_hwfn* %66, %struct.qed_ptt* %67, i32 %68)
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %63
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %13, align 4
  br label %50

73:                                               ; preds = %61
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @QED_INIT_MAX_POLL_COUNT, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %73
  %78 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.init_read_op*, %struct.init_read_op** %6, align 8
  %81 = getelementptr inbounds %struct.init_read_op, %struct.init_read_op* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @le32_to_cpu(i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.init_read_op*, %struct.init_read_op** %6, align 8
  %86 = getelementptr inbounds %struct.init_read_op, %struct.init_read_op* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @le32_to_cpu(i32 %87)
  %89 = call i32 (%struct.qed_hwfn*, i8*, i32, ...) @DP_ERR(%struct.qed_hwfn* %78, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %83, i32 %84, i32 %88)
  br label %90

90:                                               ; preds = %33, %39, %77, %73
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @GET_FIELD(i32, i32) #1

declare dso_local i32 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @comp_eq(i32, i32) #1

declare dso_local i32 @comp_or(i32, i32) #1

declare dso_local i32 @comp_and(i32, i32) #1

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*, i32, ...) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
