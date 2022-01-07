; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_poll_on_qm_cmd_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_poll_on_qm_cmd_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@QM_STOP_CMD_MAX_POLL_COUNT = common dso_local global i64 0, align 8
@QM_STOP_CMD_POLL_PERIOD_US = common dso_local global i32 0, align 4
@QM_REG_SDMCMDREADY = common dso_local global i32 0, align 4
@NETIF_MSG_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Timeout when waiting for QM SDM command ready signal\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*)* @qed_poll_on_qm_cmd_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_poll_on_qm_cmd_ready(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %25, %2
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* @QM_STOP_CMD_MAX_POLL_COUNT, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i1 [ false, %8 ], [ %15, %12 ]
  br i1 %17, label %18, label %28

18:                                               ; preds = %16
  %19 = load i32, i32* @QM_STOP_CMD_POLL_PERIOD_US, align 4
  %20 = call i32 @udelay(i32 %19)
  %21 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %22 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %23 = load i32, i32* @QM_REG_SDMCMDREADY, align 4
  %24 = call i64 @qed_rd(%struct.qed_hwfn* %21, %struct.qed_ptt* %22, i32 %23)
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %18
  %26 = load i64, i64* %7, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %7, align 8
  br label %8

28:                                               ; preds = %16
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @QM_STOP_CMD_MAX_POLL_COUNT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %34 = load i32, i32* @NETIF_MSG_HW, align 4
  %35 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %33, i32 %34, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %37

36:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %32
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
