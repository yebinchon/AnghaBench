; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_txq_put_data_tso.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_txq_put_data_tso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tx_queue = type { i64, i64, i8**, i64, i64, %struct.tx_desc* }
%struct.tx_desc = type { i32, i32, i64, i64 }
%struct.sk_buff = type { i32 }

@DESC_DMA_MAP_SINGLE = common dso_local global i8* null, align 8
@TSO_HEADER_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"dma_map_single failed!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BUFFER_OWNED_BY_DMA = common dso_local global i32 0, align 4
@ZERO_PADDING = common dso_local global i32 0, align 4
@TX_LAST_DESC = common dso_local global i32 0, align 4
@TX_ENABLE_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.tx_queue*, %struct.sk_buff*, i8*, i32, i32, i32)* @txq_put_data_tso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txq_put_data_tso(%struct.net_device* %0, %struct.tx_queue* %1, %struct.sk_buff* %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.tx_queue*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.tx_desc*, align 8
  store %struct.net_device* %0, %struct.net_device** %9, align 8
  store %struct.tx_queue* %1, %struct.tx_queue** %10, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load %struct.tx_queue*, %struct.tx_queue** %10, align 8
  %20 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %20, align 8
  %23 = trunc i64 %21 to i32
  store i32 %23, i32* %16, align 4
  %24 = load %struct.tx_queue*, %struct.tx_queue** %10, align 8
  %25 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.tx_queue*, %struct.tx_queue** %10, align 8
  %28 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %7
  %32 = load %struct.tx_queue*, %struct.tx_queue** %10, align 8
  %33 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %31, %7
  %35 = load %struct.tx_queue*, %struct.tx_queue** %10, align 8
  %36 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %35, i32 0, i32 5
  %37 = load %struct.tx_desc*, %struct.tx_desc** %36, align 8
  %38 = load i32, i32* %16, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %37, i64 %39
  store %struct.tx_desc* %40, %struct.tx_desc** %18, align 8
  %41 = load i8*, i8** @DESC_DMA_MAP_SINGLE, align 8
  %42 = load %struct.tx_queue*, %struct.tx_queue** %10, align 8
  %43 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %42, i32 0, i32 2
  %44 = load i8**, i8*** %43, align 8
  %45 = load i32, i32* %16, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  store i8* %41, i8** %47, align 8
  %48 = load %struct.tx_desc*, %struct.tx_desc** %18, align 8
  %49 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load %struct.tx_desc*, %struct.tx_desc** %18, align 8
  %52 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %13, align 4
  %54 = icmp sle i32 %53, 8
  br i1 %54, label %55, label %82

55:                                               ; preds = %34
  %56 = load i8*, i8** %12, align 8
  %57 = ptrtoint i8* %56 to i64
  %58 = and i64 %57, 7
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %82

60:                                               ; preds = %55
  %61 = load %struct.tx_queue*, %struct.tx_queue** %10, align 8
  %62 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* @TSO_HEADER_SIZE, align 4
  %66 = mul nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %63, %67
  %69 = load i8*, i8** %12, align 8
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @memcpy(i64 %68, i8* %69, i32 %70)
  %72 = load %struct.tx_queue*, %struct.tx_queue** %10, align 8
  %73 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* @TSO_HEADER_SIZE, align 4
  %77 = mul nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %74, %78
  %80 = load %struct.tx_desc*, %struct.tx_desc** %18, align 8
  %81 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  br label %115

82:                                               ; preds = %55, %34
  %83 = load i8*, i8** @DESC_DMA_MAP_SINGLE, align 8
  %84 = load %struct.tx_queue*, %struct.tx_queue** %10, align 8
  %85 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %84, i32 0, i32 2
  %86 = load i8**, i8*** %85, align 8
  %87 = load i32, i32* %16, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  store i8* %83, i8** %89, align 8
  %90 = load %struct.net_device*, %struct.net_device** %9, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i8*, i8** %12, align 8
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* @DMA_TO_DEVICE, align 4
  %97 = call i64 @dma_map_single(i32 %93, i8* %94, i32 %95, i32 %96)
  %98 = load %struct.tx_desc*, %struct.tx_desc** %18, align 8
  %99 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %98, i32 0, i32 2
  store i64 %97, i64* %99, align 8
  %100 = load %struct.net_device*, %struct.net_device** %9, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.tx_desc*, %struct.tx_desc** %18, align 8
  %105 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @dma_mapping_error(i32 %103, i64 %106)
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %82
  %111 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %8, align 4
  br label %136

114:                                              ; preds = %82
  br label %115

115:                                              ; preds = %114, %60
  %116 = load i32, i32* @BUFFER_OWNED_BY_DMA, align 4
  store i32 %116, i32* %17, align 4
  %117 = load i32, i32* %14, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %115
  %120 = load i32, i32* @ZERO_PADDING, align 4
  %121 = load i32, i32* @TX_LAST_DESC, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* %17, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %17, align 4
  %125 = load i32, i32* %15, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %119
  %128 = load i32, i32* @TX_ENABLE_INTERRUPT, align 4
  %129 = load i32, i32* %17, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %17, align 4
  br label %131

131:                                              ; preds = %127, %119
  br label %132

132:                                              ; preds = %131, %115
  %133 = load i32, i32* %17, align 4
  %134 = load %struct.tx_desc*, %struct.tx_desc** %18, align 8
  %135 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  store i32 0, i32* %8, align 4
  br label %136

136:                                              ; preds = %132, %110
  %137 = load i32, i32* %8, align 4
  ret i32 %137
}

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i64 @dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32, i64) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
