; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_free_dma_mem_d.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_free_dma_mem_d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_hw = type { i64 }
%struct.iavf_dma_mem = type { i64, i32, i32 }
%struct.iavf_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IAVF_ERR_PARAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iavf_free_dma_mem_d(%struct.iavf_hw* %0, %struct.iavf_dma_mem* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iavf_hw*, align 8
  %5 = alloca %struct.iavf_dma_mem*, align 8
  %6 = alloca %struct.iavf_adapter*, align 8
  store %struct.iavf_hw* %0, %struct.iavf_hw** %4, align 8
  store %struct.iavf_dma_mem* %1, %struct.iavf_dma_mem** %5, align 8
  %7 = load %struct.iavf_hw*, %struct.iavf_hw** %4, align 8
  %8 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.iavf_adapter*
  store %struct.iavf_adapter* %10, %struct.iavf_adapter** %6, align 8
  %11 = load %struct.iavf_dma_mem*, %struct.iavf_dma_mem** %5, align 8
  %12 = icmp ne %struct.iavf_dma_mem* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.iavf_dma_mem*, %struct.iavf_dma_mem** %5, align 8
  %15 = getelementptr inbounds %struct.iavf_dma_mem, %struct.iavf_dma_mem* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @IAVF_ERR_PARAM, align 4
  store i32 %19, i32* %3, align 4
  br label %36

20:                                               ; preds = %13
  %21 = load %struct.iavf_adapter*, %struct.iavf_adapter** %6, align 8
  %22 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.iavf_dma_mem*, %struct.iavf_dma_mem** %5, align 8
  %26 = getelementptr inbounds %struct.iavf_dma_mem, %struct.iavf_dma_mem* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.iavf_dma_mem*, %struct.iavf_dma_mem** %5, align 8
  %29 = getelementptr inbounds %struct.iavf_dma_mem, %struct.iavf_dma_mem* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.iavf_dma_mem*, %struct.iavf_dma_mem** %5, align 8
  %32 = getelementptr inbounds %struct.iavf_dma_mem, %struct.iavf_dma_mem* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @dma_free_coherent(i32* %24, i32 %27, i32 %30, i32 %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %20, %18
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
