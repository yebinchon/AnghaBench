; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_send_update_drift_ramrod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_send_update_drift_ramrod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_func_state_params = type { i32, i32*, i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { %struct.bnx2x_func_set_timesync_params }
%struct.bnx2x_func_set_timesync_params = type { i32, i32, i32, i32, i32 }

@RAMROD_COMP_WAIT = common dso_local global i32 0, align 4
@RAMROD_RETRY = common dso_local global i32 0, align 4
@BNX2X_F_CMD_SET_TIMESYNC = common dso_local global i32 0, align 4
@TS_DRIFT_ADJUST_SET = common dso_local global i32 0, align 4
@TS_OFFSET_KEEP = common dso_local global i32 0, align 4
@TS_ADD_VALUE = common dso_local global i32 0, align 4
@TS_SUB_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i32, i32, i32)* @bnx2x_send_update_drift_ramrod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_send_update_drift_ramrod(%struct.bnx2x* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnx2x_func_state_params, align 8
  %10 = alloca %struct.bnx2x_func_set_timesync_params*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = bitcast %struct.bnx2x_func_state_params* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 48, i1 false)
  %12 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %9, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.bnx2x_func_set_timesync_params* %13, %struct.bnx2x_func_set_timesync_params** %10, align 8
  %14 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %15 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %9, i32 0, i32 2
  %16 = call i32 @__set_bit(i32 %14, i32* %15)
  %17 = load i32, i32* @RAMROD_RETRY, align 4
  %18 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %9, i32 0, i32 2
  %19 = call i32 @__set_bit(i32 %17, i32* %18)
  %20 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %21 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %9, i32 0, i32 1
  store i32* %21, i32** %22, align 8
  %23 = load i32, i32* @BNX2X_F_CMD_SET_TIMESYNC, align 4
  %24 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %9, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = load i32, i32* @TS_DRIFT_ADJUST_SET, align 4
  %26 = load %struct.bnx2x_func_set_timesync_params*, %struct.bnx2x_func_set_timesync_params** %10, align 8
  %27 = getelementptr inbounds %struct.bnx2x_func_set_timesync_params, %struct.bnx2x_func_set_timesync_params* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @TS_OFFSET_KEEP, align 4
  %29 = load %struct.bnx2x_func_set_timesync_params*, %struct.bnx2x_func_set_timesync_params** %10, align 8
  %30 = getelementptr inbounds %struct.bnx2x_func_set_timesync_params, %struct.bnx2x_func_set_timesync_params* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* @TS_ADD_VALUE, align 4
  br label %37

35:                                               ; preds = %4
  %36 = load i32, i32* @TS_SUB_VALUE, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = load %struct.bnx2x_func_set_timesync_params*, %struct.bnx2x_func_set_timesync_params** %10, align 8
  %40 = getelementptr inbounds %struct.bnx2x_func_set_timesync_params, %struct.bnx2x_func_set_timesync_params* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.bnx2x_func_set_timesync_params*, %struct.bnx2x_func_set_timesync_params** %10, align 8
  %43 = getelementptr inbounds %struct.bnx2x_func_set_timesync_params, %struct.bnx2x_func_set_timesync_params* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.bnx2x_func_set_timesync_params*, %struct.bnx2x_func_set_timesync_params** %10, align 8
  %46 = getelementptr inbounds %struct.bnx2x_func_set_timesync_params, %struct.bnx2x_func_set_timesync_params* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %48 = call i32 @bnx2x_func_state_change(%struct.bnx2x* %47, %struct.bnx2x_func_state_params* %9)
  ret i32 %48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @__set_bit(i32, i32*) #2

declare dso_local i32 @bnx2x_func_state_change(%struct.bnx2x*, %struct.bnx2x_func_state_params*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
