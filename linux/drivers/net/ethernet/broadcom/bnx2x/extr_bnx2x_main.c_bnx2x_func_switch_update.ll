; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_func_switch_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_func_switch_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_func_state_params = type { i32, i32*, i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { %struct.bnx2x_func_switch_update_params }
%struct.bnx2x_func_switch_update_params = type { i32 }

@RAMROD_COMP_WAIT = common dso_local global i32 0, align 4
@RAMROD_RETRY = common dso_local global i32 0, align 4
@BNX2X_F_CMD_SWITCH_UPDATE = common dso_local global i32 0, align 4
@BNX2X_F_UPDATE_TX_SWITCH_SUSPEND_CHNG = common dso_local global i32 0, align 4
@BNX2X_F_UPDATE_TX_SWITCH_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i32)* @bnx2x_func_switch_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_func_switch_update(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x_func_state_params, align 8
  %7 = alloca %struct.bnx2x_func_switch_update_params*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = bitcast %struct.bnx2x_func_state_params* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 32, i1 false)
  %9 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %6, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.bnx2x_func_switch_update_params* %10, %struct.bnx2x_func_switch_update_params** %7, align 8
  %11 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %12 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %6, i32 0, i32 2
  %13 = call i32 @__set_bit(i32 %11, i32* %12)
  %14 = load i32, i32* @RAMROD_RETRY, align 4
  %15 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %6, i32 0, i32 2
  %16 = call i32 @__set_bit(i32 %14, i32* %15)
  %17 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %18 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %6, i32 0, i32 1
  store i32* %18, i32** %19, align 8
  %20 = load i32, i32* @BNX2X_F_CMD_SWITCH_UPDATE, align 4
  %21 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %6, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* @BNX2X_F_UPDATE_TX_SWITCH_SUSPEND_CHNG, align 4
  %23 = load %struct.bnx2x_func_switch_update_params*, %struct.bnx2x_func_switch_update_params** %7, align 8
  %24 = getelementptr inbounds %struct.bnx2x_func_switch_update_params, %struct.bnx2x_func_switch_update_params* %23, i32 0, i32 0
  %25 = call i32 @__set_bit(i32 %22, i32* %24)
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load i32, i32* @BNX2X_F_UPDATE_TX_SWITCH_SUSPEND, align 4
  %30 = load %struct.bnx2x_func_switch_update_params*, %struct.bnx2x_func_switch_update_params** %7, align 8
  %31 = getelementptr inbounds %struct.bnx2x_func_switch_update_params, %struct.bnx2x_func_switch_update_params* %30, i32 0, i32 0
  %32 = call i32 @__set_bit(i32 %29, i32* %31)
  br label %33

33:                                               ; preds = %28, %2
  %34 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %35 = call i32 @bnx2x_func_state_change(%struct.bnx2x* %34, %struct.bnx2x_func_state_params* %6)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  ret i32 %36
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
