; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_alloc_large_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_alloc_large_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql3_adapter = type { i32, i32, i32, i32, %struct.ql_rcv_buf_cb* }
%struct.ql_rcv_buf_cb = type { i32, i8*, i8*, %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"large buff alloc failed for %d bytes at index %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@QL_HEADER_SPACE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"PCI mapping failed with error: %d\0A\00", align 1
@mapaddr = common dso_local global i32 0, align 4
@maplen = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql3_adapter*)* @ql_alloc_large_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_alloc_large_buffers(%struct.ql3_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ql3_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ql_rcv_buf_cb*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ql3_adapter* %0, %struct.ql3_adapter** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %117, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %120

15:                                               ; preds = %9
  %16 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.sk_buff* @netdev_alloc_skb(i32 %18, i32 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %6, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %15
  %30 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %35, 2
  %37 = load i32, i32* %4, align 4
  %38 = call i32 (i32, i8*, i32, ...) @netdev_err(i32 %32, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %40 = call i32 @ql_free_large_buffers(%struct.ql3_adapter* %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %121

43:                                               ; preds = %15
  %44 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %44, i32 0, i32 4
  %46 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %46, i64 %48
  store %struct.ql_rcv_buf_cb* %49, %struct.ql_rcv_buf_cb** %5, align 8
  %50 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %5, align 8
  %51 = call i32 @memset(%struct.ql_rcv_buf_cb* %50, i32 0, i32 32)
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %5, align 8
  %54 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %5, align 8
  %57 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %56, i32 0, i32 3
  store %struct.sk_buff* %55, %struct.sk_buff** %57, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = load i32, i32* @QL_HEADER_SPACE, align 4
  %60 = call i32 @skb_reserve(%struct.sk_buff* %58, i32 %59)
  %61 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %68 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @QL_HEADER_SPACE, align 4
  %71 = sub nsw i32 %69, %70
  %72 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %73 = call i32 @pci_map_single(i32 %63, i32 %66, i32 %71, i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %75 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @pci_dma_mapping_error(i32 %76, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %43
  %82 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %83 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 (i32, i8*, i32, ...) @netdev_err(i32 %84, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %88 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %87)
  %89 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %90 = call i32 @ql_free_large_buffers(%struct.ql3_adapter* %89)
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %121

93:                                               ; preds = %43
  %94 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %5, align 8
  %95 = load i32, i32* @mapaddr, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @dma_unmap_addr_set(%struct.ql_rcv_buf_cb* %94, i32 %95, i32 %96)
  %98 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %5, align 8
  %99 = load i32, i32* @maplen, align 4
  %100 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %101 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @QL_HEADER_SPACE, align 4
  %104 = sub nsw i32 %102, %103
  %105 = call i32 @dma_unmap_len_set(%struct.ql_rcv_buf_cb* %98, i32 %99, i32 %104)
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @LS_64BITS(i32 %106)
  %108 = call i8* @cpu_to_le32(i32 %107)
  %109 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %5, align 8
  %110 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %109, i32 0, i32 2
  store i8* %108, i8** %110, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @MS_64BITS(i32 %111)
  %113 = call i8* @cpu_to_le32(i32 %112)
  %114 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %5, align 8
  %115 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %114, i32 0, i32 1
  store i8* %113, i8** %115, align 8
  br label %116

116:                                              ; preds = %93
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %4, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %4, align 4
  br label %9

120:                                              ; preds = %9
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %120, %81, %29
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @ql_free_large_buffers(%struct.ql3_adapter*) #1

declare dso_local i32 @memset(%struct.ql_rcv_buf_cb*, i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.ql_rcv_buf_cb*, i32, i32) #1

declare dso_local i32 @dma_unmap_len_set(%struct.ql_rcv_buf_cb*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @LS_64BITS(i32) #1

declare dso_local i32 @MS_64BITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
