; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_dma.c_direct_fifo_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_dma.c_direct_fifo_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@B43_DMA_64BIT = common dso_local global i32 0, align 4
@B43_DMA64_RXCTL = common dso_local global i64 0, align 8
@B43_DMA64_RXDIRECTFIFO = common dso_local global i32 0, align 4
@B43_DMA32_RXCTL = common dso_local global i64 0, align 8
@B43_DMA32_RXDIRECTFIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32, i64, i32)* @direct_fifo_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @direct_fifo_rx(%struct.b43_wldev* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @B43_DMA_64BIT, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %4
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @B43_DMA64_RXCTL, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @b43_read32(%struct.b43_wldev* %14, i64 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* @B43_DMA64_RXDIRECTFIFO, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %13
  %26 = load i32, i32* @B43_DMA64_RXDIRECTFIFO, align 4
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %25, %13
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @B43_DMA64_RXCTL, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @b43_write32(%struct.b43_wldev* %30, i64 %33, i32 %34)
  br label %59

36:                                               ; preds = %4
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @B43_DMA32_RXCTL, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @b43_read32(%struct.b43_wldev* %37, i64 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* @B43_DMA32_RXDIRECTFIFO, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %36
  %49 = load i32, i32* @B43_DMA32_RXDIRECTFIFO, align 4
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %48, %36
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* @B43_DMA32_RXCTL, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @b43_write32(%struct.b43_wldev* %53, i64 %56, i32 %57)
  br label %59

59:                                               ; preds = %52, %29
  ret void
}

declare dso_local i32 @b43_read32(%struct.b43_wldev*, i64) #1

declare dso_local i32 @b43_write32(%struct.b43_wldev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
