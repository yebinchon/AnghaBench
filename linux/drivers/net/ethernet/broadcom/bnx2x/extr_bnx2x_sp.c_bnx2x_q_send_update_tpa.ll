; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_q_send_update_tpa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_q_send_update_tpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_queue_state_params = type { %struct.TYPE_2__, %struct.bnx2x_queue_sp_obj* }
%struct.TYPE_2__ = type { %struct.bnx2x_queue_update_tpa_params }
%struct.bnx2x_queue_update_tpa_params = type { i32 }
%struct.bnx2x_queue_sp_obj = type { i32, i32*, i32, i64 }
%struct.tpa_update_ramrod_data = type { i32 }

@ETH_CONNECTION_TYPE = common dso_local global i32 0, align 4
@SPE_HDR_FUNCTION_ID_SHIFT = common dso_local global i32 0, align 4
@RAMROD_CMD_ID_ETH_TPA_UPDATE = common dso_local global i32 0, align 4
@BNX2X_PRIMARY_CID_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_queue_state_params*)* @bnx2x_q_send_update_tpa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_q_send_update_tpa(%struct.bnx2x* %0, %struct.bnx2x_queue_state_params* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_queue_state_params*, align 8
  %5 = alloca %struct.bnx2x_queue_sp_obj*, align 8
  %6 = alloca %struct.tpa_update_ramrod_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x_queue_update_tpa_params*, align 8
  %9 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_queue_state_params* %1, %struct.bnx2x_queue_state_params** %4, align 8
  %10 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %4, align 8
  %11 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %10, i32 0, i32 1
  %12 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %11, align 8
  store %struct.bnx2x_queue_sp_obj* %12, %struct.bnx2x_queue_sp_obj** %5, align 8
  %13 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %5, align 8
  %14 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.tpa_update_ramrod_data*
  store %struct.tpa_update_ramrod_data* %16, %struct.tpa_update_ramrod_data** %6, align 8
  %17 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %5, align 8
  %18 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %4, align 8
  %21 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.bnx2x_queue_update_tpa_params* %22, %struct.bnx2x_queue_update_tpa_params** %8, align 8
  %23 = load %struct.tpa_update_ramrod_data*, %struct.tpa_update_ramrod_data** %6, align 8
  %24 = call i32 @memset(%struct.tpa_update_ramrod_data* %23, i32 0, i32 4)
  %25 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %26 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %5, align 8
  %27 = load %struct.bnx2x_queue_update_tpa_params*, %struct.bnx2x_queue_update_tpa_params** %8, align 8
  %28 = load %struct.tpa_update_ramrod_data*, %struct.tpa_update_ramrod_data** %6, align 8
  %29 = call i32 @bnx2x_q_fill_update_tpa_data(%struct.bnx2x* %25, %struct.bnx2x_queue_sp_obj* %26, %struct.bnx2x_queue_update_tpa_params* %27, %struct.tpa_update_ramrod_data* %28)
  %30 = load i32, i32* @ETH_CONNECTION_TYPE, align 4
  %31 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %5, align 8
  %32 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @SPE_HDR_FUNCTION_ID_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = or i32 %30, %35
  store i32 %36, i32* %9, align 4
  %37 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %38 = load i32, i32* @RAMROD_CMD_ID_ETH_TPA_UPDATE, align 4
  %39 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %5, align 8
  %40 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @BNX2X_PRIMARY_CID_INDEX, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @U64_HI(i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @U64_LO(i32 %47)
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @bnx2x_sp_post(%struct.bnx2x* %37, i32 %38, i32 %44, i32 %46, i32 %48, i32 %49)
  ret i32 %50
}

declare dso_local i32 @memset(%struct.tpa_update_ramrod_data*, i32, i32) #1

declare dso_local i32 @bnx2x_q_fill_update_tpa_data(%struct.bnx2x*, %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_update_tpa_params*, %struct.tpa_update_ramrod_data*) #1

declare dso_local i32 @bnx2x_sp_post(%struct.bnx2x*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @U64_HI(i32) #1

declare dso_local i32 @U64_LO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
