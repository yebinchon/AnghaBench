; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_grcan.c_grcan_allocate_dma_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_grcan.c_grcan_allocate_dma_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.grcan_priv = type { %struct.grcan_dma }
%struct.grcan_dma = type { i64, i64, %struct.grcan_dma_buffer, %struct.grcan_dma_buffer, i64 }
%struct.grcan_dma_buffer = type { i64, i64, i64 }

@GRCAN_BUFFER_ALIGNMENT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64, i64)* @grcan_allocate_dma_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grcan_allocate_dma_buffers(%struct.net_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.grcan_priv*, align 8
  %9 = alloca %struct.grcan_dma*, align 8
  %10 = alloca %struct.grcan_dma_buffer*, align 8
  %11 = alloca %struct.grcan_dma_buffer*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.grcan_priv* @netdev_priv(%struct.net_device* %16)
  store %struct.grcan_priv* %17, %struct.grcan_priv** %8, align 8
  %18 = load %struct.grcan_priv*, %struct.grcan_priv** %8, align 8
  %19 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %18, i32 0, i32 0
  store %struct.grcan_dma* %19, %struct.grcan_dma** %9, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.grcan_dma*, %struct.grcan_dma** %9, align 8
  %25 = getelementptr inbounds %struct.grcan_dma, %struct.grcan_dma* %24, i32 0, i32 2
  br label %29

26:                                               ; preds = %3
  %27 = load %struct.grcan_dma*, %struct.grcan_dma** %9, align 8
  %28 = getelementptr inbounds %struct.grcan_dma, %struct.grcan_dma* %27, i32 0, i32 3
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi %struct.grcan_dma_buffer* [ %25, %23 ], [ %28, %26 ]
  store %struct.grcan_dma_buffer* %30, %struct.grcan_dma_buffer** %10, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.grcan_dma*, %struct.grcan_dma** %9, align 8
  %36 = getelementptr inbounds %struct.grcan_dma, %struct.grcan_dma* %35, i32 0, i32 3
  br label %40

37:                                               ; preds = %29
  %38 = load %struct.grcan_dma*, %struct.grcan_dma** %9, align 8
  %39 = getelementptr inbounds %struct.grcan_dma, %struct.grcan_dma* %38, i32 0, i32 2
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi %struct.grcan_dma_buffer* [ %36, %34 ], [ %39, %37 ]
  store %struct.grcan_dma_buffer* %41, %struct.grcan_dma_buffer** %11, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i64 @max(i64 %42, i64 %43)
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* @GRCAN_BUFFER_ALIGNMENT, align 8
  %47 = call i8* @ALIGN(i64 %45, i64 %46)
  %48 = ptrtoint i8* %47 to i64
  store i64 %48, i64* %14, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i64 @min(i64 %49, i64 %50)
  store i64 %51, i64* %15, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* %15, align 8
  %54 = add i64 %52, %53
  %55 = load i64, i64* @GRCAN_BUFFER_ALIGNMENT, align 8
  %56 = add i64 %54, %55
  %57 = load %struct.grcan_dma*, %struct.grcan_dma** %9, align 8
  %58 = getelementptr inbounds %struct.grcan_dma, %struct.grcan_dma* %57, i32 0, i32 4
  store i64 %56, i64* %58, align 8
  %59 = load %struct.net_device*, %struct.net_device** %5, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = load %struct.grcan_dma*, %struct.grcan_dma** %9, align 8
  %62 = getelementptr inbounds %struct.grcan_dma, %struct.grcan_dma* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.grcan_dma*, %struct.grcan_dma** %9, align 8
  %65 = getelementptr inbounds %struct.grcan_dma, %struct.grcan_dma* %64, i32 0, i32 0
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i64 @dma_alloc_coherent(i32* %60, i64 %63, i64* %65, i32 %66)
  %68 = load %struct.grcan_dma*, %struct.grcan_dma** %9, align 8
  %69 = getelementptr inbounds %struct.grcan_dma, %struct.grcan_dma* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load %struct.grcan_dma*, %struct.grcan_dma** %9, align 8
  %71 = getelementptr inbounds %struct.grcan_dma, %struct.grcan_dma* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %40
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %122

77:                                               ; preds = %40
  %78 = load i64, i64* %6, align 8
  %79 = load %struct.grcan_dma*, %struct.grcan_dma** %9, align 8
  %80 = getelementptr inbounds %struct.grcan_dma, %struct.grcan_dma* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.grcan_dma_buffer, %struct.grcan_dma_buffer* %80, i32 0, i32 0
  store i64 %78, i64* %81, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load %struct.grcan_dma*, %struct.grcan_dma** %9, align 8
  %84 = getelementptr inbounds %struct.grcan_dma, %struct.grcan_dma* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.grcan_dma_buffer, %struct.grcan_dma_buffer* %84, i32 0, i32 0
  store i64 %82, i64* %85, align 8
  %86 = load %struct.grcan_dma*, %struct.grcan_dma** %9, align 8
  %87 = getelementptr inbounds %struct.grcan_dma, %struct.grcan_dma* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @GRCAN_BUFFER_ALIGNMENT, align 8
  %90 = call i8* @ALIGN(i64 %88, i64 %89)
  %91 = ptrtoint i8* %90 to i64
  %92 = load %struct.grcan_dma_buffer*, %struct.grcan_dma_buffer** %10, align 8
  %93 = getelementptr inbounds %struct.grcan_dma_buffer, %struct.grcan_dma_buffer* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  %94 = load %struct.grcan_dma_buffer*, %struct.grcan_dma_buffer** %10, align 8
  %95 = getelementptr inbounds %struct.grcan_dma_buffer, %struct.grcan_dma_buffer* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %14, align 8
  %98 = add i64 %96, %97
  %99 = load %struct.grcan_dma_buffer*, %struct.grcan_dma_buffer** %11, align 8
  %100 = getelementptr inbounds %struct.grcan_dma_buffer, %struct.grcan_dma_buffer* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  %101 = load %struct.grcan_dma_buffer*, %struct.grcan_dma_buffer** %10, align 8
  %102 = getelementptr inbounds %struct.grcan_dma_buffer, %struct.grcan_dma_buffer* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.grcan_dma*, %struct.grcan_dma** %9, align 8
  %105 = getelementptr inbounds %struct.grcan_dma, %struct.grcan_dma* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = sub i64 %103, %106
  store i64 %107, i64* %12, align 8
  %108 = load %struct.grcan_dma*, %struct.grcan_dma** %9, align 8
  %109 = getelementptr inbounds %struct.grcan_dma, %struct.grcan_dma* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %12, align 8
  %112 = add i64 %110, %111
  %113 = load %struct.grcan_dma_buffer*, %struct.grcan_dma_buffer** %10, align 8
  %114 = getelementptr inbounds %struct.grcan_dma_buffer, %struct.grcan_dma_buffer* %113, i32 0, i32 2
  store i64 %112, i64* %114, align 8
  %115 = load %struct.grcan_dma_buffer*, %struct.grcan_dma_buffer** %10, align 8
  %116 = getelementptr inbounds %struct.grcan_dma_buffer, %struct.grcan_dma_buffer* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %14, align 8
  %119 = add i64 %117, %118
  %120 = load %struct.grcan_dma_buffer*, %struct.grcan_dma_buffer** %11, align 8
  %121 = getelementptr inbounds %struct.grcan_dma_buffer, %struct.grcan_dma_buffer* %120, i32 0, i32 2
  store i64 %119, i64* %121, align 8
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %77, %74
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local %struct.grcan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i8* @ALIGN(i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @dma_alloc_coherent(i32*, i64, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
