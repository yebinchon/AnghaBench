; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_free_txbdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_free_txbdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_bdr = type { i32, i32*, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enetc_bdr*)* @enetc_free_txbdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enetc_free_txbdr(%struct.enetc_bdr* %0) #0 {
  %2 = alloca %struct.enetc_bdr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.enetc_bdr* %0, %struct.enetc_bdr** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.enetc_bdr*, %struct.enetc_bdr** %2, align 8
  %8 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %5
  %12 = load %struct.enetc_bdr*, %struct.enetc_bdr** %2, align 8
  %13 = load %struct.enetc_bdr*, %struct.enetc_bdr** %2, align 8
  %14 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = call i32 @enetc_free_tx_skb(%struct.enetc_bdr* %12, i32* %18)
  br label %20

20:                                               ; preds = %11
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %5

23:                                               ; preds = %5
  %24 = load %struct.enetc_bdr*, %struct.enetc_bdr** %2, align 8
  %25 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %3, align 4
  %30 = load %struct.enetc_bdr*, %struct.enetc_bdr** %2, align 8
  %31 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.enetc_bdr*, %struct.enetc_bdr** %2, align 8
  %35 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.enetc_bdr*, %struct.enetc_bdr** %2, align 8
  %38 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dma_free_coherent(i32 %32, i32 %33, i32* %36, i32 %39)
  %41 = load %struct.enetc_bdr*, %struct.enetc_bdr** %2, align 8
  %42 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %41, i32 0, i32 2
  store i32* null, i32** %42, align 8
  %43 = load %struct.enetc_bdr*, %struct.enetc_bdr** %2, align 8
  %44 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @vfree(i32* %45)
  %47 = load %struct.enetc_bdr*, %struct.enetc_bdr** %2, align 8
  %48 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %47, i32 0, i32 1
  store i32* null, i32** %48, align 8
  ret void
}

declare dso_local i32 @enetc_free_tx_skb(%struct.enetc_bdr*, i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
