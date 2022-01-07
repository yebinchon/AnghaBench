; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_rxq_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_rxq_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32 }
%struct.bna_rcb = type { i32, %struct.bnad_rx_unmap_q* }
%struct.bnad_rx_unmap_q = type { i32, %struct.bnad_rx_unmap* }
%struct.bnad_rx_unmap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnad*, %struct.bna_rcb*)* @bnad_rxq_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnad_rxq_cleanup(%struct.bnad* %0, %struct.bna_rcb* %1) #0 {
  %3 = alloca %struct.bnad*, align 8
  %4 = alloca %struct.bna_rcb*, align 8
  %5 = alloca %struct.bnad_rx_unmap_q*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnad_rx_unmap*, align 8
  store %struct.bnad* %0, %struct.bnad** %3, align 8
  store %struct.bna_rcb* %1, %struct.bna_rcb** %4, align 8
  %8 = load %struct.bna_rcb*, %struct.bna_rcb** %4, align 8
  %9 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %8, i32 0, i32 1
  %10 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %9, align 8
  store %struct.bnad_rx_unmap_q* %10, %struct.bnad_rx_unmap_q** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %38, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.bna_rcb*, %struct.bna_rcb** %4, align 8
  %14 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %11
  %18 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %5, align 8
  %19 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %18, i32 0, i32 1
  %20 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %20, i64 %22
  store %struct.bnad_rx_unmap* %23, %struct.bnad_rx_unmap** %7, align 8
  %24 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %5, align 8
  %25 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @BNAD_RXBUF_IS_SK_BUFF(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %17
  %30 = load %struct.bnad*, %struct.bnad** %3, align 8
  %31 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %7, align 8
  %32 = call i32 @bnad_rxq_cleanup_skb(%struct.bnad* %30, %struct.bnad_rx_unmap* %31)
  br label %37

33:                                               ; preds = %17
  %34 = load %struct.bnad*, %struct.bnad** %3, align 8
  %35 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %7, align 8
  %36 = call i32 @bnad_rxq_cleanup_page(%struct.bnad* %34, %struct.bnad_rx_unmap* %35)
  br label %37

37:                                               ; preds = %33, %29
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %11

41:                                               ; preds = %11
  %42 = load %struct.bnad*, %struct.bnad** %3, align 8
  %43 = load %struct.bna_rcb*, %struct.bna_rcb** %4, align 8
  %44 = call i32 @bnad_rxq_alloc_uninit(%struct.bnad* %42, %struct.bna_rcb* %43)
  ret void
}

declare dso_local i64 @BNAD_RXBUF_IS_SK_BUFF(i32) #1

declare dso_local i32 @bnad_rxq_cleanup_skb(%struct.bnad*, %struct.bnad_rx_unmap*) #1

declare dso_local i32 @bnad_rxq_cleanup_page(%struct.bnad*, %struct.bnad_rx_unmap*) #1

declare dso_local i32 @bnad_rxq_alloc_uninit(%struct.bnad*, %struct.bna_rcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
