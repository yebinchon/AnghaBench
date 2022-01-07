; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_q_send_terminate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_q_send_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_queue_state_params = type { %struct.TYPE_4__, %struct.bnx2x_queue_sp_obj* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.bnx2x_queue_sp_obj = type { i64, i32*, i32 }

@.str = private unnamed_addr constant [43 x i8] c"queue[%d]: cid_index (%d) is out of range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RAMROD_CMD_ID_ETH_TERMINATE = common dso_local global i32 0, align 4
@ETH_CONNECTION_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_queue_state_params*)* @bnx2x_q_send_terminate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_q_send_terminate(%struct.bnx2x* %0, %struct.bnx2x_queue_state_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_queue_state_params*, align 8
  %6 = alloca %struct.bnx2x_queue_sp_obj*, align 8
  %7 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_queue_state_params* %1, %struct.bnx2x_queue_state_params** %5, align 8
  %8 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %5, align 8
  %9 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %8, i32 0, i32 1
  %10 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %9, align 8
  store %struct.bnx2x_queue_sp_obj* %10, %struct.bnx2x_queue_sp_obj** %6, align 8
  %11 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %5, align 8
  %12 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %18 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp uge i64 %16, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %23 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %24, i64 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %40

29:                                               ; preds = %2
  %30 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %31 = load i32, i32* @RAMROD_CMD_ID_ETH_TERMINATE, align 4
  %32 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %33 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ETH_CONNECTION_TYPE, align 4
  %39 = call i32 @bnx2x_sp_post(%struct.bnx2x* %30, i32 %31, i32 %37, i32 0, i32 0, i32 %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %29, %21
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @BNX2X_ERR(i8*, i32, i64) #1

declare dso_local i32 @bnx2x_sp_post(%struct.bnx2x*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
