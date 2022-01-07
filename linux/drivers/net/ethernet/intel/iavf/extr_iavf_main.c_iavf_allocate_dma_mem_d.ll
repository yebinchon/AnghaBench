; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_allocate_dma_mem_d.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_allocate_dma_mem_d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_hw = type { i64 }
%struct.iavf_dma_mem = type { i64, i32, i32 }
%struct.iavf_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IAVF_ERR_PARAM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IAVF_ERR_NO_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iavf_allocate_dma_mem_d(%struct.iavf_hw* %0, %struct.iavf_dma_mem* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iavf_hw*, align 8
  %7 = alloca %struct.iavf_dma_mem*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iavf_adapter*, align 8
  store %struct.iavf_hw* %0, %struct.iavf_hw** %6, align 8
  store %struct.iavf_dma_mem* %1, %struct.iavf_dma_mem** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.iavf_hw*, %struct.iavf_hw** %6, align 8
  %12 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.iavf_adapter*
  store %struct.iavf_adapter* %14, %struct.iavf_adapter** %10, align 8
  %15 = load %struct.iavf_dma_mem*, %struct.iavf_dma_mem** %7, align 8
  %16 = icmp ne %struct.iavf_dma_mem* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @IAVF_ERR_PARAM, align 4
  store i32 %18, i32* %5, align 4
  br label %45

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @ALIGN(i32 %20, i32 %21)
  %23 = load %struct.iavf_dma_mem*, %struct.iavf_dma_mem** %7, align 8
  %24 = getelementptr inbounds %struct.iavf_dma_mem, %struct.iavf_dma_mem* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.iavf_adapter*, %struct.iavf_adapter** %10, align 8
  %26 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.iavf_dma_mem*, %struct.iavf_dma_mem** %7, align 8
  %30 = getelementptr inbounds %struct.iavf_dma_mem, %struct.iavf_dma_mem* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.iavf_dma_mem*, %struct.iavf_dma_mem** %7, align 8
  %33 = getelementptr inbounds %struct.iavf_dma_mem, %struct.iavf_dma_mem* %32, i32 0, i32 1
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i64 @dma_alloc_coherent(i32* %28, i32 %31, i32* %33, i32 %34)
  %36 = load %struct.iavf_dma_mem*, %struct.iavf_dma_mem** %7, align 8
  %37 = getelementptr inbounds %struct.iavf_dma_mem, %struct.iavf_dma_mem* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.iavf_dma_mem*, %struct.iavf_dma_mem** %7, align 8
  %39 = getelementptr inbounds %struct.iavf_dma_mem, %struct.iavf_dma_mem* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %45

43:                                               ; preds = %19
  %44 = load i32, i32* @IAVF_ERR_NO_MEMORY, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %43, %42, %17
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i64 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
