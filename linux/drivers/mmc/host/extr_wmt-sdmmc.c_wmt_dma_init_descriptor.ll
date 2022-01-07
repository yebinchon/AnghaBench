; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wmt-sdmmc.c_wmt_dma_init_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wmt-sdmmc.c_wmt_dma_init_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmt_dma_descriptor = type { i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wmt_dma_descriptor*, i32, i8*, i8*, i32)* @wmt_dma_init_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wmt_dma_init_descriptor(%struct.wmt_dma_descriptor* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.wmt_dma_descriptor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.wmt_dma_descriptor* %0, %struct.wmt_dma_descriptor** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = or i32 1073741824, %11
  %13 = load %struct.wmt_dma_descriptor*, %struct.wmt_dma_descriptor** %6, align 8
  %14 = getelementptr inbounds %struct.wmt_dma_descriptor, %struct.wmt_dma_descriptor* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %5
  %18 = load %struct.wmt_dma_descriptor*, %struct.wmt_dma_descriptor** %6, align 8
  %19 = getelementptr inbounds %struct.wmt_dma_descriptor, %struct.wmt_dma_descriptor* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, -2147483648
  store i32 %21, i32* %19, align 8
  br label %22

22:                                               ; preds = %17, %5
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.wmt_dma_descriptor*, %struct.wmt_dma_descriptor** %6, align 8
  %25 = getelementptr inbounds %struct.wmt_dma_descriptor, %struct.wmt_dma_descriptor* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load %struct.wmt_dma_descriptor*, %struct.wmt_dma_descriptor** %6, align 8
  %28 = getelementptr inbounds %struct.wmt_dma_descriptor, %struct.wmt_dma_descriptor* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
