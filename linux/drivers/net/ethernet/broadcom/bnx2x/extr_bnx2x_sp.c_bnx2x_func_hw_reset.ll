; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_func_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_func_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_func_state_params = type { %struct.bnx2x_func_sp_obj*, %struct.TYPE_4__ }
%struct.bnx2x_func_sp_obj = type { i32 (%struct.bnx2x.0*, %struct.bnx2x_func_sp_obj*, i32)*, %struct.bnx2x_func_sp_drv_ops* }
%struct.bnx2x.0 = type opaque
%struct.bnx2x_func_sp_drv_ops = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"function %d  reset_phase %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Unknown reset_phase (0x%x) from MCP\0A\00", align 1
@BNX2X_F_CMD_HW_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_func_state_params*)* @bnx2x_func_hw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_func_hw_reset(%struct.bnx2x* %0, %struct.bnx2x_func_state_params* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_func_state_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x_func_sp_obj*, align 8
  %7 = alloca %struct.bnx2x_func_sp_drv_ops*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_func_state_params* %1, %struct.bnx2x_func_state_params** %4, align 8
  %8 = load %struct.bnx2x_func_state_params*, %struct.bnx2x_func_state_params** %4, align 8
  %9 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load %struct.bnx2x_func_state_params*, %struct.bnx2x_func_state_params** %4, align 8
  %14 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %13, i32 0, i32 0
  %15 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %14, align 8
  store %struct.bnx2x_func_sp_obj* %15, %struct.bnx2x_func_sp_obj** %6, align 8
  %16 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %17 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %16, i32 0, i32 1
  %18 = load %struct.bnx2x_func_sp_drv_ops*, %struct.bnx2x_func_sp_drv_ops** %17, align 8
  store %struct.bnx2x_func_sp_drv_ops* %18, %struct.bnx2x_func_sp_drv_ops** %7, align 8
  %19 = load i32, i32* @BNX2X_MSG_SP, align 4
  %20 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %21 = call i32 @BP_ABS_FUNC(%struct.bnx2x* %20)
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @DP(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %37 [
    i32 130, label %25
    i32 128, label %29
    i32 129, label %33
  ]

25:                                               ; preds = %2
  %26 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %27 = load %struct.bnx2x_func_sp_drv_ops*, %struct.bnx2x_func_sp_drv_ops** %7, align 8
  %28 = call i32 @bnx2x_func_reset_cmn(%struct.bnx2x* %26, %struct.bnx2x_func_sp_drv_ops* %27)
  br label %40

29:                                               ; preds = %2
  %30 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %31 = load %struct.bnx2x_func_sp_drv_ops*, %struct.bnx2x_func_sp_drv_ops** %7, align 8
  %32 = call i32 @bnx2x_func_reset_port(%struct.bnx2x* %30, %struct.bnx2x_func_sp_drv_ops* %31)
  br label %40

33:                                               ; preds = %2
  %34 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %35 = load %struct.bnx2x_func_sp_drv_ops*, %struct.bnx2x_func_sp_drv_ops** %7, align 8
  %36 = call i32 @bnx2x_func_reset_func(%struct.bnx2x* %34, %struct.bnx2x_func_sp_drv_ops* %35)
  br label %40

37:                                               ; preds = %2
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %37, %33, %29, %25
  %41 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %42 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %41, i32 0, i32 0
  %43 = load i32 (%struct.bnx2x.0*, %struct.bnx2x_func_sp_obj*, i32)*, i32 (%struct.bnx2x.0*, %struct.bnx2x_func_sp_obj*, i32)** %42, align 8
  %44 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %45 = bitcast %struct.bnx2x* %44 to %struct.bnx2x.0*
  %46 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %47 = load i32, i32* @BNX2X_F_CMD_HW_RESET, align 4
  %48 = call i32 %43(%struct.bnx2x.0* %45, %struct.bnx2x_func_sp_obj* %46, i32 %47)
  ret i32 0
}

declare dso_local i32 @DP(i32, i8*, i32, i32) #1

declare dso_local i32 @BP_ABS_FUNC(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_func_reset_cmn(%struct.bnx2x*, %struct.bnx2x_func_sp_drv_ops*) #1

declare dso_local i32 @bnx2x_func_reset_port(%struct.bnx2x*, %struct.bnx2x_func_sp_drv_ops*) #1

declare dso_local i32 @bnx2x_func_reset_func(%struct.bnx2x*, %struct.bnx2x_func_sp_drv_ops*) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
