; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_pio.c_b43_setup_pioqueue_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_pio.c_b43_setup_pioqueue_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_pio_rxqueue = type { i64, i32, %struct.b43_wldev* }
%struct.b43_wldev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.b43_pio_rxqueue* (%struct.b43_wldev*, i32)* @b43_setup_pioqueue_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.b43_pio_rxqueue* @b43_setup_pioqueue_rx(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_pio_rxqueue*, align 8
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.b43_pio_rxqueue*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.b43_pio_rxqueue* @kzalloc(i32 24, i32 %7)
  store %struct.b43_pio_rxqueue* %8, %struct.b43_pio_rxqueue** %6, align 8
  %9 = load %struct.b43_pio_rxqueue*, %struct.b43_pio_rxqueue** %6, align 8
  %10 = icmp ne %struct.b43_pio_rxqueue* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.b43_pio_rxqueue* null, %struct.b43_pio_rxqueue** %3, align 8
  br label %35

12:                                               ; preds = %2
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %14 = load %struct.b43_pio_rxqueue*, %struct.b43_pio_rxqueue** %6, align 8
  %15 = getelementptr inbounds %struct.b43_pio_rxqueue, %struct.b43_pio_rxqueue* %14, i32 0, i32 2
  store %struct.b43_wldev* %13, %struct.b43_wldev** %15, align 8
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %17 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.b43_pio_rxqueue*, %struct.b43_pio_rxqueue** %6, align 8
  %22 = getelementptr inbounds %struct.b43_pio_rxqueue, %struct.b43_pio_rxqueue* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @index_to_pioqueue_base(%struct.b43_wldev* %23, i32 %24)
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %27 = call i64 @pio_rxqueue_offset(%struct.b43_wldev* %26)
  %28 = add nsw i64 %25, %27
  %29 = load %struct.b43_pio_rxqueue*, %struct.b43_pio_rxqueue** %6, align 8
  %30 = getelementptr inbounds %struct.b43_pio_rxqueue, %struct.b43_pio_rxqueue* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @b43_dma_direct_fifo_rx(%struct.b43_wldev* %31, i32 %32, i32 1)
  %34 = load %struct.b43_pio_rxqueue*, %struct.b43_pio_rxqueue** %6, align 8
  store %struct.b43_pio_rxqueue* %34, %struct.b43_pio_rxqueue** %3, align 8
  br label %35

35:                                               ; preds = %12, %11
  %36 = load %struct.b43_pio_rxqueue*, %struct.b43_pio_rxqueue** %3, align 8
  ret %struct.b43_pio_rxqueue* %36
}

declare dso_local %struct.b43_pio_rxqueue* @kzalloc(i32, i32) #1

declare dso_local i64 @index_to_pioqueue_base(%struct.b43_wldev*, i32) #1

declare dso_local i64 @pio_rxqueue_offset(%struct.b43_wldev*) #1

declare dso_local i32 @b43_dma_direct_fifo_rx(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
