; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_adminq.c_iavf_alloc_asq_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_adminq.c_iavf_alloc_asq_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_hw = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_6__ = type { %struct.iavf_dma_mem* }
%struct.iavf_dma_mem = type { i32 }

@iavf_mem_asq_buf = common dso_local global i32 0, align 4
@IAVF_ADMINQ_DESC_ALIGNMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iavf_hw*)* @iavf_alloc_asq_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_alloc_asq_bufs(%struct.iavf_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iavf_hw*, align 8
  %4 = alloca %struct.iavf_dma_mem*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iavf_hw* %0, %struct.iavf_hw** %3, align 8
  %7 = load %struct.iavf_hw*, %struct.iavf_hw** %3, align 8
  %8 = load %struct.iavf_hw*, %struct.iavf_hw** %3, align 8
  %9 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.iavf_hw*, %struct.iavf_hw** %3, align 8
  %13 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = call i32 @iavf_allocate_virt_mem(%struct.iavf_hw* %7, %struct.TYPE_9__* %11, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %70

23:                                               ; preds = %1
  %24 = load %struct.iavf_hw*, %struct.iavf_hw** %3, align 8
  %25 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.iavf_dma_mem*
  %31 = load %struct.iavf_hw*, %struct.iavf_hw** %3, align 8
  %32 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store %struct.iavf_dma_mem* %30, %struct.iavf_dma_mem** %35, align 8
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %66, %23
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.iavf_hw*, %struct.iavf_hw** %3, align 8
  %39 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %37, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %36
  %44 = load %struct.iavf_hw*, %struct.iavf_hw** %3, align 8
  %45 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.iavf_dma_mem*, %struct.iavf_dma_mem** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.iavf_dma_mem, %struct.iavf_dma_mem* %49, i64 %51
  store %struct.iavf_dma_mem* %52, %struct.iavf_dma_mem** %4, align 8
  %53 = load %struct.iavf_hw*, %struct.iavf_hw** %3, align 8
  %54 = load %struct.iavf_dma_mem*, %struct.iavf_dma_mem** %4, align 8
  %55 = load i32, i32* @iavf_mem_asq_buf, align 4
  %56 = load %struct.iavf_hw*, %struct.iavf_hw** %3, align 8
  %57 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @IAVF_ADMINQ_DESC_ALIGNMENT, align 4
  %61 = call i32 @iavf_allocate_dma_mem(%struct.iavf_hw* %53, %struct.iavf_dma_mem* %54, i32 %55, i32 %59, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %43
  br label %72

65:                                               ; preds = %43
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %36

69:                                               ; preds = %36
  br label %70

70:                                               ; preds = %69, %22
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %101

72:                                               ; preds = %64
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %90, %72
  %76 = load i32, i32* %6, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %75
  %79 = load %struct.iavf_hw*, %struct.iavf_hw** %3, align 8
  %80 = load %struct.iavf_hw*, %struct.iavf_hw** %3, align 8
  %81 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load %struct.iavf_dma_mem*, %struct.iavf_dma_mem** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.iavf_dma_mem, %struct.iavf_dma_mem* %85, i64 %87
  %89 = call i32 @iavf_free_dma_mem(%struct.iavf_hw* %79, %struct.iavf_dma_mem* %88)
  br label %90

90:                                               ; preds = %78
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %6, align 4
  br label %75

93:                                               ; preds = %75
  %94 = load %struct.iavf_hw*, %struct.iavf_hw** %3, align 8
  %95 = load %struct.iavf_hw*, %struct.iavf_hw** %3, align 8
  %96 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = call i32 @iavf_free_virt_mem(%struct.iavf_hw* %94, %struct.TYPE_9__* %98)
  %100 = load i32, i32* %5, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %93, %70
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @iavf_allocate_virt_mem(%struct.iavf_hw*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @iavf_allocate_dma_mem(%struct.iavf_hw*, %struct.iavf_dma_mem*, i32, i32, i32) #1

declare dso_local i32 @iavf_free_dma_mem(%struct.iavf_hw*, %struct.iavf_dma_mem*) #1

declare dso_local i32 @iavf_free_virt_mem(%struct.iavf_hw*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
