; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_drv_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_drv_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.be_dma_mem, %struct.be_dma_mem, %struct.TYPE_2__*, %struct.be_dma_mem }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.be_dma_mem = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_adapter*)* @be_drv_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_drv_cleanup(%struct.be_adapter* %0) #0 {
  %2 = alloca %struct.be_adapter*, align 8
  %3 = alloca %struct.be_dma_mem*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %2, align 8
  %5 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %5, i32 0, i32 3
  store %struct.be_dma_mem* %6, %struct.be_dma_mem** %3, align 8
  %7 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.be_dma_mem*, %struct.be_dma_mem** %3, align 8
  %12 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load %struct.be_dma_mem*, %struct.be_dma_mem** %3, align 8
  %18 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.be_dma_mem*, %struct.be_dma_mem** %3, align 8
  %21 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.be_dma_mem*, %struct.be_dma_mem** %3, align 8
  %24 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dma_free_coherent(%struct.device* %16, i32 %19, i64 %22, i32 %25)
  br label %27

27:                                               ; preds = %15, %1
  %28 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %28, i32 0, i32 1
  store %struct.be_dma_mem* %29, %struct.be_dma_mem** %3, align 8
  %30 = load %struct.be_dma_mem*, %struct.be_dma_mem** %3, align 8
  %31 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %27
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load %struct.be_dma_mem*, %struct.be_dma_mem** %3, align 8
  %37 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.be_dma_mem*, %struct.be_dma_mem** %3, align 8
  %40 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.be_dma_mem*, %struct.be_dma_mem** %3, align 8
  %43 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dma_free_coherent(%struct.device* %35, i32 %38, i64 %41, i32 %44)
  br label %46

46:                                               ; preds = %34, %27
  %47 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %48 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %47, i32 0, i32 0
  store %struct.be_dma_mem* %48, %struct.be_dma_mem** %3, align 8
  %49 = load %struct.be_dma_mem*, %struct.be_dma_mem** %3, align 8
  %50 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %46
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = load %struct.be_dma_mem*, %struct.be_dma_mem** %3, align 8
  %56 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.be_dma_mem*, %struct.be_dma_mem** %3, align 8
  %59 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.be_dma_mem*, %struct.be_dma_mem** %3, align 8
  %62 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dma_free_coherent(%struct.device* %54, i32 %57, i64 %60, i32 %63)
  br label %65

65:                                               ; preds = %53, %46
  ret void
}

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
