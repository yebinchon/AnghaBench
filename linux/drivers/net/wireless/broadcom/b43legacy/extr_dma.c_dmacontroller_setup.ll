; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_dma.c_dmacontroller_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_dma.c_dmacontroller_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_dmaring = type { i32, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SSB_DMA_TRANSLATION_MASK = common dso_local global i32 0, align 4
@SSB_DMA_TRANSLATION_SHIFT = common dso_local global i32 0, align 4
@B43legacy_DMA32_TXENABLE = common dso_local global i32 0, align 4
@B43legacy_DMA32_TXADDREXT_SHIFT = common dso_local global i32 0, align 4
@B43legacy_DMA32_TXADDREXT_MASK = common dso_local global i32 0, align 4
@B43legacy_DMA32_TXCTL = common dso_local global i32 0, align 4
@B43legacy_DMA32_TXRING = common dso_local global i32 0, align 4
@B43legacy_DMA32_RXFROFF_SHIFT = common dso_local global i32 0, align 4
@B43legacy_DMA32_RXENABLE = common dso_local global i32 0, align 4
@B43legacy_DMA32_RXADDREXT_SHIFT = common dso_local global i32 0, align 4
@B43legacy_DMA32_RXADDREXT_MASK = common dso_local global i32 0, align 4
@B43legacy_DMA32_RXCTL = common dso_local global i32 0, align 4
@B43legacy_DMA32_RXRING = common dso_local global i32 0, align 4
@B43legacy_DMA32_RXINDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43legacy_dmaring*)* @dmacontroller_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmacontroller_setup(%struct.b43legacy_dmaring* %0) #0 {
  %2 = alloca %struct.b43legacy_dmaring*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b43legacy_dmaring* %0, %struct.b43legacy_dmaring** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %9 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %8, i32 0, i32 3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %15 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %18 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %1
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @SSB_DMA_TRANSLATION_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @SSB_DMA_TRANSLATION_SHIFT, align 4
  %26 = ashr i32 %24, %25
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @B43legacy_DMA32_TXENABLE, align 4
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @B43legacy_DMA32_TXADDREXT_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* @B43legacy_DMA32_TXADDREXT_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %36 = load i32, i32* @B43legacy_DMA32_TXCTL, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @b43legacy_dma_write(%struct.b43legacy_dmaring* %35, i32 %36, i32 %37)
  %39 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %40 = load i32, i32* @B43legacy_DMA32_TXRING, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @SSB_DMA_TRANSLATION_MASK, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @b43legacy_dma_write(%struct.b43legacy_dmaring* %39, i32 %40, i32 %46)
  br label %91

48:                                               ; preds = %1
  %49 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %50 = call i32 @alloc_initial_descbuffers(%struct.b43legacy_dmaring* %49)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %92

54:                                               ; preds = %48
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @SSB_DMA_TRANSLATION_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @SSB_DMA_TRANSLATION_SHIFT, align 4
  %59 = ashr i32 %57, %58
  store i32 %59, i32* %5, align 4
  %60 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %61 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @B43legacy_DMA32_RXFROFF_SHIFT, align 4
  %64 = shl i32 %62, %63
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* @B43legacy_DMA32_RXENABLE, align 4
  %66 = load i32, i32* %4, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @B43legacy_DMA32_RXADDREXT_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* @B43legacy_DMA32_RXADDREXT_MASK, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* %4, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %4, align 4
  %75 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %76 = load i32, i32* @B43legacy_DMA32_RXCTL, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @b43legacy_dma_write(%struct.b43legacy_dmaring* %75, i32 %76, i32 %77)
  %79 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %80 = load i32, i32* @B43legacy_DMA32_RXRING, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @SSB_DMA_TRANSLATION_MASK, align 4
  %83 = xor i32 %82, -1
  %84 = and i32 %81, %83
  %85 = load i32, i32* %6, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @b43legacy_dma_write(%struct.b43legacy_dmaring* %79, i32 %80, i32 %86)
  %88 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %89 = load i32, i32* @B43legacy_DMA32_RXINDEX, align 4
  %90 = call i32 @b43legacy_dma_write(%struct.b43legacy_dmaring* %88, i32 %89, i32 200)
  br label %91

91:                                               ; preds = %54, %21
  br label %92

92:                                               ; preds = %91, %53
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @b43legacy_dma_write(%struct.b43legacy_dmaring*, i32, i32) #1

declare dso_local i32 @alloc_initial_descbuffers(%struct.b43legacy_dmaring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
