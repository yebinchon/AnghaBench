; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_tx_q_descs_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_tx_q_descs_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_adapter = type { %struct.TYPE_5__*, %struct.emac_tx_queue }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.emac_tx_queue = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i64, i64, i32, i32 }
%struct.emac_buffer = type { i32*, i64, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_adapter*)* @emac_tx_q_descs_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_tx_q_descs_free(%struct.emac_adapter* %0) #0 {
  %2 = alloca %struct.emac_adapter*, align 8
  %3 = alloca %struct.emac_tx_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.emac_buffer*, align 8
  store %struct.emac_adapter* %0, %struct.emac_adapter** %2, align 8
  %7 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %7, i32 0, i32 1
  store %struct.emac_tx_queue* %8, %struct.emac_tx_queue** %3, align 8
  %9 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %3, align 8
  %10 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %92

15:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %61, %15
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %3, align 8
  %19 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %17, %21
  br i1 %22, label %23, label %64

23:                                               ; preds = %16
  %24 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call %struct.emac_buffer* @GET_TPD_BUFFER(%struct.emac_tx_queue* %24, i32 %25)
  store %struct.emac_buffer* %26, %struct.emac_buffer** %6, align 8
  %27 = load %struct.emac_buffer*, %struct.emac_buffer** %6, align 8
  %28 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %23
  %32 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.emac_buffer*, %struct.emac_buffer** %6, align 8
  %39 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.emac_buffer*, %struct.emac_buffer** %6, align 8
  %42 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @DMA_TO_DEVICE, align 4
  %45 = call i32 @dma_unmap_single(i32 %37, i64 %40, i32 %43, i32 %44)
  %46 = load %struct.emac_buffer*, %struct.emac_buffer** %6, align 8
  %47 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %31, %23
  %49 = load %struct.emac_buffer*, %struct.emac_buffer** %6, align 8
  %50 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.emac_buffer*, %struct.emac_buffer** %6, align 8
  %55 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @dev_kfree_skb_any(i32* %56)
  %58 = load %struct.emac_buffer*, %struct.emac_buffer** %6, align 8
  %59 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %58, i32 0, i32 0
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %53, %48
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %4, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %16

64:                                               ; preds = %16
  %65 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %3, align 8
  %66 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = zext i32 %68 to i64
  %70 = mul i64 24, %69
  store i64 %70, i64* %5, align 8
  %71 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %3, align 8
  %72 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = load i64, i64* %5, align 8
  %76 = call i32 @memset(i32 %74, i32 0, i64 %75)
  %77 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %3, align 8
  %78 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %3, align 8
  %82 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @memset(i32 %80, i32 0, i64 %84)
  %86 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %3, align 8
  %87 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  store i64 0, i64* %88, align 8
  %89 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %3, align 8
  %90 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  store i64 0, i64* %91, align 8
  br label %92

92:                                               ; preds = %64, %14
  ret void
}

declare dso_local %struct.emac_buffer* @GET_TPD_BUFFER(%struct.emac_tx_queue*, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @memset(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
