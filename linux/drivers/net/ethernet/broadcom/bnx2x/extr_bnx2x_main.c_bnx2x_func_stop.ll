; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_func_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_func_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_func_state_params = type { i32, i32, i32*, i32* }

@RAMROD_COMP_WAIT = common dso_local global i32 0, align 4
@BNX2X_F_CMD_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"FUNC_STOP ramrod failed. Running a dry transaction\0A\00", align 1
@RAMROD_DRV_CLR_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_func_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_func_stop(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_func_state_params, align 8
  %5 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  %6 = bitcast %struct.bnx2x_func_state_params* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 24, i1 false)
  %7 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %8 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %4, i32 0, i32 0
  %9 = call i32 @__set_bit(i32 %7, i32* %8)
  %10 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %11 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %4, i32 0, i32 2
  store i32* %11, i32** %12, align 8
  %13 = load i32, i32* @BNX2X_F_CMD_STOP, align 4
  %14 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %4, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %16 = call i32 @bnx2x_func_state_change(%struct.bnx2x* %15, %struct.bnx2x_func_state_params* %4)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @RAMROD_DRV_CLR_ONLY, align 4
  %22 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %4, i32 0, i32 0
  %23 = call i32 @__set_bit(i32 %21, i32* %22)
  %24 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %25 = call i32 @bnx2x_func_state_change(%struct.bnx2x* %24, %struct.bnx2x_func_state_params* %4)
  store i32 %25, i32* %2, align 4
  br label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %19
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @__set_bit(i32, i32*) #2

declare dso_local i32 @bnx2x_func_state_change(%struct.bnx2x*, %struct.bnx2x_func_state_params*) #2

declare dso_local i32 @BNX2X_ERR(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
