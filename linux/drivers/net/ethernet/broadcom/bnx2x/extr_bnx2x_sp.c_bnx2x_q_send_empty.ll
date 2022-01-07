; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_q_send_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_q_send_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_queue_state_params = type { %struct.bnx2x_queue_sp_obj* }
%struct.bnx2x_queue_sp_obj = type { i32* }

@RAMROD_CMD_ID_ETH_EMPTY = common dso_local global i32 0, align 4
@BNX2X_PRIMARY_CID_INDEX = common dso_local global i64 0, align 8
@ETH_CONNECTION_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_queue_state_params*)* @bnx2x_q_send_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_q_send_empty(%struct.bnx2x* %0, %struct.bnx2x_queue_state_params* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_queue_state_params*, align 8
  %5 = alloca %struct.bnx2x_queue_sp_obj*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_queue_state_params* %1, %struct.bnx2x_queue_state_params** %4, align 8
  %6 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %4, align 8
  %7 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %6, i32 0, i32 0
  %8 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %7, align 8
  store %struct.bnx2x_queue_sp_obj* %8, %struct.bnx2x_queue_sp_obj** %5, align 8
  %9 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %10 = load i32, i32* @RAMROD_CMD_ID_ETH_EMPTY, align 4
  %11 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %5, align 8
  %12 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @BNX2X_PRIMARY_CID_INDEX, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ETH_CONNECTION_TYPE, align 4
  %18 = call i32 @bnx2x_sp_post(%struct.bnx2x* %9, i32 %10, i32 %16, i32 0, i32 0, i32 %17)
  ret i32 %18
}

declare dso_local i32 @bnx2x_sp_post(%struct.bnx2x*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
