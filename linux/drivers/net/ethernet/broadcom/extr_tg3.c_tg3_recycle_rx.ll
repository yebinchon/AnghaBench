; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_recycle_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_recycle_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3_napi = type { %struct.tg3* }
%struct.tg3 = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.tg3_rx_prodring_set }
%struct.tg3_rx_prodring_set = type { %struct.ring_info*, %struct.TYPE_4__*, %struct.ring_info*, %struct.tg3_rx_buffer_desc* }
%struct.TYPE_4__ = type { %struct.tg3_rx_buffer_desc }
%struct.tg3_rx_buffer_desc = type { i32, i32 }
%struct.ring_info = type { i32* }

@mapping = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3_napi*, %struct.tg3_rx_prodring_set*, i32, i32, i32)* @tg3_recycle_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_recycle_rx(%struct.tg3_napi* %0, %struct.tg3_rx_prodring_set* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.tg3_napi*, align 8
  %7 = alloca %struct.tg3_rx_prodring_set*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tg3*, align 8
  %12 = alloca %struct.tg3_rx_buffer_desc*, align 8
  %13 = alloca %struct.tg3_rx_buffer_desc*, align 8
  %14 = alloca %struct.ring_info*, align 8
  %15 = alloca %struct.ring_info*, align 8
  %16 = alloca %struct.tg3_rx_prodring_set*, align 8
  %17 = alloca i32, align 4
  store %struct.tg3_napi* %0, %struct.tg3_napi** %6, align 8
  store %struct.tg3_rx_prodring_set* %1, %struct.tg3_rx_prodring_set** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load %struct.tg3_napi*, %struct.tg3_napi** %6, align 8
  %19 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %18, i32 0, i32 0
  %20 = load %struct.tg3*, %struct.tg3** %19, align 8
  store %struct.tg3* %20, %struct.tg3** %11, align 8
  %21 = load %struct.tg3*, %struct.tg3** %11, align 8
  %22 = getelementptr inbounds %struct.tg3, %struct.tg3* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store %struct.tg3_rx_prodring_set* %25, %struct.tg3_rx_prodring_set** %16, align 8
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %89 [
    i32 128, label %27
    i32 129, label %57
  ]

27:                                               ; preds = %5
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.tg3*, %struct.tg3** %11, align 8
  %30 = getelementptr inbounds %struct.tg3, %struct.tg3* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %28, %31
  store i32 %32, i32* %17, align 4
  %33 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %7, align 8
  %34 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %33, i32 0, i32 3
  %35 = load %struct.tg3_rx_buffer_desc*, %struct.tg3_rx_buffer_desc** %34, align 8
  %36 = load i32, i32* %17, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.tg3_rx_buffer_desc, %struct.tg3_rx_buffer_desc* %35, i64 %37
  store %struct.tg3_rx_buffer_desc* %38, %struct.tg3_rx_buffer_desc** %13, align 8
  %39 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %7, align 8
  %40 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %39, i32 0, i32 2
  %41 = load %struct.ring_info*, %struct.ring_info** %40, align 8
  %42 = load i32, i32* %17, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %41, i64 %43
  store %struct.ring_info* %44, %struct.ring_info** %15, align 8
  %45 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %16, align 8
  %46 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %45, i32 0, i32 3
  %47 = load %struct.tg3_rx_buffer_desc*, %struct.tg3_rx_buffer_desc** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.tg3_rx_buffer_desc, %struct.tg3_rx_buffer_desc* %47, i64 %49
  store %struct.tg3_rx_buffer_desc* %50, %struct.tg3_rx_buffer_desc** %12, align 8
  %51 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %16, align 8
  %52 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %51, i32 0, i32 2
  %53 = load %struct.ring_info*, %struct.ring_info** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %53, i64 %55
  store %struct.ring_info* %56, %struct.ring_info** %14, align 8
  br label %90

57:                                               ; preds = %5
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.tg3*, %struct.tg3** %11, align 8
  %60 = getelementptr inbounds %struct.tg3, %struct.tg3* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %58, %61
  store i32 %62, i32* %17, align 4
  %63 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %7, align 8
  %64 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* %17, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store %struct.tg3_rx_buffer_desc* %69, %struct.tg3_rx_buffer_desc** %13, align 8
  %70 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %7, align 8
  %71 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %70, i32 0, i32 0
  %72 = load %struct.ring_info*, %struct.ring_info** %71, align 8
  %73 = load i32, i32* %17, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %72, i64 %74
  store %struct.ring_info* %75, %struct.ring_info** %15, align 8
  %76 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %16, align 8
  %77 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store %struct.tg3_rx_buffer_desc* %82, %struct.tg3_rx_buffer_desc** %12, align 8
  %83 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %16, align 8
  %84 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %83, i32 0, i32 0
  %85 = load %struct.ring_info*, %struct.ring_info** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %85, i64 %87
  store %struct.ring_info* %88, %struct.ring_info** %14, align 8
  br label %90

89:                                               ; preds = %5
  br label %115

90:                                               ; preds = %57, %27
  %91 = load %struct.ring_info*, %struct.ring_info** %14, align 8
  %92 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.ring_info*, %struct.ring_info** %15, align 8
  %95 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %94, i32 0, i32 0
  store i32* %93, i32** %95, align 8
  %96 = load %struct.ring_info*, %struct.ring_info** %15, align 8
  %97 = load i32, i32* @mapping, align 4
  %98 = load %struct.ring_info*, %struct.ring_info** %14, align 8
  %99 = load i32, i32* @mapping, align 4
  %100 = call i32 @dma_unmap_addr(%struct.ring_info* %98, i32 %99)
  %101 = call i32 @dma_unmap_addr_set(%struct.ring_info* %96, i32 %97, i32 %100)
  %102 = load %struct.tg3_rx_buffer_desc*, %struct.tg3_rx_buffer_desc** %12, align 8
  %103 = getelementptr inbounds %struct.tg3_rx_buffer_desc, %struct.tg3_rx_buffer_desc* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.tg3_rx_buffer_desc*, %struct.tg3_rx_buffer_desc** %13, align 8
  %106 = getelementptr inbounds %struct.tg3_rx_buffer_desc, %struct.tg3_rx_buffer_desc* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.tg3_rx_buffer_desc*, %struct.tg3_rx_buffer_desc** %12, align 8
  %108 = getelementptr inbounds %struct.tg3_rx_buffer_desc, %struct.tg3_rx_buffer_desc* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.tg3_rx_buffer_desc*, %struct.tg3_rx_buffer_desc** %13, align 8
  %111 = getelementptr inbounds %struct.tg3_rx_buffer_desc, %struct.tg3_rx_buffer_desc* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  %112 = call i32 (...) @smp_wmb()
  %113 = load %struct.ring_info*, %struct.ring_info** %14, align 8
  %114 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %113, i32 0, i32 0
  store i32* null, i32** %114, align 8
  br label %115

115:                                              ; preds = %90, %89
  ret void
}

declare dso_local i32 @dma_unmap_addr_set(%struct.ring_info*, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.ring_info*, i32) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
