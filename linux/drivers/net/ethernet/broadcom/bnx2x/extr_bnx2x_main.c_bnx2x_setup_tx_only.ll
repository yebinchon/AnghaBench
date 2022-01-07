; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_setup_tx_only.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_setup_tx_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_fastpath = type { i32 }
%struct.bnx2x_queue_state_params = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32* }
%struct.bnx2x_queue_setup_tx_only_params = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@BNX2X_Q_CMD_SETUP_TX_ONLY = common dso_local global i32 0, align 4
@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [123 x i8] c"preparing to send tx-only ramrod for connection: cos %d, primary cid %d, cid %d, client id %d, sp-client id %d, flags %lx\0A\00", align 1
@FIRST_TX_COS_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_fastpath*, %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_setup_tx_only_params*, i32, i32)* @bnx2x_setup_tx_only to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_setup_tx_only(%struct.bnx2x* %0, %struct.bnx2x_fastpath* %1, %struct.bnx2x_queue_state_params* %2, %struct.bnx2x_queue_setup_tx_only_params* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca %struct.bnx2x_fastpath*, align 8
  %9 = alloca %struct.bnx2x_queue_state_params*, align 8
  %10 = alloca %struct.bnx2x_queue_setup_tx_only_params*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %7, align 8
  store %struct.bnx2x_fastpath* %1, %struct.bnx2x_fastpath** %8, align 8
  store %struct.bnx2x_queue_state_params* %2, %struct.bnx2x_queue_state_params** %9, align 8
  store %struct.bnx2x_queue_setup_tx_only_params* %3, %struct.bnx2x_queue_setup_tx_only_params** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.bnx2x_queue_setup_tx_only_params*, %struct.bnx2x_queue_setup_tx_only_params** %10, align 8
  %14 = call i32 @memset(%struct.bnx2x_queue_setup_tx_only_params* %13, i32 0, i32 16)
  %15 = load i32, i32* @BNX2X_Q_CMD_SETUP_TX_ONLY, align 4
  %16 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %9, align 8
  %17 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %19 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %8, align 8
  %20 = call i32 @bnx2x_get_common_flags(%struct.bnx2x* %18, %struct.bnx2x_fastpath* %19, i32 0)
  %21 = load %struct.bnx2x_queue_setup_tx_only_params*, %struct.bnx2x_queue_setup_tx_only_params** %10, align 8
  %22 = getelementptr inbounds %struct.bnx2x_queue_setup_tx_only_params, %struct.bnx2x_queue_setup_tx_only_params* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.bnx2x_queue_setup_tx_only_params*, %struct.bnx2x_queue_setup_tx_only_params** %10, align 8
  %25 = getelementptr inbounds %struct.bnx2x_queue_setup_tx_only_params, %struct.bnx2x_queue_setup_tx_only_params* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %27 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %8, align 8
  %28 = load %struct.bnx2x_queue_setup_tx_only_params*, %struct.bnx2x_queue_setup_tx_only_params** %10, align 8
  %29 = getelementptr inbounds %struct.bnx2x_queue_setup_tx_only_params, %struct.bnx2x_queue_setup_tx_only_params* %28, i32 0, i32 2
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @bnx2x_pf_q_prep_general(%struct.bnx2x* %26, %struct.bnx2x_fastpath* %27, %struct.TYPE_4__* %29, i32 %30)
  %32 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %33 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %8, align 8
  %34 = load %struct.bnx2x_queue_setup_tx_only_params*, %struct.bnx2x_queue_setup_tx_only_params** %10, align 8
  %35 = getelementptr inbounds %struct.bnx2x_queue_setup_tx_only_params, %struct.bnx2x_queue_setup_tx_only_params* %34, i32 0, i32 3
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @bnx2x_pf_tx_q_prep(%struct.bnx2x* %32, %struct.bnx2x_fastpath* %33, i32* %35, i32 %36)
  %38 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %9, align 8
  %41 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @FIRST_TX_COS_INDEX, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %9, align 8
  %49 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %9, align 8
  %58 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.bnx2x_queue_setup_tx_only_params*, %struct.bnx2x_queue_setup_tx_only_params** %10, align 8
  %63 = getelementptr inbounds %struct.bnx2x_queue_setup_tx_only_params, %struct.bnx2x_queue_setup_tx_only_params* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.bnx2x_queue_setup_tx_only_params*, %struct.bnx2x_queue_setup_tx_only_params** %10, align 8
  %67 = getelementptr inbounds %struct.bnx2x_queue_setup_tx_only_params, %struct.bnx2x_queue_setup_tx_only_params* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @DP(i32 %38, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %47, i32 %56, i32 %61, i32 %65, i32 %68)
  %70 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %71 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %9, align 8
  %72 = call i32 @bnx2x_queue_state_change(%struct.bnx2x* %70, %struct.bnx2x_queue_state_params* %71)
  ret i32 %72
}

declare dso_local i32 @memset(%struct.bnx2x_queue_setup_tx_only_params*, i32, i32) #1

declare dso_local i32 @bnx2x_get_common_flags(%struct.bnx2x*, %struct.bnx2x_fastpath*, i32) #1

declare dso_local i32 @bnx2x_pf_q_prep_general(%struct.bnx2x*, %struct.bnx2x_fastpath*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @bnx2x_pf_tx_q_prep(%struct.bnx2x*, %struct.bnx2x_fastpath*, i32*, i32) #1

declare dso_local i32 @DP(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bnx2x_queue_state_change(%struct.bnx2x*, %struct.bnx2x_queue_state_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
