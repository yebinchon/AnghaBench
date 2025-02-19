; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_tx.c_gve_dma_sync_for_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_tx.c_gve_dma_sync_for_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32*, i64, i64)* @gve_dma_sync_for_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gve_dma_sync_for_device(%struct.device* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %7, align 8
  store i64 %11, i64* %10, align 8
  br label %12

12:                                               ; preds = %30, %4
  %13 = load i64, i64* %10, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = add i64 %14, %15
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %12
  %19 = load i32*, i32** %6, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* @PAGE_SIZE, align 8
  %22 = udiv i64 %20, %21
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i64, i64* @PAGE_SIZE, align 8
  %28 = load i32, i32* @DMA_TO_DEVICE, align 4
  %29 = call i32 @dma_sync_single_for_device(%struct.device* %25, i32 %26, i64 %27, i32 %28)
  br label %30

30:                                               ; preds = %18
  %31 = load i64, i64* @PAGE_SIZE, align 8
  %32 = load i64, i64* %10, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %10, align 8
  br label %12

34:                                               ; preds = %12
  ret void
}

declare dso_local i32 @dma_sync_single_for_device(%struct.device*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
