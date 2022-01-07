; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_rx_prodring_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_rx_prodring_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.tg3_rx_prodring_set = type { i32*, i32, i32*, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*, %struct.tg3_rx_prodring_set*)* @tg3_rx_prodring_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_rx_prodring_fini(%struct.tg3* %0, %struct.tg3_rx_prodring_set* %1) #0 {
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca %struct.tg3_rx_prodring_set*, align 8
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  store %struct.tg3_rx_prodring_set* %1, %struct.tg3_rx_prodring_set** %4, align 8
  %5 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %4, align 8
  %6 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %5, i32 0, i32 5
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 @kfree(i32* %7)
  %9 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %4, align 8
  %10 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %9, i32 0, i32 5
  store i32* null, i32** %10, align 8
  %11 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %4, align 8
  %12 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @kfree(i32* %13)
  %15 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %4, align 8
  %16 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %15, i32 0, i32 4
  store i32* null, i32** %16, align 8
  %17 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %4, align 8
  %18 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %2
  %22 = load %struct.tg3*, %struct.tg3** %3, align 8
  %23 = getelementptr inbounds %struct.tg3, %struct.tg3* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.tg3*, %struct.tg3** %3, align 8
  %27 = call i32 @TG3_RX_STD_RING_BYTES(%struct.tg3* %26)
  %28 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %4, align 8
  %29 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %4, align 8
  %32 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dma_free_coherent(i32* %25, i32 %27, i32* %30, i32 %33)
  %35 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %4, align 8
  %36 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %35, i32 0, i32 2
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %21, %2
  %38 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %4, align 8
  %39 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %58

42:                                               ; preds = %37
  %43 = load %struct.tg3*, %struct.tg3** %3, align 8
  %44 = getelementptr inbounds %struct.tg3, %struct.tg3* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load %struct.tg3*, %struct.tg3** %3, align 8
  %48 = call i32 @TG3_RX_JMB_RING_BYTES(%struct.tg3* %47)
  %49 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %4, align 8
  %50 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %4, align 8
  %53 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dma_free_coherent(i32* %46, i32 %48, i32* %51, i32 %54)
  %56 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %4, align 8
  %57 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %56, i32 0, i32 0
  store i32* null, i32** %57, align 8
  br label %58

58:                                               ; preds = %42, %37
  ret void
}

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @TG3_RX_STD_RING_BYTES(%struct.tg3*) #1

declare dso_local i32 @TG3_RX_JMB_RING_BYTES(%struct.tg3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
