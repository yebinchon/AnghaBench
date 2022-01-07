; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_ops.c_qed_init_cmd_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_ops.c_qed_init_cmd_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.init_callback_op = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"engine_phase\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Unexpected init op callback ID %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, %struct.init_callback_op*)* @qed_init_cmd_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_init_cmd_cb(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.init_callback_op* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca %struct.init_callback_op*, align 8
  %8 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %6, align 8
  store %struct.init_callback_op* %2, %struct.init_callback_op** %7, align 8
  %9 = load %struct.init_callback_op*, %struct.init_callback_op** %7, align 8
  %10 = getelementptr inbounds %struct.init_callback_op, %struct.init_callback_op* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %16 [
    i32 128, label %12
  ]

12:                                               ; preds = %3
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %14 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %15 = call i32 @qed_dmae_sanity(%struct.qed_hwfn* %13, %struct.qed_ptt* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %8, align 4
  br label %24

16:                                               ; preds = %3
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %18 = load %struct.init_callback_op*, %struct.init_callback_op** %7, align 8
  %19 = getelementptr inbounds %struct.init_callback_op, %struct.init_callback_op* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @DP_NOTICE(%struct.qed_hwfn* %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %26

24:                                               ; preds = %12
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %24, %16
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @qed_dmae_sanity(%struct.qed_hwfn*, %struct.qed_ptt*, i8*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
