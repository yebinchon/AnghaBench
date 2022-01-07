; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_hfi_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.mem_desc = type { i32, i32, i32, i32 }

@DMA_ATTR_WRITE_COMBINE = common dso_local global i32 0, align 4
@SZ_4K = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_hfi_device*, %struct.mem_desc*, i32)* @venus_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venus_alloc(%struct.venus_hfi_device* %0, %struct.mem_desc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.venus_hfi_device*, align 8
  %6 = alloca %struct.mem_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  store %struct.venus_hfi_device* %0, %struct.venus_hfi_device** %5, align 8
  store %struct.mem_desc* %1, %struct.mem_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %5, align 8
  %10 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %8, align 8
  %14 = load i32, i32* @DMA_ATTR_WRITE_COMBINE, align 4
  %15 = load %struct.mem_desc*, %struct.mem_desc** %6, align 8
  %16 = getelementptr inbounds %struct.mem_desc, %struct.mem_desc* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @SZ_4K, align 4
  %19 = call i32 @ALIGN(i32 %17, i32 %18)
  %20 = load %struct.mem_desc*, %struct.mem_desc** %6, align 8
  %21 = getelementptr inbounds %struct.mem_desc, %struct.mem_desc* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.device*, %struct.device** %8, align 8
  %23 = load %struct.mem_desc*, %struct.mem_desc** %6, align 8
  %24 = getelementptr inbounds %struct.mem_desc, %struct.mem_desc* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mem_desc*, %struct.mem_desc** %6, align 8
  %27 = getelementptr inbounds %struct.mem_desc, %struct.mem_desc* %26, i32 0, i32 2
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = load %struct.mem_desc*, %struct.mem_desc** %6, align 8
  %30 = getelementptr inbounds %struct.mem_desc, %struct.mem_desc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dma_alloc_attrs(%struct.device* %22, i32 %25, i32* %27, i32 %28, i32 %31)
  %33 = load %struct.mem_desc*, %struct.mem_desc** %6, align 8
  %34 = getelementptr inbounds %struct.mem_desc, %struct.mem_desc* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.mem_desc*, %struct.mem_desc** %6, align 8
  %36 = getelementptr inbounds %struct.mem_desc, %struct.mem_desc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %3
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %43

42:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dma_alloc_attrs(%struct.device*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
