; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_alloc_rx_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_alloc_rx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_rx_queue = type { i32, i64, i64, i32, %struct.sw_rx_data*, i32, i32 }
%struct.sw_rx_data = type { i32, %struct.page*, i64 }
%struct.page = type { i32 }
%struct.eth_rx_bd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@NUM_RX_BDS_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qede_alloc_rx_buffer(%struct.qede_rx_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qede_rx_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sw_rx_data*, align 8
  %7 = alloca %struct.eth_rx_bd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  store %struct.qede_rx_queue* %0, %struct.qede_rx_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %4, align 8
  %14 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %15, 12
  %17 = zext i1 %16 to i32
  %18 = call i64 @likely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %4, align 8
  %22 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 8
  store i32 0, i32* %3, align 4
  br label %110

25:                                               ; preds = %12, %2
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.page* @alloc_pages(i32 %26, i32 0)
  store %struct.page* %27, %struct.page** %9, align 8
  %28 = load %struct.page*, %struct.page** %9, align 8
  %29 = icmp ne %struct.page* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %110

37:                                               ; preds = %25
  %38 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %4, align 8
  %39 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.page*, %struct.page** %9, align 8
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %4, align 8
  %44 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dma_map_page(i32 %40, %struct.page* %41, i32 0, i32 %42, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %4, align 8
  %48 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @dma_mapping_error(i32 %49, i32 %50)
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %37
  %55 = load %struct.page*, %struct.page** %9, align 8
  %56 = call i32 @__free_page(%struct.page* %55)
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %110

59:                                               ; preds = %37
  %60 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %4, align 8
  %61 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %60, i32 0, i32 4
  %62 = load %struct.sw_rx_data*, %struct.sw_rx_data** %61, align 8
  %63 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %4, align 8
  %64 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @NUM_RX_BDS_MAX, align 8
  %67 = and i64 %65, %66
  %68 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %62, i64 %67
  store %struct.sw_rx_data* %68, %struct.sw_rx_data** %6, align 8
  %69 = load %struct.sw_rx_data*, %struct.sw_rx_data** %6, align 8
  %70 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = load %struct.page*, %struct.page** %9, align 8
  %72 = load %struct.sw_rx_data*, %struct.sw_rx_data** %6, align 8
  %73 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %72, i32 0, i32 1
  store %struct.page* %71, %struct.page** %73, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.sw_rx_data*, %struct.sw_rx_data** %6, align 8
  %76 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %4, align 8
  %78 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %77, i32 0, i32 3
  %79 = call i64 @qed_chain_produce(i32* %78)
  %80 = inttoptr i64 %79 to %struct.eth_rx_bd*
  store %struct.eth_rx_bd* %80, %struct.eth_rx_bd** %7, align 8
  %81 = load %struct.eth_rx_bd*, %struct.eth_rx_bd** %7, align 8
  %82 = icmp ne %struct.eth_rx_bd* %81, null
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i32 @WARN_ON(i32 %84)
  %86 = load i32, i32* %8, align 4
  %87 = call i64 @upper_32_bits(i32 %86)
  %88 = call i8* @cpu_to_le32(i64 %87)
  %89 = load %struct.eth_rx_bd*, %struct.eth_rx_bd** %7, align 8
  %90 = getelementptr inbounds %struct.eth_rx_bd, %struct.eth_rx_bd* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  store i8* %88, i8** %91, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i64 @lower_32_bits(i32 %92)
  %94 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %4, align 8
  %95 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %93, %96
  %98 = call i8* @cpu_to_le32(i64 %97)
  %99 = load %struct.eth_rx_bd*, %struct.eth_rx_bd** %7, align 8
  %100 = getelementptr inbounds %struct.eth_rx_bd, %struct.eth_rx_bd* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  store i8* %98, i8** %101, align 8
  %102 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %4, align 8
  %103 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %103, align 8
  %106 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %4, align 8
  %107 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %59, %54, %34, %20
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_map_page(i32, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i64 @qed_chain_produce(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i64 @upper_32_bits(i32) #1

declare dso_local i64 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
