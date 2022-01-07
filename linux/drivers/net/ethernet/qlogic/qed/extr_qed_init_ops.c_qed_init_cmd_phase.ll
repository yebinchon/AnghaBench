; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_ops.c_qed_init_cmd_phase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_ops.c_qed_init_cmd_phase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.init_if_phase_op = type { i32, i32 }

@INIT_IF_PHASE_OP_PHASE = common dso_local global i32 0, align 4
@INIT_IF_PHASE_OP_PHASE_ID = common dso_local global i32 0, align 4
@ANY_PHASE_ID = common dso_local global i64 0, align 8
@INIT_IF_PHASE_OP_CMD_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qed_hwfn*, %struct.init_if_phase_op*, i64, i64)* @qed_init_cmd_phase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qed_init_cmd_phase(%struct.qed_hwfn* %0, %struct.init_if_phase_op* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.init_if_phase_op*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.init_if_phase_op* %1, %struct.init_if_phase_op** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.init_if_phase_op*, %struct.init_if_phase_op** %7, align 8
  %13 = getelementptr inbounds %struct.init_if_phase_op, %struct.init_if_phase_op* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @le32_to_cpu(i32 %14)
  store i64 %15, i64* %10, align 8
  %16 = load %struct.init_if_phase_op*, %struct.init_if_phase_op** %7, align 8
  %17 = getelementptr inbounds %struct.init_if_phase_op, %struct.init_if_phase_op* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @le32_to_cpu(i32 %18)
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i32, i32* @INIT_IF_PHASE_OP_PHASE, align 4
  %22 = call i64 @GET_FIELD(i64 %20, i32 %21)
  %23 = load i64, i64* %8, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %4
  %26 = load i64, i64* %10, align 8
  %27 = load i32, i32* @INIT_IF_PHASE_OP_PHASE_ID, align 4
  %28 = call i64 @GET_FIELD(i64 %26, i32 %27)
  %29 = load i64, i64* @ANY_PHASE_ID, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %41, label %31

31:                                               ; preds = %25
  %32 = load i64, i64* %10, align 8
  %33 = load i32, i32* @INIT_IF_PHASE_OP_PHASE_ID, align 4
  %34 = call i64 @GET_FIELD(i64 %32, i32 %33)
  %35 = load i64, i64* %9, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %31, %4
  %38 = load i64, i64* %11, align 8
  %39 = load i32, i32* @INIT_IF_PHASE_OP_CMD_OFFSET, align 4
  %40 = call i64 @GET_FIELD(i64 %38, i32 %39)
  store i64 %40, i64* %5, align 8
  br label %42

41:                                               ; preds = %31, %25
  store i64 0, i64* %5, align 8
  br label %42

42:                                               ; preds = %41, %37
  %43 = load i64, i64* %5, align 8
  ret i64 %43
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @GET_FIELD(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
