; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_q_fill_setup_tx_only.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_q_fill_setup_tx_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_queue_state_params = type { %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.tx_queue_init_ramrod_data = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cid %d, tx bd page lo %x hi %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_queue_state_params*, %struct.tx_queue_init_ramrod_data*)* @bnx2x_q_fill_setup_tx_only to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_q_fill_setup_tx_only(%struct.bnx2x* %0, %struct.bnx2x_queue_state_params* %1, %struct.tx_queue_init_ramrod_data* %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_queue_state_params*, align 8
  %6 = alloca %struct.tx_queue_init_ramrod_data*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_queue_state_params* %1, %struct.bnx2x_queue_state_params** %5, align 8
  store %struct.tx_queue_init_ramrod_data* %2, %struct.tx_queue_init_ramrod_data** %6, align 8
  %7 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %8 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %5, align 8
  %9 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %8, i32 0, i32 0
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %5, align 8
  %12 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = load %struct.tx_queue_init_ramrod_data*, %struct.tx_queue_init_ramrod_data** %6, align 8
  %16 = getelementptr inbounds %struct.tx_queue_init_ramrod_data, %struct.tx_queue_init_ramrod_data* %15, i32 0, i32 1
  %17 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %5, align 8
  %18 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = call i32 @bnx2x_q_fill_init_general_data(%struct.bnx2x* %7, %struct.TYPE_10__* %10, i32* %14, i32* %16, i32* %20)
  %22 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %5, align 8
  %23 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %5, align 8
  %26 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load %struct.tx_queue_init_ramrod_data*, %struct.tx_queue_init_ramrod_data** %6, align 8
  %30 = getelementptr inbounds %struct.tx_queue_init_ramrod_data, %struct.tx_queue_init_ramrod_data* %29, i32 0, i32 0
  %31 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %5, align 8
  %32 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = call i32 @bnx2x_q_fill_init_tx_data(%struct.TYPE_10__* %24, i32* %28, %struct.TYPE_11__* %30, i32* %34)
  %36 = load i32, i32* @BNX2X_MSG_SP, align 4
  %37 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %5, align 8
  %38 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.tx_queue_init_ramrod_data*, %struct.tx_queue_init_ramrod_data** %6, align 8
  %45 = getelementptr inbounds %struct.tx_queue_init_ramrod_data, %struct.tx_queue_init_ramrod_data* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.tx_queue_init_ramrod_data*, %struct.tx_queue_init_ramrod_data** %6, align 8
  %50 = getelementptr inbounds %struct.tx_queue_init_ramrod_data, %struct.tx_queue_init_ramrod_data* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @DP(i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %48, i32 %53)
  ret void
}

declare dso_local i32 @bnx2x_q_fill_init_general_data(%struct.bnx2x*, %struct.TYPE_10__*, i32*, i32*, i32*) #1

declare dso_local i32 @bnx2x_q_fill_init_tx_data(%struct.TYPE_10__*, i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @DP(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
