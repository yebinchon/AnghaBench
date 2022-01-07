; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_send_reset_timesync_ramrod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_send_reset_timesync_ramrod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_func_state_params = type { i32, i32*, i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { %struct.bnx2x_func_set_timesync_params }
%struct.bnx2x_func_set_timesync_params = type { i32, i32 }

@RAMROD_COMP_WAIT = common dso_local global i32 0, align 4
@RAMROD_RETRY = common dso_local global i32 0, align 4
@BNX2X_F_CMD_SET_TIMESYNC = common dso_local global i32 0, align 4
@TS_DRIFT_ADJUST_RESET = common dso_local global i32 0, align 4
@TS_OFFSET_KEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_send_reset_timesync_ramrod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_send_reset_timesync_ramrod(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca %struct.bnx2x_func_state_params, align 8
  %4 = alloca %struct.bnx2x_func_set_timesync_params*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %5 = bitcast %struct.bnx2x_func_state_params* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 40, i1 false)
  %6 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %3, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.bnx2x_func_set_timesync_params* %7, %struct.bnx2x_func_set_timesync_params** %4, align 8
  %8 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %9 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %3, i32 0, i32 2
  %10 = call i32 @__set_bit(i32 %8, i32* %9)
  %11 = load i32, i32* @RAMROD_RETRY, align 4
  %12 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %3, i32 0, i32 2
  %13 = call i32 @__set_bit(i32 %11, i32* %12)
  %14 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %15 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %3, i32 0, i32 1
  store i32* %15, i32** %16, align 8
  %17 = load i32, i32* @BNX2X_F_CMD_SET_TIMESYNC, align 4
  %18 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %3, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* @TS_DRIFT_ADJUST_RESET, align 4
  %20 = load %struct.bnx2x_func_set_timesync_params*, %struct.bnx2x_func_set_timesync_params** %4, align 8
  %21 = getelementptr inbounds %struct.bnx2x_func_set_timesync_params, %struct.bnx2x_func_set_timesync_params* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @TS_OFFSET_KEEP, align 4
  %23 = load %struct.bnx2x_func_set_timesync_params*, %struct.bnx2x_func_set_timesync_params** %4, align 8
  %24 = getelementptr inbounds %struct.bnx2x_func_set_timesync_params, %struct.bnx2x_func_set_timesync_params* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %26 = call i32 @bnx2x_func_state_change(%struct.bnx2x* %25, %struct.bnx2x_func_state_params* %3)
  ret i32 %26
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
