; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_rings_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_rings_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { %struct.TYPE_2__*, %struct.ag71xx_ring, %struct.ag71xx_ring }
%struct.TYPE_2__ = type { i32 }
%struct.ag71xx_ring = type { i64, i8*, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AG71XX_DESC_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ag71xx*)* @ag71xx_rings_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_rings_init(%struct.ag71xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ag71xx*, align 8
  %4 = alloca %struct.ag71xx_ring*, align 8
  %5 = alloca %struct.ag71xx_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ag71xx* %0, %struct.ag71xx** %3, align 8
  %8 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %9 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %8, i32 0, i32 2
  store %struct.ag71xx_ring* %9, %struct.ag71xx_ring** %4, align 8
  %10 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %11 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %10, i32 0, i32 1
  store %struct.ag71xx_ring* %11, %struct.ag71xx_ring** %5, align 8
  %12 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %13 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @BIT(i32 %14)
  %16 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %5, align 8
  %17 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @BIT(i32 %18)
  %20 = add nsw i32 %15, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %22 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @BIT(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32* @kcalloc(i32 %25, i32 4, i32 %26)
  %28 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %29 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %28, i32 0, i32 2
  store i32* %27, i32** %29, align 8
  %30 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %31 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %1
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %97

37:                                               ; preds = %1
  %38 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %39 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @AG71XX_DESC_SIZE, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %46 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %45, i32 0, i32 0
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i8* @dma_alloc_coherent(i32* %41, i32 %44, i64* %46, i32 %47)
  %49 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %50 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %52 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %64, label %55

55:                                               ; preds = %37
  %56 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %57 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @kfree(i32* %58)
  %60 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %61 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %60, i32 0, i32 2
  store i32* null, i32** %61, align 8
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %97

64:                                               ; preds = %37
  %65 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %66 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %5, align 8
  %72 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %71, i32 0, i32 2
  store i32* %70, i32** %72, align 8
  %73 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %74 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @AG71XX_DESC_SIZE, align 4
  %78 = mul nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr i8, i8* %75, i64 %79
  %81 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %5, align 8
  %82 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %84 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @AG71XX_DESC_SIZE, align 4
  %88 = mul nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %85, %89
  %91 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %5, align 8
  %92 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %94 = call i32 @ag71xx_ring_tx_init(%struct.ag71xx* %93)
  %95 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %96 = call i32 @ag71xx_ring_rx_init(%struct.ag71xx* %95)
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %64, %55, %34
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @ag71xx_ring_tx_init(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_ring_rx_init(%struct.ag71xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
