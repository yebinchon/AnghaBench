; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_cb_tx_stall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_cb_tx_stall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32 }
%struct.bna_tx = type { i64 }
%struct.bnad_tx_info = type { %struct.bna_tcb** }
%struct.bna_tcb = type { i32, i32 }

@BNAD_MAX_TXQ_PER_TX = common dso_local global i32 0, align 4
@BNAD_TXQ_TX_STARTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnad*, %struct.bna_tx*)* @bnad_cb_tx_stall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnad_cb_tx_stall(%struct.bnad* %0, %struct.bna_tx* %1) #0 {
  %3 = alloca %struct.bnad*, align 8
  %4 = alloca %struct.bna_tx*, align 8
  %5 = alloca %struct.bnad_tx_info*, align 8
  %6 = alloca %struct.bna_tcb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnad* %0, %struct.bnad** %3, align 8
  store %struct.bna_tx* %1, %struct.bna_tx** %4, align 8
  %9 = load %struct.bna_tx*, %struct.bna_tx** %4, align 8
  %10 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.bnad_tx_info*
  store %struct.bnad_tx_info* %12, %struct.bnad_tx_info** %5, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %41, %2
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @BNAD_MAX_TXQ_PER_TX, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %13
  %18 = load %struct.bnad_tx_info*, %struct.bnad_tx_info** %5, align 8
  %19 = getelementptr inbounds %struct.bnad_tx_info, %struct.bnad_tx_info* %18, i32 0, i32 0
  %20 = load %struct.bna_tcb**, %struct.bna_tcb*** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.bna_tcb*, %struct.bna_tcb** %20, i64 %22
  %24 = load %struct.bna_tcb*, %struct.bna_tcb** %23, align 8
  store %struct.bna_tcb* %24, %struct.bna_tcb** %6, align 8
  %25 = load %struct.bna_tcb*, %struct.bna_tcb** %6, align 8
  %26 = icmp ne %struct.bna_tcb* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %17
  br label %41

28:                                               ; preds = %17
  %29 = load %struct.bna_tcb*, %struct.bna_tcb** %6, align 8
  %30 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @BNAD_TXQ_TX_STARTED, align 4
  %33 = load %struct.bna_tcb*, %struct.bna_tcb** %6, align 8
  %34 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %33, i32 0, i32 0
  %35 = call i32 @clear_bit(i32 %32, i32* %34)
  %36 = load %struct.bnad*, %struct.bnad** %3, align 8
  %37 = getelementptr inbounds %struct.bnad, %struct.bnad* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @netif_stop_subqueue(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %28, %27
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %13

44:                                               ; preds = %13
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @netif_stop_subqueue(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
