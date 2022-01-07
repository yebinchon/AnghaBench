; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_release_to_lrg_buf_free_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_release_to_lrg_buf_free_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql3_adapter = type { i32, i64, i32, i32, i32, %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb* }
%struct.ql_rcv_buf_cb = type { i8*, i8*, %struct.TYPE_4__*, %struct.ql_rcv_buf_cb* }
%struct.TYPE_4__ = type { i32 }

@QL_HEADER_SPACE = common dso_local global i64 0, align 8
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"PCI mapping failed with error: %d\0A\00", align 1
@mapaddr = common dso_local global i32 0, align 4
@maplen = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql3_adapter*, %struct.ql_rcv_buf_cb*)* @ql_release_to_lrg_buf_free_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_release_to_lrg_buf_free_list(%struct.ql3_adapter* %0, %struct.ql_rcv_buf_cb* %1) #0 {
  %3 = alloca %struct.ql3_adapter*, align 8
  %4 = alloca %struct.ql_rcv_buf_cb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ql3_adapter* %0, %struct.ql3_adapter** %3, align 8
  store %struct.ql_rcv_buf_cb* %1, %struct.ql_rcv_buf_cb** %4, align 8
  %7 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %4, align 8
  %8 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %7, i32 0, i32 3
  store %struct.ql_rcv_buf_cb* null, %struct.ql_rcv_buf_cb** %8, align 8
  %9 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %9, i32 0, i32 5
  %11 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %10, align 8
  %12 = icmp eq %struct.ql_rcv_buf_cb* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %4, align 8
  %15 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %15, i32 0, i32 5
  store %struct.ql_rcv_buf_cb* %14, %struct.ql_rcv_buf_cb** %16, align 8
  %17 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %17, i32 0, i32 6
  store %struct.ql_rcv_buf_cb* %14, %struct.ql_rcv_buf_cb** %18, align 8
  br label %28

19:                                               ; preds = %2
  %20 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %4, align 8
  %21 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %21, i32 0, i32 5
  %23 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %22, align 8
  %24 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %23, i32 0, i32 3
  store %struct.ql_rcv_buf_cb* %20, %struct.ql_rcv_buf_cb** %24, align 8
  %25 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %4, align 8
  %26 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %26, i32 0, i32 5
  store %struct.ql_rcv_buf_cb* %25, %struct.ql_rcv_buf_cb** %27, align 8
  br label %28

28:                                               ; preds = %19, %13
  %29 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %4, align 8
  %30 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %124, label %33

33:                                               ; preds = %28
  %34 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call %struct.TYPE_4__* @netdev_alloc_skb(i32 %36, i64 %39)
  %41 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %4, align 8
  %42 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %41, i32 0, i32 2
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %42, align 8
  %43 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %4, align 8
  %44 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = icmp ne %struct.TYPE_4__* %45, null
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %33
  %52 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  br label %123

56:                                               ; preds = %33
  %57 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %4, align 8
  %58 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i64, i64* @QL_HEADER_SPACE, align 8
  %61 = call i32 @skb_reserve(%struct.TYPE_4__* %59, i64 %60)
  %62 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %63 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %4, align 8
  %66 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @QL_HEADER_SPACE, align 8
  %74 = sub nsw i64 %72, %73
  %75 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %76 = call i32 @pci_map_single(i32 %64, i32 %69, i64 %74, i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %78 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @pci_dma_mapping_error(i32 %79, i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %56
  %85 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %86 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @netdev_err(i32 %87, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %4, align 8
  %91 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %90, i32 0, i32 2
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = call i32 @dev_kfree_skb(%struct.TYPE_4__* %92)
  %94 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %4, align 8
  %95 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %94, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %95, align 8
  %96 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %97 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 8
  br label %129

100:                                              ; preds = %56
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @LS_64BITS(i32 %101)
  %103 = call i8* @cpu_to_le32(i32 %102)
  %104 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %4, align 8
  %105 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %104, i32 0, i32 1
  store i8* %103, i8** %105, align 8
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @MS_64BITS(i32 %106)
  %108 = call i8* @cpu_to_le32(i32 %107)
  %109 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %4, align 8
  %110 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  %111 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %4, align 8
  %112 = load i32, i32* @mapaddr, align 4
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @dma_unmap_addr_set(%struct.ql_rcv_buf_cb* %111, i32 %112, i32 %113)
  %115 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %4, align 8
  %116 = load i32, i32* @maplen, align 4
  %117 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %118 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @QL_HEADER_SPACE, align 8
  %121 = sub nsw i64 %119, %120
  %122 = call i32 @dma_unmap_len_set(%struct.ql_rcv_buf_cb* %115, i32 %116, i64 %121)
  br label %123

123:                                              ; preds = %100, %51
  br label %124

124:                                              ; preds = %123, %28
  %125 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %126 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %124, %84
  ret void
}

declare dso_local %struct.TYPE_4__* @netdev_alloc_skb(i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

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
