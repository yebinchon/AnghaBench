; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_allocate_dma_mem_d.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_allocate_dma_mem_d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i64 }
%struct.i40e_dma_mem = type { i32, i32, i32 }
%struct.i40e_pf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_allocate_dma_mem_d(%struct.i40e_hw* %0, %struct.i40e_dma_mem* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca %struct.i40e_dma_mem*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i40e_pf*, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %6, align 8
  store %struct.i40e_dma_mem* %1, %struct.i40e_dma_mem** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %12 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.i40e_pf*
  store %struct.i40e_pf* %14, %struct.i40e_pf** %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @ALIGN(i32 %15, i32 %16)
  %18 = load %struct.i40e_dma_mem*, %struct.i40e_dma_mem** %7, align 8
  %19 = getelementptr inbounds %struct.i40e_dma_mem, %struct.i40e_dma_mem* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %21 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.i40e_dma_mem*, %struct.i40e_dma_mem** %7, align 8
  %25 = getelementptr inbounds %struct.i40e_dma_mem, %struct.i40e_dma_mem* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.i40e_dma_mem*, %struct.i40e_dma_mem** %7, align 8
  %28 = getelementptr inbounds %struct.i40e_dma_mem, %struct.i40e_dma_mem* %27, i32 0, i32 1
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32 @dma_alloc_coherent(i32* %23, i32 %26, i32* %28, i32 %29)
  %31 = load %struct.i40e_dma_mem*, %struct.i40e_dma_mem** %7, align 8
  %32 = getelementptr inbounds %struct.i40e_dma_mem, %struct.i40e_dma_mem* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.i40e_dma_mem*, %struct.i40e_dma_mem** %7, align 8
  %34 = getelementptr inbounds %struct.i40e_dma_mem, %struct.i40e_dma_mem* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %4
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %41

40:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
