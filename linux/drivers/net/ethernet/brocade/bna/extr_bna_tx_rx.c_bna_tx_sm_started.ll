; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_tx_sm_started.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_tx_sm_started.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_tx = type { %struct.TYPE_2__*, i32 (i32, %struct.bna_tx*)*, i32 (i32, %struct.bna_tx*)* }
%struct.TYPE_2__ = type { i32 }

@bna_tx_sm_stop_wait = common dso_local global i32 0, align 4
@bna_tx_sm_failed = common dso_local global i32 0, align 4
@bna_tx_sm_prio_stop_wait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_tx*, i32)* @bna_tx_sm_started to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_tx_sm_started(%struct.bna_tx* %0, i32 %1) #0 {
  %3 = alloca %struct.bna_tx*, align 8
  %4 = alloca i32, align 4
  store %struct.bna_tx* %0, %struct.bna_tx** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %50 [
    i32 128, label %6
    i32 129, label %22
    i32 130, label %46
  ]

6:                                                ; preds = %2
  %7 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %8 = load i32, i32* @bna_tx_sm_stop_wait, align 4
  %9 = call i32 @bfa_fsm_set_state(%struct.bna_tx* %7, i32 %8)
  %10 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %11 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %10, i32 0, i32 2
  %12 = load i32 (i32, %struct.bna_tx*)*, i32 (i32, %struct.bna_tx*)** %11, align 8
  %13 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %14 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %19 = call i32 %12(i32 %17, %struct.bna_tx* %18)
  %20 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %21 = call i32 @bna_tx_enet_stop(%struct.bna_tx* %20)
  br label %53

22:                                               ; preds = %2
  %23 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %24 = load i32, i32* @bna_tx_sm_failed, align 4
  %25 = call i32 @bfa_fsm_set_state(%struct.bna_tx* %23, i32 %24)
  %26 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %27 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %26, i32 0, i32 2
  %28 = load i32 (i32, %struct.bna_tx*)*, i32 (i32, %struct.bna_tx*)** %27, align 8
  %29 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %30 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %35 = call i32 %28(i32 %33, %struct.bna_tx* %34)
  %36 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %37 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %36, i32 0, i32 1
  %38 = load i32 (i32, %struct.bna_tx*)*, i32 (i32, %struct.bna_tx*)** %37, align 8
  %39 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %40 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %45 = call i32 %38(i32 %43, %struct.bna_tx* %44)
  br label %53

46:                                               ; preds = %2
  %47 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %48 = load i32, i32* @bna_tx_sm_prio_stop_wait, align 4
  %49 = call i32 @bfa_fsm_set_state(%struct.bna_tx* %47, i32 %48)
  br label %53

50:                                               ; preds = %2
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @bfa_sm_fault(i32 %51)
  br label %53

53:                                               ; preds = %50, %46, %22, %6
  ret void
}

declare dso_local i32 @bfa_fsm_set_state(%struct.bna_tx*, i32) #1

declare dso_local i32 @bna_tx_enet_stop(%struct.bna_tx*) #1

declare dso_local i32 @bfa_sm_fault(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
