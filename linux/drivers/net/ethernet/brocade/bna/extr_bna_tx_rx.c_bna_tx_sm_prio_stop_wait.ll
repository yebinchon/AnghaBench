; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_tx_sm_prio_stop_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_tx_sm_prio_stop_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_tx = type { %struct.TYPE_2__*, i32 (i32, %struct.bna_tx*)* }
%struct.TYPE_2__ = type { i32 }

@bna_tx_sm_stop_wait = common dso_local global i32 0, align 4
@bna_tx_sm_failed = common dso_local global i32 0, align 4
@bna_tx_sm_prio_cleanup_wait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_tx*, i32)* @bna_tx_sm_prio_stop_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_tx_sm_prio_stop_wait(%struct.bna_tx* %0, i32 %1) #0 {
  %3 = alloca %struct.bna_tx*, align 8
  %4 = alloca i32, align 4
  store %struct.bna_tx* %0, %struct.bna_tx** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %29 [
    i32 129, label %6
    i32 130, label %10
    i32 128, label %24
    i32 131, label %28
  ]

6:                                                ; preds = %2
  %7 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %8 = load i32, i32* @bna_tx_sm_stop_wait, align 4
  %9 = call i32 @bfa_fsm_set_state(%struct.bna_tx* %7, i32 %8)
  br label %32

10:                                               ; preds = %2
  %11 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %12 = load i32, i32* @bna_tx_sm_failed, align 4
  %13 = call i32 @bfa_fsm_set_state(%struct.bna_tx* %11, i32 %12)
  %14 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %15 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %14, i32 0, i32 1
  %16 = load i32 (i32, %struct.bna_tx*)*, i32 (i32, %struct.bna_tx*)** %15, align 8
  %17 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %18 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %23 = call i32 %16(i32 %21, %struct.bna_tx* %22)
  br label %32

24:                                               ; preds = %2
  %25 = load %struct.bna_tx*, %struct.bna_tx** %3, align 8
  %26 = load i32, i32* @bna_tx_sm_prio_cleanup_wait, align 4
  %27 = call i32 @bfa_fsm_set_state(%struct.bna_tx* %25, i32 %26)
  br label %32

28:                                               ; preds = %2
  br label %32

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @bfa_sm_fault(i32 %30)
  br label %32

32:                                               ; preds = %29, %28, %24, %10, %6
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
