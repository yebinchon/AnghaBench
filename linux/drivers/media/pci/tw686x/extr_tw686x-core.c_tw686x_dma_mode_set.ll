; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-core.c_tw686x_dma_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-core.c_tw686x_dma_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_param = type { i32 }

@TW686X_DMA_MODE_MEMCPY = common dso_local global i32 0, align 4
@dma_mode = common dso_local global i32 0, align 4
@TW686X_DMA_MODE_CONTIG = common dso_local global i32 0, align 4
@TW686X_DMA_MODE_SG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.kernel_param*)* @tw686x_dma_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw686x_dma_mode_set(i8* %0, %struct.kernel_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kernel_param*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.kernel_param* %1, %struct.kernel_param** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i32, i32* @TW686X_DMA_MODE_MEMCPY, align 4
  %8 = call i32 @dma_mode_name(i32 %7)
  %9 = call i32 @strcasecmp(i8* %6, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @TW686X_DMA_MODE_MEMCPY, align 4
  store i32 %12, i32* @dma_mode, align 4
  br label %34

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* @TW686X_DMA_MODE_CONTIG, align 4
  %16 = call i32 @dma_mode_name(i32 %15)
  %17 = call i32 @strcasecmp(i8* %14, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @TW686X_DMA_MODE_CONTIG, align 4
  store i32 %20, i32* @dma_mode, align 4
  br label %33

21:                                               ; preds = %13
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* @TW686X_DMA_MODE_SG, align 4
  %24 = call i32 @dma_mode_name(i32 %23)
  %25 = call i32 @strcasecmp(i8* %22, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @TW686X_DMA_MODE_SG, align 4
  store i32 %28, i32* @dma_mode, align 4
  br label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %35

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32, %19
  br label %34

34:                                               ; preds = %33, %11
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %29
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @strcasecmp(i8*, i32) #1

declare dso_local i32 @dma_mode_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
