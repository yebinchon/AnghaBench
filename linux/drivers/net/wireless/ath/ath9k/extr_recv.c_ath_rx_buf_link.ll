; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_recv.c_ath_rx_buf_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_recv.c_ath_rx_buf_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_2__, %struct.ath_hw* }
%struct.TYPE_2__ = type { i64* }
%struct.ath_hw = type { i32 }
%struct.ath_rxbuf = type { i64, %struct.sk_buff*, i32, %struct.ath_desc* }
%struct.sk_buff = type { i32 }
%struct.ath_desc = type { i64, i32, i32 }
%struct.ath_common = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ath_rxbuf*, i32)* @ath_rx_buf_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_rx_buf_link(%struct.ath_softc* %0, %struct.ath_rxbuf* %1, i32 %2) #0 {
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca %struct.ath_rxbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath_hw*, align 8
  %8 = alloca %struct.ath_common*, align 8
  %9 = alloca %struct.ath_desc*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store %struct.ath_rxbuf* %1, %struct.ath_rxbuf** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %12 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %11, i32 0, i32 1
  %13 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  store %struct.ath_hw* %13, %struct.ath_hw** %7, align 8
  %14 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %15 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %14)
  store %struct.ath_common* %15, %struct.ath_common** %8, align 8
  %16 = load %struct.ath_rxbuf*, %struct.ath_rxbuf** %5, align 8
  %17 = getelementptr inbounds %struct.ath_rxbuf, %struct.ath_rxbuf* %16, i32 0, i32 3
  %18 = load %struct.ath_desc*, %struct.ath_desc** %17, align 8
  store %struct.ath_desc* %18, %struct.ath_desc** %9, align 8
  %19 = load %struct.ath_desc*, %struct.ath_desc** %9, align 8
  %20 = getelementptr inbounds %struct.ath_desc, %struct.ath_desc* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.ath_rxbuf*, %struct.ath_rxbuf** %5, align 8
  %22 = getelementptr inbounds %struct.ath_rxbuf, %struct.ath_rxbuf* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ath_desc*, %struct.ath_desc** %9, align 8
  %25 = getelementptr inbounds %struct.ath_desc, %struct.ath_desc* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ath_rxbuf*, %struct.ath_rxbuf** %5, align 8
  %27 = getelementptr inbounds %struct.ath_rxbuf, %struct.ath_rxbuf* %26, i32 0, i32 1
  %28 = load %struct.sk_buff*, %struct.sk_buff** %27, align 8
  store %struct.sk_buff* %28, %struct.sk_buff** %10, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %30 = icmp eq %struct.sk_buff* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ath_desc*, %struct.ath_desc** %9, align 8
  %37 = getelementptr inbounds %struct.ath_desc, %struct.ath_desc* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %39 = load %struct.ath_desc*, %struct.ath_desc** %9, align 8
  %40 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %41 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ath9k_hw_setuprxdesc(%struct.ath_hw* %38, %struct.ath_desc* %39, i32 %42, i32 0)
  %44 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %45 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = icmp ne i64* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %3
  %50 = load %struct.ath_rxbuf*, %struct.ath_rxbuf** %5, align 8
  %51 = getelementptr inbounds %struct.ath_rxbuf, %struct.ath_rxbuf* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %54 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  store i64 %52, i64* %56, align 8
  br label %67

57:                                               ; preds = %3
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %62 = load %struct.ath_rxbuf*, %struct.ath_rxbuf** %5, align 8
  %63 = getelementptr inbounds %struct.ath_rxbuf, %struct.ath_rxbuf* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @ath9k_hw_putrxbuf(%struct.ath_hw* %61, i64 %64)
  br label %66

66:                                               ; preds = %60, %57
  br label %67

67:                                               ; preds = %66, %49
  %68 = load %struct.ath_desc*, %struct.ath_desc** %9, align 8
  %69 = getelementptr inbounds %struct.ath_desc, %struct.ath_desc* %68, i32 0, i32 0
  %70 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %71 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i64* %69, i64** %72, align 8
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ath9k_hw_setuprxdesc(%struct.ath_hw*, %struct.ath_desc*, i32, i32) #1

declare dso_local i32 @ath9k_hw_putrxbuf(%struct.ath_hw*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
