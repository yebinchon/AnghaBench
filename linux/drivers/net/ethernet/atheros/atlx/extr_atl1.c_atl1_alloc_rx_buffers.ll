; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_alloc_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_alloc_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1_adapter = type { i64, %struct.TYPE_2__, i32, %struct.pci_dev*, %struct.atl1_rfd_ring }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.atl1_rfd_ring = type { i64, i32, %struct.atl1_buffer* }
%struct.atl1_buffer = type { i32, i64, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.page = type { i32 }
%struct.rx_free_desc = type { i64, i32, i32 }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.atl1_adapter*)* @atl1_alloc_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @atl1_alloc_rx_buffers(%struct.atl1_adapter* %0) #0 {
  %2 = alloca %struct.atl1_adapter*, align 8
  %3 = alloca %struct.atl1_rfd_ring*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.atl1_buffer*, align 8
  %8 = alloca %struct.atl1_buffer*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.rx_free_desc*, align 8
  store %struct.atl1_adapter* %0, %struct.atl1_adapter** %2, align 8
  %14 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %14, i32 0, i32 4
  store %struct.atl1_rfd_ring* %15, %struct.atl1_rfd_ring** %3, align 8
  %16 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %16, i32 0, i32 3
  %18 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  store %struct.pci_dev* %18, %struct.pci_dev** %4, align 8
  store i64 0, i64* %10, align 8
  %19 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %3, align 8
  %20 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %19, i32 0, i32 1
  %21 = call i64 @atomic_read(i32* %20)
  store i64 %21, i64* %11, align 8
  store i64 %21, i64* %12, align 8
  %22 = load i64, i64* %12, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %12, align 8
  %24 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %3, align 8
  %25 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i64 0, i64* %12, align 8
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %3, align 8
  %31 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %30, i32 0, i32 2
  %32 = load %struct.atl1_buffer*, %struct.atl1_buffer** %31, align 8
  %33 = load i64, i64* %11, align 8
  %34 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %32, i64 %33
  store %struct.atl1_buffer* %34, %struct.atl1_buffer** %7, align 8
  %35 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %3, align 8
  %36 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %35, i32 0, i32 2
  %37 = load %struct.atl1_buffer*, %struct.atl1_buffer** %36, align 8
  %38 = load i64, i64* %12, align 8
  %39 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %37, i64 %38
  store %struct.atl1_buffer* %39, %struct.atl1_buffer** %8, align 8
  br label %40

40:                                               ; preds = %139, %29
  %41 = load %struct.atl1_buffer*, %struct.atl1_buffer** %7, align 8
  %42 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load %struct.atl1_buffer*, %struct.atl1_buffer** %8, align 8
  %47 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %45, %40
  %52 = phi i1 [ false, %40 ], [ %50, %45 ]
  br i1 %52, label %53, label %152

53:                                               ; preds = %51
  %54 = load %struct.atl1_buffer*, %struct.atl1_buffer** %7, align 8
  %55 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %54, i32 0, i32 3
  %56 = load %struct.sk_buff*, %struct.sk_buff** %55, align 8
  %57 = icmp ne %struct.sk_buff* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.atl1_buffer*, %struct.atl1_buffer** %7, align 8
  %60 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  br label %127

61:                                               ; preds = %53
  %62 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %3, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call %struct.rx_free_desc* @ATL1_RFD_DESC(%struct.atl1_rfd_ring* %62, i64 %63)
  store %struct.rx_free_desc* %64, %struct.rx_free_desc** %13, align 8
  %65 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %66 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %69 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(i32 %67, i64 %70)
  store %struct.sk_buff* %71, %struct.sk_buff** %9, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %73 = icmp ne %struct.sk_buff* %72, null
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %61
  %79 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %80 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  br label %152

84:                                               ; preds = %61
  %85 = load %struct.atl1_buffer*, %struct.atl1_buffer** %7, align 8
  %86 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %88 = load %struct.atl1_buffer*, %struct.atl1_buffer** %7, align 8
  %89 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %88, i32 0, i32 3
  store %struct.sk_buff* %87, %struct.sk_buff** %89, align 8
  %90 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %91 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.atl1_buffer*, %struct.atl1_buffer** %7, align 8
  %94 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call %struct.page* @virt_to_page(i32 %97)
  store %struct.page* %98, %struct.page** %5, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @offset_in_page(i32 %101)
  store i64 %102, i64* %6, align 8
  %103 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %104 = load %struct.page*, %struct.page** %5, align 8
  %105 = load i64, i64* %6, align 8
  %106 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %107 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %110 = call i32 @pci_map_page(%struct.pci_dev* %103, %struct.page* %104, i64 %105, i64 %108, i32 %109)
  %111 = load %struct.atl1_buffer*, %struct.atl1_buffer** %7, align 8
  %112 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = load %struct.atl1_buffer*, %struct.atl1_buffer** %7, align 8
  %114 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @cpu_to_le64(i32 %115)
  %117 = load %struct.rx_free_desc*, %struct.rx_free_desc** %13, align 8
  %118 = getelementptr inbounds %struct.rx_free_desc, %struct.rx_free_desc* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 4
  %119 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %120 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @cpu_to_le16(i64 %121)
  %123 = load %struct.rx_free_desc*, %struct.rx_free_desc** %13, align 8
  %124 = getelementptr inbounds %struct.rx_free_desc, %struct.rx_free_desc* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 8
  %125 = load %struct.rx_free_desc*, %struct.rx_free_desc** %13, align 8
  %126 = getelementptr inbounds %struct.rx_free_desc, %struct.rx_free_desc* %125, i32 0, i32 0
  store i64 0, i64* %126, align 8
  br label %127

127:                                              ; preds = %84, %58
  %128 = load i64, i64* %12, align 8
  store i64 %128, i64* %11, align 8
  %129 = load i64, i64* %12, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %12, align 8
  %131 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %3, align 8
  %132 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %130, %133
  %135 = zext i1 %134 to i32
  %136 = call i64 @unlikely(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %127
  store i64 0, i64* %12, align 8
  br label %139

139:                                              ; preds = %138, %127
  %140 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %3, align 8
  %141 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %140, i32 0, i32 2
  %142 = load %struct.atl1_buffer*, %struct.atl1_buffer** %141, align 8
  %143 = load i64, i64* %11, align 8
  %144 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %142, i64 %143
  store %struct.atl1_buffer* %144, %struct.atl1_buffer** %7, align 8
  %145 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %3, align 8
  %146 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %145, i32 0, i32 2
  %147 = load %struct.atl1_buffer*, %struct.atl1_buffer** %146, align 8
  %148 = load i64, i64* %12, align 8
  %149 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %147, i64 %148
  store %struct.atl1_buffer* %149, %struct.atl1_buffer** %8, align 8
  %150 = load i64, i64* %10, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %10, align 8
  br label %40

152:                                              ; preds = %78, %51
  %153 = load i64, i64* %10, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %152
  %156 = call i32 (...) @wmb()
  %157 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %3, align 8
  %158 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %157, i32 0, i32 1
  %159 = load i64, i64* %11, align 8
  %160 = trunc i64 %159 to i32
  %161 = call i32 @atomic_set(i32* %158, i32 %160)
  br label %162

162:                                              ; preds = %155, %152
  %163 = load i64, i64* %10, align 8
  ret i64 %163
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.rx_free_desc* @ATL1_RFD_DESC(%struct.atl1_rfd_ring*, i64) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.page* @virt_to_page(i32) #1

declare dso_local i64 @offset_in_page(i32) #1

declare dso_local i32 @pci_map_page(%struct.pci_dev*, %struct.page*, i64, i64, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
