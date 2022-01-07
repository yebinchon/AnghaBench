; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_rxq_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_rxq_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32 }
%struct.bna_rcb = type { i32, %struct.bnad_rx_unmap_q* }
%struct.bnad_rx_unmap_q = type { i32 }

@BNAD_RXQ_REFILL_THRESHOLD_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnad*, %struct.bna_rcb*)* @bnad_rxq_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnad_rxq_post(%struct.bnad* %0, %struct.bna_rcb* %1) #0 {
  %3 = alloca %struct.bnad*, align 8
  %4 = alloca %struct.bna_rcb*, align 8
  %5 = alloca %struct.bnad_rx_unmap_q*, align 8
  %6 = alloca i32, align 4
  store %struct.bnad* %0, %struct.bnad** %3, align 8
  store %struct.bna_rcb* %1, %struct.bna_rcb** %4, align 8
  %7 = load %struct.bna_rcb*, %struct.bna_rcb** %4, align 8
  %8 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %7, i32 0, i32 1
  %9 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %8, align 8
  store %struct.bnad_rx_unmap_q* %9, %struct.bnad_rx_unmap_q** %5, align 8
  %10 = load %struct.bna_rcb*, %struct.bna_rcb** %4, align 8
  %11 = load %struct.bna_rcb*, %struct.bna_rcb** %4, align 8
  %12 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @BNA_QE_FREE_CNT(%struct.bna_rcb* %10, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @BNAD_RXQ_REFILL_THRESHOLD_SHIFT, align 4
  %17 = ashr i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %36

20:                                               ; preds = %2
  %21 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %5, align 8
  %22 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @BNAD_RXBUF_IS_SK_BUFF(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.bnad*, %struct.bnad** %3, align 8
  %28 = load %struct.bna_rcb*, %struct.bna_rcb** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @bnad_rxq_refill_skb(%struct.bnad* %27, %struct.bna_rcb* %28, i32 %29)
  br label %36

31:                                               ; preds = %20
  %32 = load %struct.bnad*, %struct.bnad** %3, align 8
  %33 = load %struct.bna_rcb*, %struct.bna_rcb** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @bnad_rxq_refill_page(%struct.bnad* %32, %struct.bna_rcb* %33, i32 %34)
  br label %36

36:                                               ; preds = %19, %31, %26
  ret void
}

declare dso_local i32 @BNA_QE_FREE_CNT(%struct.bna_rcb*, i32) #1

declare dso_local i64 @BNAD_RXBUF_IS_SK_BUFF(i32) #1

declare dso_local i32 @bnad_rxq_refill_skb(%struct.bnad*, %struct.bna_rcb*, i32) #1

declare dso_local i32 @bnad_rxq_refill_page(%struct.bnad*, %struct.bna_rcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
