; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_rx_refill_edma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_rx_refill_edma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { %struct.wil_ring }
%struct.wil_ring = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"No free buffer ID found\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Error %d in refill desc[%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wil6210_priv*)* @wil_rx_refill_edma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_rx_refill_edma(%struct.wil6210_priv* %0) #0 {
  %2 = alloca %struct.wil6210_priv*, align 8
  %3 = alloca %struct.wil_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %2, align 8
  %6 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %7 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %6, i32 0, i32 0
  store %struct.wil_ring* %7, %struct.wil_ring** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.wil_ring*, %struct.wil_ring** %3, align 8
  %9 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.wil_ring*, %struct.wil_ring** %3, align 8
  %14 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  br label %15

15:                                               ; preds = %50, %1
  %16 = load %struct.wil_ring*, %struct.wil_ring** %3, align 8
  %17 = call i32 @wil_ring_next_head(%struct.wil_ring* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.wil_ring*, %struct.wil_ring** %3, align 8
  %20 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %18, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %15
  %24 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %25 = load %struct.wil_ring*, %struct.wil_ring** %3, align 8
  %26 = load %struct.wil_ring*, %struct.wil_ring** %3, align 8
  %27 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @wil_ring_alloc_skb_edma(%struct.wil6210_priv* %24, %struct.wil_ring* %25, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %23
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @EAGAIN, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %40 = call i32 @wil_dbg_txrx(%struct.wil6210_priv* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %48

41:                                               ; preds = %33
  %42 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.wil_ring*, %struct.wil_ring** %3, align 8
  %45 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @wil_err_ratelimited(%struct.wil6210_priv* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %41, %38
  br label %54

49:                                               ; preds = %23
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.wil_ring*, %struct.wil_ring** %3, align 8
  %53 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %15

54:                                               ; preds = %48, %15
  %55 = call i32 (...) @wmb()
  %56 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %57 = load %struct.wil_ring*, %struct.wil_ring** %3, align 8
  %58 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.wil_ring*, %struct.wil_ring** %3, align 8
  %61 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @wil_w(%struct.wil6210_priv* %56, i32 %59, i32 %62)
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @wil_ring_next_head(%struct.wil_ring*) #1

declare dso_local i32 @wil_ring_alloc_skb_edma(%struct.wil6210_priv*, %struct.wil_ring*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wil_dbg_txrx(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @wil_err_ratelimited(%struct.wil6210_priv*, i8*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @wil_w(%struct.wil6210_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
