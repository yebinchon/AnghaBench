; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ptp.c_mlxsw_sp1_ptp_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ptp.c_mlxsw_sp1_ptp_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_ptp_state = type { i32, i32, %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }

@MLXSW_REG_MTPTPT_TRAP_ID_PTP1 = common dso_local global i32 0, align 4
@MLXSW_REG_MTPTPT_TRAP_ID_PTP0 = common dso_local global i32 0, align 4
@mlxsw_sp1_ptp_unmatched_free_fn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_sp1_ptp_fini(%struct.mlxsw_sp_ptp_state* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_ptp_state*, align 8
  %3 = alloca %struct.mlxsw_sp*, align 8
  store %struct.mlxsw_sp_ptp_state* %0, %struct.mlxsw_sp_ptp_state** %2, align 8
  %4 = load %struct.mlxsw_sp_ptp_state*, %struct.mlxsw_sp_ptp_state** %2, align 8
  %5 = getelementptr inbounds %struct.mlxsw_sp_ptp_state, %struct.mlxsw_sp_ptp_state* %4, i32 0, i32 2
  %6 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp* %6, %struct.mlxsw_sp** %3, align 8
  %7 = load %struct.mlxsw_sp_ptp_state*, %struct.mlxsw_sp_ptp_state** %2, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp_ptp_state, %struct.mlxsw_sp_ptp_state* %7, i32 0, i32 1
  %9 = call i32 @cancel_delayed_work_sync(i32* %8)
  %10 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %11 = call i32 @mlxsw_sp1_ptp_mtpppc_set(%struct.mlxsw_sp* %10, i32 0, i32 0)
  %12 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %13 = call i32 @mlxsw_sp1_ptp_set_fifo_clr_on_trap(%struct.mlxsw_sp* %12, i32 0)
  %14 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %15 = load i32, i32* @MLXSW_REG_MTPTPT_TRAP_ID_PTP1, align 4
  %16 = call i32 @mlxsw_sp_ptp_mtptpt_set(%struct.mlxsw_sp* %14, i32 %15, i32 0)
  %17 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %18 = load i32, i32* @MLXSW_REG_MTPTPT_TRAP_ID_PTP0, align 4
  %19 = call i32 @mlxsw_sp_ptp_mtptpt_set(%struct.mlxsw_sp* %17, i32 %18, i32 0)
  %20 = load %struct.mlxsw_sp_ptp_state*, %struct.mlxsw_sp_ptp_state** %2, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_ptp_state, %struct.mlxsw_sp_ptp_state* %20, i32 0, i32 0
  %22 = call i32 @rhltable_free_and_destroy(i32* %21, i32* @mlxsw_sp1_ptp_unmatched_free_fn, i32* null)
  %23 = load %struct.mlxsw_sp_ptp_state*, %struct.mlxsw_sp_ptp_state** %2, align 8
  %24 = call i32 @kfree(%struct.mlxsw_sp_ptp_state* %23)
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mlxsw_sp1_ptp_mtpppc_set(%struct.mlxsw_sp*, i32, i32) #1

declare dso_local i32 @mlxsw_sp1_ptp_set_fifo_clr_on_trap(%struct.mlxsw_sp*, i32) #1

declare dso_local i32 @mlxsw_sp_ptp_mtptpt_set(%struct.mlxsw_sp*, i32, i32) #1

declare dso_local i32 @rhltable_free_and_destroy(i32*, i32*, i32*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_ptp_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
