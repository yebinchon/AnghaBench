; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_tq_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_tq_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_tx_queue = type { i32, i32*, i32, %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32*, i32 }
%struct.TYPE_6__ = type { i32, i32*, i32 }
%struct.TYPE_5__ = type { i32, i32*, i32 }
%struct.vmxnet3_adapter = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_tx_queue*, %struct.vmxnet3_adapter*)* @vmxnet3_tq_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_tq_destroy(%struct.vmxnet3_tx_queue* %0, %struct.vmxnet3_adapter* %1) #0 {
  %3 = alloca %struct.vmxnet3_tx_queue*, align 8
  %4 = alloca %struct.vmxnet3_adapter*, align 8
  store %struct.vmxnet3_tx_queue* %0, %struct.vmxnet3_tx_queue** %3, align 8
  store %struct.vmxnet3_adapter* %1, %struct.vmxnet3_adapter** %4, align 8
  %5 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %6 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %34

10:                                               ; preds = %2
  %11 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %16 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %23 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %27 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dma_free_coherent(i32* %14, i32 %21, i32* %25, i32 %29)
  %31 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %32 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %10, %2
  %35 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %36 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %65

40:                                               ; preds = %34
  %41 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %42 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %46 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %50 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = mul nsw i32 %48, %51
  %53 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %54 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %58 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dma_free_coherent(i32* %44, i32 %52, i32* %56, i32 %60)
  %62 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %63 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %40, %34
  %66 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %67 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %95

71:                                               ; preds = %65
  %72 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %73 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %72, i32 0, i32 0
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %77 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 4
  %82 = trunc i64 %81 to i32
  %83 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %84 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %88 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @dma_free_coherent(i32* %75, i32 %82, i32* %86, i32 %90)
  %92 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %93 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  store i32* null, i32** %94, align 8
  br label %95

95:                                               ; preds = %71, %65
  %96 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %97 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %121

100:                                              ; preds = %95
  %101 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %102 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %101, i32 0, i32 0
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %106 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = mul i64 %109, 4
  %111 = trunc i64 %110 to i32
  %112 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %113 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %116 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @dma_free_coherent(i32* %104, i32 %111, i32* %114, i32 %117)
  %119 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %120 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %119, i32 0, i32 1
  store i32* null, i32** %120, align 8
  br label %121

121:                                              ; preds = %100, %95
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
