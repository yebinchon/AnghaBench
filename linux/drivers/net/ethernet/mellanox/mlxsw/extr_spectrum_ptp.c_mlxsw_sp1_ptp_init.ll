; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ptp.c_mlxsw_sp1_ptp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ptp.c_mlxsw_sp1_ptp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_ptp_state = type { i32, i32, i32, %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlxsw_sp1_ptp_unmatched_ht_params = common dso_local global i32 0, align 4
@MLXSW_SP_PTP_MESSAGE_TYPE_SYNC = common dso_local global i32 0, align 4
@MLXSW_SP_PTP_MESSAGE_TYPE_DELAY_REQ = common dso_local global i32 0, align 4
@MLXSW_SP_PTP_MESSAGE_TYPE_PDELAY_REQ = common dso_local global i32 0, align 4
@MLXSW_SP_PTP_MESSAGE_TYPE_PDELAY_RESP = common dso_local global i32 0, align 4
@MLXSW_REG_MTPTPT_TRAP_ID_PTP0 = common dso_local global i32 0, align 4
@MLXSW_REG_MTPTPT_TRAP_ID_PTP1 = common dso_local global i32 0, align 4
@mlxsw_sp1_ptp_ht_gc = common dso_local global i32 0, align 4
@MLXSW_SP1_PTP_HT_GC_INTERVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlxsw_sp_ptp_state* @mlxsw_sp1_ptp_init(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_ptp_state*, align 8
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp_ptp_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  %7 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %8 = call i32 @mlxsw_sp1_ptp_shaper_params_set(%struct.mlxsw_sp* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.mlxsw_sp_ptp_state* @ERR_PTR(i32 %12)
  store %struct.mlxsw_sp_ptp_state* %13, %struct.mlxsw_sp_ptp_state** %2, align 8
  br label %98

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.mlxsw_sp_ptp_state* @kzalloc(i32 24, i32 %15)
  store %struct.mlxsw_sp_ptp_state* %16, %struct.mlxsw_sp_ptp_state** %4, align 8
  %17 = load %struct.mlxsw_sp_ptp_state*, %struct.mlxsw_sp_ptp_state** %4, align 8
  %18 = icmp ne %struct.mlxsw_sp_ptp_state* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.mlxsw_sp_ptp_state* @ERR_PTR(i32 %21)
  store %struct.mlxsw_sp_ptp_state* %22, %struct.mlxsw_sp_ptp_state** %2, align 8
  br label %98

23:                                               ; preds = %14
  %24 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %25 = load %struct.mlxsw_sp_ptp_state*, %struct.mlxsw_sp_ptp_state** %4, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp_ptp_state, %struct.mlxsw_sp_ptp_state* %25, i32 0, i32 3
  store %struct.mlxsw_sp* %24, %struct.mlxsw_sp** %26, align 8
  %27 = load %struct.mlxsw_sp_ptp_state*, %struct.mlxsw_sp_ptp_state** %4, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_ptp_state, %struct.mlxsw_sp_ptp_state* %27, i32 0, i32 2
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load %struct.mlxsw_sp_ptp_state*, %struct.mlxsw_sp_ptp_state** %4, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_ptp_state, %struct.mlxsw_sp_ptp_state* %30, i32 0, i32 0
  %32 = call i32 @rhltable_init(i32* %31, i32* @mlxsw_sp1_ptp_unmatched_ht_params)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %93

36:                                               ; preds = %23
  %37 = load i32, i32* @MLXSW_SP_PTP_MESSAGE_TYPE_SYNC, align 4
  %38 = call i32 @BIT(i32 %37)
  %39 = load i32, i32* @MLXSW_SP_PTP_MESSAGE_TYPE_DELAY_REQ, align 4
  %40 = call i32 @BIT(i32 %39)
  %41 = or i32 %38, %40
  %42 = load i32, i32* @MLXSW_SP_PTP_MESSAGE_TYPE_PDELAY_REQ, align 4
  %43 = call i32 @BIT(i32 %42)
  %44 = or i32 %41, %43
  %45 = load i32, i32* @MLXSW_SP_PTP_MESSAGE_TYPE_PDELAY_RESP, align 4
  %46 = call i32 @BIT(i32 %45)
  %47 = or i32 %44, %46
  store i32 %47, i32* %5, align 4
  %48 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %49 = load i32, i32* @MLXSW_REG_MTPTPT_TRAP_ID_PTP0, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @mlxsw_sp_ptp_mtptpt_set(%struct.mlxsw_sp* %48, i32 %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %36
  br label %89

55:                                               ; preds = %36
  %56 = load i32, i32* %5, align 4
  %57 = xor i32 %56, -1
  store i32 %57, i32* %5, align 4
  %58 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %59 = load i32, i32* @MLXSW_REG_MTPTPT_TRAP_ID_PTP1, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @mlxsw_sp_ptp_mtptpt_set(%struct.mlxsw_sp* %58, i32 %59, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %85

65:                                               ; preds = %55
  %66 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %67 = call i32 @mlxsw_sp1_ptp_set_fifo_clr_on_trap(%struct.mlxsw_sp* %66, i32 1)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %81

71:                                               ; preds = %65
  %72 = load %struct.mlxsw_sp_ptp_state*, %struct.mlxsw_sp_ptp_state** %4, align 8
  %73 = getelementptr inbounds %struct.mlxsw_sp_ptp_state, %struct.mlxsw_sp_ptp_state* %72, i32 0, i32 1
  %74 = load i32, i32* @mlxsw_sp1_ptp_ht_gc, align 4
  %75 = call i32 @INIT_DELAYED_WORK(i32* %73, i32 %74)
  %76 = load %struct.mlxsw_sp_ptp_state*, %struct.mlxsw_sp_ptp_state** %4, align 8
  %77 = getelementptr inbounds %struct.mlxsw_sp_ptp_state, %struct.mlxsw_sp_ptp_state* %76, i32 0, i32 1
  %78 = load i32, i32* @MLXSW_SP1_PTP_HT_GC_INTERVAL, align 4
  %79 = call i32 @mlxsw_core_schedule_dw(i32* %77, i32 %78)
  %80 = load %struct.mlxsw_sp_ptp_state*, %struct.mlxsw_sp_ptp_state** %4, align 8
  store %struct.mlxsw_sp_ptp_state* %80, %struct.mlxsw_sp_ptp_state** %2, align 8
  br label %98

81:                                               ; preds = %70
  %82 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %83 = load i32, i32* @MLXSW_REG_MTPTPT_TRAP_ID_PTP1, align 4
  %84 = call i32 @mlxsw_sp_ptp_mtptpt_set(%struct.mlxsw_sp* %82, i32 %83, i32 0)
  br label %85

85:                                               ; preds = %81, %64
  %86 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %87 = load i32, i32* @MLXSW_REG_MTPTPT_TRAP_ID_PTP0, align 4
  %88 = call i32 @mlxsw_sp_ptp_mtptpt_set(%struct.mlxsw_sp* %86, i32 %87, i32 0)
  br label %89

89:                                               ; preds = %85, %54
  %90 = load %struct.mlxsw_sp_ptp_state*, %struct.mlxsw_sp_ptp_state** %4, align 8
  %91 = getelementptr inbounds %struct.mlxsw_sp_ptp_state, %struct.mlxsw_sp_ptp_state* %90, i32 0, i32 0
  %92 = call i32 @rhltable_destroy(i32* %91)
  br label %93

93:                                               ; preds = %89, %35
  %94 = load %struct.mlxsw_sp_ptp_state*, %struct.mlxsw_sp_ptp_state** %4, align 8
  %95 = call i32 @kfree(%struct.mlxsw_sp_ptp_state* %94)
  %96 = load i32, i32* %6, align 4
  %97 = call %struct.mlxsw_sp_ptp_state* @ERR_PTR(i32 %96)
  store %struct.mlxsw_sp_ptp_state* %97, %struct.mlxsw_sp_ptp_state** %2, align 8
  br label %98

98:                                               ; preds = %93, %71, %19, %11
  %99 = load %struct.mlxsw_sp_ptp_state*, %struct.mlxsw_sp_ptp_state** %2, align 8
  ret %struct.mlxsw_sp_ptp_state* %99
}

declare dso_local i32 @mlxsw_sp1_ptp_shaper_params_set(%struct.mlxsw_sp*) #1

declare dso_local %struct.mlxsw_sp_ptp_state* @ERR_PTR(i32) #1

declare dso_local %struct.mlxsw_sp_ptp_state* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @rhltable_init(i32*, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mlxsw_sp_ptp_mtptpt_set(%struct.mlxsw_sp*, i32, i32) #1

declare dso_local i32 @mlxsw_sp1_ptp_set_fifo_clr_on_trap(%struct.mlxsw_sp*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mlxsw_core_schedule_dw(i32*, i32) #1

declare dso_local i32 @rhltable_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_ptp_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
