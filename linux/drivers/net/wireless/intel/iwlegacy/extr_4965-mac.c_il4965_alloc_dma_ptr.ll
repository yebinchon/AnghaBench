; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_alloc_dma_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_alloc_dma_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.il_dma_ptr = type { i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, %struct.il_dma_ptr*, i64)* @il4965_alloc_dma_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_alloc_dma_ptr(%struct.il_priv* %0, %struct.il_dma_ptr* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.il_priv*, align 8
  %6 = alloca %struct.il_dma_ptr*, align 8
  %7 = alloca i64, align 8
  store %struct.il_priv* %0, %struct.il_priv** %5, align 8
  store %struct.il_dma_ptr* %1, %struct.il_dma_ptr** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %9 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.il_dma_ptr*, %struct.il_dma_ptr** %6, align 8
  %14 = getelementptr inbounds %struct.il_dma_ptr, %struct.il_dma_ptr* %13, i32 0, i32 2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32 @dma_alloc_coherent(i32* %11, i64 %12, i32* %14, i32 %15)
  %17 = load %struct.il_dma_ptr*, %struct.il_dma_ptr** %6, align 8
  %18 = getelementptr inbounds %struct.il_dma_ptr, %struct.il_dma_ptr* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.il_dma_ptr*, %struct.il_dma_ptr** %6, align 8
  %20 = getelementptr inbounds %struct.il_dma_ptr, %struct.il_dma_ptr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %30

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.il_dma_ptr*, %struct.il_dma_ptr** %6, align 8
  %29 = getelementptr inbounds %struct.il_dma_ptr, %struct.il_dma_ptr* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @dma_alloc_coherent(i32*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
