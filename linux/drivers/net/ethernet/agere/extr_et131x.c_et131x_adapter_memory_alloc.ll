; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_adapter_memory_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_adapter_memory_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"et131x_tx_dma_memory_alloc FAILED\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"et131x_rx_dma_memory_alloc FAILED\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"et131x_init_recv FAILED\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.et131x_adapter*)* @et131x_adapter_memory_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et131x_adapter_memory_alloc(%struct.et131x_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.et131x_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %3, align 8
  %5 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %6 = call i32 @et131x_tx_dma_memory_alloc(%struct.et131x_adapter* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %16 = call i32 @et131x_tx_dma_memory_free(%struct.et131x_adapter* %15)
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %47

18:                                               ; preds = %1
  %19 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %20 = call i32 @et131x_rx_dma_memory_alloc(%struct.et131x_adapter* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %30 = call i32 @et131x_adapter_memory_free(%struct.et131x_adapter* %29)
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %47

32:                                               ; preds = %18
  %33 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %34 = call i32 @et131x_init_recv(%struct.et131x_adapter* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %44 = call i32 @et131x_adapter_memory_free(%struct.et131x_adapter* %43)
  br label %45

45:                                               ; preds = %37, %32
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %23, %9
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @et131x_tx_dma_memory_alloc(%struct.et131x_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @et131x_tx_dma_memory_free(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_rx_dma_memory_alloc(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_adapter_memory_free(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_init_recv(%struct.et131x_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
