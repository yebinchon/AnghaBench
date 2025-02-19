; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_dma_pool_zalloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_dma_pool_zalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }

@GOYA_DMA_POOL_BLK_SIZE = common dso_local global i64 0, align 8
@HOST_PHYS_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.hl_device*, i64, i32, i32*)* @goya_dma_pool_zalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @goya_dma_pool_zalloc(%struct.hl_device* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hl_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store %struct.hl_device* %0, %struct.hl_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @GOYA_DMA_POOL_BLK_SIZE, align 8
  %13 = icmp ugt i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %33

15:                                               ; preds = %4
  %16 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %17 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = call i8* @dma_pool_zalloc(i32 %18, i32 %19, i32* %20)
  store i8* %21, i8** %10, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %15
  %25 = load i64, i64* @HOST_PHYS_BASE, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %25
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %26, align 4
  br label %31

31:                                               ; preds = %24, %15
  %32 = load i8*, i8** %10, align 8
  store i8* %32, i8** %5, align 8
  br label %33

33:                                               ; preds = %31, %14
  %34 = load i8*, i8** %5, align 8
  ret i8* %34
}

declare dso_local i8* @dma_pool_zalloc(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
