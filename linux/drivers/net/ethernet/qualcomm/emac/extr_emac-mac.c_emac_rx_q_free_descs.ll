; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_rx_q_free_descs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_rx_q_free_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_adapter = type { %struct.emac_rx_queue, %struct.TYPE_6__* }
%struct.emac_rx_queue = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i64, i64, i64, i32, i32 }
%struct.TYPE_7__ = type { i64, i64, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.emac_buffer = type { i32*, i64, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_adapter*)* @emac_rx_q_free_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_rx_q_free_descs(%struct.emac_adapter* %0) #0 {
  %2 = alloca %struct.emac_adapter*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.emac_rx_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.emac_buffer*, align 8
  store %struct.emac_adapter* %0, %struct.emac_adapter** %2, align 8
  %8 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %3, align 8
  %14 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %14, i32 0, i32 0
  store %struct.emac_rx_queue* %15, %struct.emac_rx_queue** %4, align 8
  %16 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %4, align 8
  %17 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %109

22:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %63, %22
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %4, align 8
  %26 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ult i32 %24, %28
  br i1 %29, label %30, label %66

30:                                               ; preds = %23
  %31 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call %struct.emac_buffer* @GET_RFD_BUFFER(%struct.emac_rx_queue* %31, i32 %32)
  store %struct.emac_buffer* %33, %struct.emac_buffer** %7, align 8
  %34 = load %struct.emac_buffer*, %struct.emac_buffer** %7, align 8
  %35 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %30
  %39 = load %struct.device*, %struct.device** %3, align 8
  %40 = load %struct.emac_buffer*, %struct.emac_buffer** %7, align 8
  %41 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.emac_buffer*, %struct.emac_buffer** %7, align 8
  %44 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %47 = call i32 @dma_unmap_single(%struct.device* %39, i64 %42, i32 %45, i32 %46)
  %48 = load %struct.emac_buffer*, %struct.emac_buffer** %7, align 8
  %49 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %38, %30
  %51 = load %struct.emac_buffer*, %struct.emac_buffer** %7, align 8
  %52 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.emac_buffer*, %struct.emac_buffer** %7, align 8
  %57 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @dev_kfree_skb(i32* %58)
  %60 = load %struct.emac_buffer*, %struct.emac_buffer** %7, align 8
  %61 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %60, i32 0, i32 0
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %55, %50
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %23

66:                                               ; preds = %23
  %67 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %4, align 8
  %68 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = zext i32 %70 to i64
  %72 = mul i64 24, %71
  store i64 %72, i64* %6, align 8
  %73 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %4, align 8
  %74 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @memset(i32 %76, i32 0, i64 %77)
  %79 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %4, align 8
  %80 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %4, align 8
  %84 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @memset(i32 %82, i32 0, i64 %86)
  %88 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %4, align 8
  %89 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  store i64 0, i64* %90, align 8
  %91 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %4, align 8
  %92 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  store i64 0, i64* %93, align 8
  %94 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %4, align 8
  %95 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %4, align 8
  %99 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @memset(i32 %97, i32 0, i64 %101)
  %103 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %4, align 8
  %104 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 3
  store i64 0, i64* %105, align 8
  %106 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %4, align 8
  %107 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %66, %21
  ret void
}

declare dso_local %struct.emac_buffer* @GET_RFD_BUFFER(%struct.emac_rx_queue*, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @memset(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
