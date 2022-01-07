; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_rx_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_rx_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rx = type { i64, %struct.TYPE_2__*, i32*, i32 (i32*, %struct.bna_rx*)*, i32 }
%struct.TYPE_2__ = type { i32 }

@BNA_RX_F_ENET_STARTED = common dso_local global i32 0, align 4
@bna_rx_sm_stopped = common dso_local global i64 0, align 8
@RX_E_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_rx*)* @bna_rx_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_rx_stop(%struct.bna_rx* %0) #0 {
  %2 = alloca %struct.bna_rx*, align 8
  store %struct.bna_rx* %0, %struct.bna_rx** %2, align 8
  %3 = load i32, i32* @BNA_RX_F_ENET_STARTED, align 4
  %4 = xor i32 %3, -1
  %5 = load %struct.bna_rx*, %struct.bna_rx** %2, align 8
  %6 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = and i32 %7, %4
  store i32 %8, i32* %6, align 8
  %9 = load %struct.bna_rx*, %struct.bna_rx** %2, align 8
  %10 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @bna_rx_sm_stopped, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.bna_rx*, %struct.bna_rx** %2, align 8
  %16 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.bna_rx*, %struct.bna_rx** %2, align 8
  %20 = call i32 @bna_rx_mod_cb_rx_stopped(i32* %18, %struct.bna_rx* %19)
  br label %33

21:                                               ; preds = %1
  %22 = load %struct.bna_rx*, %struct.bna_rx** %2, align 8
  %23 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %22, i32 0, i32 3
  store i32 (i32*, %struct.bna_rx*)* @bna_rx_mod_cb_rx_stopped, i32 (i32*, %struct.bna_rx*)** %23, align 8
  %24 = load %struct.bna_rx*, %struct.bna_rx** %2, align 8
  %25 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.bna_rx*, %struct.bna_rx** %2, align 8
  %29 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %28, i32 0, i32 2
  store i32* %27, i32** %29, align 8
  %30 = load %struct.bna_rx*, %struct.bna_rx** %2, align 8
  %31 = load i32, i32* @RX_E_STOP, align 4
  %32 = call i32 @bfa_fsm_send_event(%struct.bna_rx* %30, i32 %31)
  br label %33

33:                                               ; preds = %21, %14
  ret void
}

declare dso_local i32 @bna_rx_mod_cb_rx_stopped(i32*, %struct.bna_rx*) #1

declare dso_local i32 @bfa_fsm_send_event(%struct.bna_rx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
