; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_tx_sm_start_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_tx_sm_start_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_tx = type { i32 }

@BNA_TX_F_BW_UPDATED = common dso_local global i32 0, align 4
@bna_tx_sm_stop_wait = common dso_local global i32 0, align 4
@bna_tx_sm_stopped = common dso_local global i32 0, align 4
@bna_tx_sm_prio_stop_wait = common dso_local global i32 0, align 4
@bna_tx_sm_started = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_tx*, i32)* @bna_tx_sm_start_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_tx_sm_start_wait(%struct.bna_tx* %0, i32 %1) #0 {
  %3 = alloca %struct.bna_tx*, align 8
  %4 = alloca i32, align 4
  store %struct.bna_tx* %0, %struct.bna_tx** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %54 [
    i32 128, label %6
    i32 130, label %16
    i32 129, label %26
    i32 131, label %48
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* @BNA_TX_F_BW_UPDATED, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %10 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %14 = load i32, i32* @bna_tx_sm_stop_wait, align 4
  %15 = call i32 @bfa_fsm_set_state(%struct.bna_tx* %13, i32 %14)
  br label %57

16:                                               ; preds = %2
  %17 = load i32, i32* @BNA_TX_F_BW_UPDATED, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %20 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %24 = load i32, i32* @bna_tx_sm_stopped, align 4
  %25 = call i32 @bfa_fsm_set_state(%struct.bna_tx* %23, i32 %24)
  br label %57

26:                                               ; preds = %2
  %27 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %28 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @BNA_TX_F_BW_UPDATED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = load i32, i32* @BNA_TX_F_BW_UPDATED, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %37 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %41 = load i32, i32* @bna_tx_sm_prio_stop_wait, align 4
  %42 = call i32 @bfa_fsm_set_state(%struct.bna_tx* %40, i32 %41)
  br label %47

43:                                               ; preds = %26
  %44 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %45 = load i32, i32* @bna_tx_sm_started, align 4
  %46 = call i32 @bfa_fsm_set_state(%struct.bna_tx* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %33
  br label %57

48:                                               ; preds = %2
  %49 = load i32, i32* @BNA_TX_F_BW_UPDATED, align 4
  %50 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %51 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %57

54:                                               ; preds = %2
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @bfa_sm_fault(i32 %55)
  br label %57

57:                                               ; preds = %54, %48, %47, %16, %6
  ret void
}

declare dso_local i32 @bfa_fsm_set_state(%struct.bna_tx*, i32) #1

declare dso_local i32 @bfa_sm_fault(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
