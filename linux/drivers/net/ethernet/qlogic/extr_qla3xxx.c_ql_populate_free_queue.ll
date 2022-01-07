; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_populate_free_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_populate_free_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql3_adapter = type { i32, i64, i32, i32, %struct.ql_rcv_buf_cb* }
%struct.ql_rcv_buf_cb = type { %struct.ql_rcv_buf_cb*, i8*, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed netdev_alloc_skb()\0A\00", align 1
@QL_HEADER_SPACE = common dso_local global i64 0, align 8
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"PCI mapping failed with error: %d\0A\00", align 1
@mapaddr = common dso_local global i32 0, align 4
@maplen = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql3_adapter*)* @ql_populate_free_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_populate_free_queue(%struct.ql3_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ql3_adapter*, align 8
  %4 = alloca %struct.ql_rcv_buf_cb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ql3_adapter* %0, %struct.ql3_adapter** %3, align 8
  %7 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %7, i32 0, i32 4
  %9 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %8, align 8
  store %struct.ql_rcv_buf_cb* %9, %struct.ql_rcv_buf_cb** %4, align 8
  br label %10

10:                                               ; preds = %116, %1
  %11 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %4, align 8
  %12 = icmp ne %struct.ql_rcv_buf_cb* %11, null
  br i1 %12, label %13, label %120

13:                                               ; preds = %10
  %14 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %4, align 8
  %15 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %14, i32 0, i32 3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %116, label %18

18:                                               ; preds = %13
  %19 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call %struct.TYPE_4__* @netdev_alloc_skb(i32 %21, i64 %24)
  %26 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %4, align 8
  %27 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %26, i32 0, i32 3
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %27, align 8
  %28 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %4, align 8
  %29 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %28, i32 0, i32 3
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %18
  %37 = load i32, i32* @KERN_DEBUG, align 4
  %38 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @netdev_printk(i32 %37, i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %120

42:                                               ; preds = %18
  %43 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %4, align 8
  %44 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %43, i32 0, i32 3
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i64, i64* @QL_HEADER_SPACE, align 8
  %47 = call i32 @skb_reserve(%struct.TYPE_4__* %45, i64 %46)
  %48 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %4, align 8
  %52 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %51, i32 0, i32 3
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %57 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @QL_HEADER_SPACE, align 8
  %60 = sub nsw i64 %58, %59
  %61 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %62 = call i32 @pci_map_single(i32 %50, i32 %55, i64 %60, i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %64 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @pci_dma_mapping_error(i32 %65, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %42
  %71 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %72 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @netdev_err(i32 %73, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %4, align 8
  %77 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %76, i32 0, i32 3
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = call i32 @dev_kfree_skb(%struct.TYPE_4__* %78)
  %80 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %4, align 8
  %81 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %80, i32 0, i32 3
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %81, align 8
  br label %120

82:                                               ; preds = %42
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @LS_64BITS(i32 %83)
  %85 = call i8* @cpu_to_le32(i32 %84)
  %86 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %4, align 8
  %87 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %86, i32 0, i32 2
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @MS_64BITS(i32 %88)
  %90 = call i8* @cpu_to_le32(i32 %89)
  %91 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %4, align 8
  %92 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %4, align 8
  %94 = load i32, i32* @mapaddr, align 4
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @dma_unmap_addr_set(%struct.ql_rcv_buf_cb* %93, i32 %94, i32 %95)
  %97 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %4, align 8
  %98 = load i32, i32* @maplen, align 4
  %99 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %100 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @QL_HEADER_SPACE, align 8
  %103 = sub nsw i64 %101, %102
  %104 = call i32 @dma_unmap_len_set(%struct.ql_rcv_buf_cb* %97, i32 %98, i64 %103)
  %105 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %106 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %106, align 8
  %109 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %110 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %82
  store i32 1, i32* %2, align 4
  br label %121

114:                                              ; preds = %82
  br label %115

115:                                              ; preds = %114
  br label %116

116:                                              ; preds = %115, %13
  %117 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %4, align 8
  %118 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %117, i32 0, i32 0
  %119 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %118, align 8
  store %struct.ql_rcv_buf_cb* %119, %struct.ql_rcv_buf_cb** %4, align 8
  br label %10

120:                                              ; preds = %70, %36, %10
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %120, %113
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local %struct.TYPE_4__* @netdev_alloc_skb(i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_printk(i32, i32, i8*) #1

declare dso_local i32 @skb_reserve(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @pci_map_single(i32, i32, i64, i32) #1

declare dso_local i32 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.TYPE_4__*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @LS_64BITS(i32) #1

declare dso_local i32 @MS_64BITS(i32) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.ql_rcv_buf_cb*, i32, i32) #1

declare dso_local i32 @dma_unmap_len_set(%struct.ql_rcv_buf_cb*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
