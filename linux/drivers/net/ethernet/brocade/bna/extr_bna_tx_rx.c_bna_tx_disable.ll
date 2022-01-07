; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_tx_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_tx_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_tx = type { void (i8*, %struct.bna_tx*)*, i8*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@BNA_SOFT_CLEANUP = common dso_local global i32 0, align 4
@BNA_TX_F_ENABLED = common dso_local global i32 0, align 4
@TX_E_STOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bna_tx_disable(%struct.bna_tx* %0, i32 %1, void (i8*, %struct.bna_tx*)* %2) #0 {
  %4 = alloca %struct.bna_tx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca void (i8*, %struct.bna_tx*)*, align 8
  store %struct.bna_tx* %0, %struct.bna_tx** %4, align 8
  store i32 %1, i32* %5, align 4
  store void (i8*, %struct.bna_tx*)* %2, void (i8*, %struct.bna_tx*)** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @BNA_SOFT_CLEANUP, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load void (i8*, %struct.bna_tx*)*, void (i8*, %struct.bna_tx*)** %6, align 8
  %12 = load %struct.bna_tx*, %struct.bna_tx** %4, align 8
  %13 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.bna_tx*, %struct.bna_tx** %4, align 8
  call void %11(i8* %16, %struct.bna_tx* %17)
  br label %38

18:                                               ; preds = %3
  %19 = load void (i8*, %struct.bna_tx*)*, void (i8*, %struct.bna_tx*)** %6, align 8
  %20 = load %struct.bna_tx*, %struct.bna_tx** %4, align 8
  %21 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %20, i32 0, i32 0
  store void (i8*, %struct.bna_tx*)* %19, void (i8*, %struct.bna_tx*)** %21, align 8
  %22 = load %struct.bna_tx*, %struct.bna_tx** %4, align 8
  %23 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.bna_tx*, %struct.bna_tx** %4, align 8
  %28 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @BNA_TX_F_ENABLED, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.bna_tx*, %struct.bna_tx** %4, align 8
  %32 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.bna_tx*, %struct.bna_tx** %4, align 8
  %36 = load i32, i32* @TX_E_STOP, align 4
  %37 = call i32 @bfa_fsm_send_event(%struct.bna_tx* %35, i32 %36)
  br label %38

38:                                               ; preds = %18, %10
  ret void
}

declare dso_local i32 @bfa_fsm_send_event(%struct.bna_tx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
