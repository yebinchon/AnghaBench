; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_spi.c_qcaspi_flush_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_spi.c_qcaspi_flush_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcaspi = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i32** }

@TX_RING_MAX_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcaspi*)* @qcaspi_flush_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcaspi_flush_tx_ring(%struct.qcaspi* %0) #0 {
  %2 = alloca %struct.qcaspi*, align 8
  %3 = alloca i32, align 4
  store %struct.qcaspi* %0, %struct.qcaspi** %2, align 8
  %4 = load %struct.qcaspi*, %struct.qcaspi** %2, align 8
  %5 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %4, i32 0, i32 0
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %7 = call i32 @netif_tx_lock_bh(%struct.TYPE_7__* %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %47, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @TX_RING_MAX_LEN, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %50

12:                                               ; preds = %8
  %13 = load %struct.qcaspi*, %struct.qcaspi** %2, align 8
  %14 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 3
  %16 = load i32**, i32*** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32*, i32** %16, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %46

22:                                               ; preds = %12
  %23 = load %struct.qcaspi*, %struct.qcaspi** %2, align 8
  %24 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  %26 = load i32**, i32*** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @dev_kfree_skb(i32* %30)
  %32 = load %struct.qcaspi*, %struct.qcaspi** %2, align 8
  %33 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  store i32* null, i32** %38, align 8
  %39 = load %struct.qcaspi*, %struct.qcaspi** %2, align 8
  %40 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %22, %12
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %8

50:                                               ; preds = %8
  %51 = load %struct.qcaspi*, %struct.qcaspi** %2, align 8
  %52 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load %struct.qcaspi*, %struct.qcaspi** %2, align 8
  %55 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.qcaspi*, %struct.qcaspi** %2, align 8
  %58 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load %struct.qcaspi*, %struct.qcaspi** %2, align 8
  %61 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = call i32 @netif_tx_unlock_bh(%struct.TYPE_7__* %62)
  ret void
}

declare dso_local i32 @netif_tx_lock_bh(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @netif_tx_unlock_bh(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
