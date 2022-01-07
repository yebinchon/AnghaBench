; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_dma.c_b43_engine_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_dma.c_b43_engine_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@B43_DMA32_TXCTL = common dso_local global i64 0, align 8
@B43_DMA32_TXADDREXT_MASK = common dso_local global i32 0, align 4
@B43_DMA_32BIT = common dso_local global i32 0, align 4
@B43_DMA_30BIT = common dso_local global i32 0, align 4
@B43_DMA_64BIT = common dso_local global i32 0, align 4
@BCMA_IOST = common dso_local global i32 0, align 4
@BCMA_IOST_DMA64 = common dso_local global i32 0, align 4
@SSB_TMSHIGH = common dso_local global i32 0, align 4
@SSB_TMSHIGH_DMA64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*)* @b43_engine_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_engine_type(%struct.b43_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %7 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %11 [
  ]

11:                                               ; preds = %1
  %12 = call i64 @b43_dmacontroller_base(i32 0, i32 0)
  store i64 %12, i64* %5, align 8
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @B43_DMA32_TXCTL, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i32, i32* @B43_DMA32_TXADDREXT_MASK, align 4
  %18 = call i32 @b43_write32(%struct.b43_wldev* %13, i64 %16, i32 %17)
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @B43_DMA32_TXCTL, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @b43_read32(%struct.b43_wldev* %19, i64 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @B43_DMA32_TXADDREXT_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %11
  %29 = load i32, i32* @B43_DMA_32BIT, align 4
  store i32 %29, i32* %2, align 4
  br label %32

30:                                               ; preds = %11
  %31 = load i32, i32* @B43_DMA_30BIT, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @b43_dmacontroller_base(i32, i32) #1

declare dso_local i32 @b43_write32(%struct.b43_wldev*, i64, i32) #1

declare dso_local i32 @b43_read32(%struct.b43_wldev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
