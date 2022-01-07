; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_alloc_rx_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_alloc_rx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_adapter = type { i32, i32, i64, %struct.pci_dev*, %struct.atl1c_rfd_ring }
%struct.pci_dev = type { i32 }
%struct.atl1c_rfd_ring = type { i64, i64, %struct.atl1c_buffer* }
%struct.atl1c_buffer = type { i32, i32, i64, %struct.sk_buff* }
%struct.sk_buff = type { i8* }
%struct.atl1c_rx_free_desc = type { i32 }

@ATL1C_BUFFER_FREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"alloc rx buffer failed\0A\00", align 1
@ATL1C_BUFFER_BUSY = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@rx_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"RX pci_map_single failed\00", align 1
@ATL1C_PCIMAP_SINGLE = common dso_local global i32 0, align 4
@ATL1C_PCIMAP_FROMDEVICE = common dso_local global i32 0, align 4
@REG_MB_RFD0_PROD_IDX = common dso_local global i32 0, align 4
@MB_RFDX_PROD_IDX_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl1c_adapter*)* @atl1c_alloc_rx_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1c_alloc_rx_buffer(%struct.atl1c_adapter* %0) #0 {
  %2 = alloca %struct.atl1c_adapter*, align 8
  %3 = alloca %struct.atl1c_rfd_ring*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.atl1c_buffer*, align 8
  %6 = alloca %struct.atl1c_buffer*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.atl1c_rx_free_desc*, align 8
  %13 = alloca i32, align 4
  store %struct.atl1c_adapter* %0, %struct.atl1c_adapter** %2, align 8
  %14 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %14, i32 0, i32 4
  store %struct.atl1c_rfd_ring* %15, %struct.atl1c_rfd_ring** %3, align 8
  %16 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %16, i32 0, i32 3
  %18 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  store %struct.pci_dev* %18, %struct.pci_dev** %4, align 8
  store i8* null, i8** %8, align 8
  store i64 0, i64* %9, align 8
  %19 = load %struct.atl1c_rfd_ring*, %struct.atl1c_rfd_ring** %3, align 8
  %20 = getelementptr inbounds %struct.atl1c_rfd_ring, %struct.atl1c_rfd_ring* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %11, align 8
  %24 = load %struct.atl1c_rfd_ring*, %struct.atl1c_rfd_ring** %3, align 8
  %25 = getelementptr inbounds %struct.atl1c_rfd_ring, %struct.atl1c_rfd_ring* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i64 0, i64* %11, align 8
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.atl1c_rfd_ring*, %struct.atl1c_rfd_ring** %3, align 8
  %31 = getelementptr inbounds %struct.atl1c_rfd_ring, %struct.atl1c_rfd_ring* %30, i32 0, i32 2
  %32 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %31, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %32, i64 %33
  store %struct.atl1c_buffer* %34, %struct.atl1c_buffer** %5, align 8
  %35 = load %struct.atl1c_rfd_ring*, %struct.atl1c_rfd_ring** %3, align 8
  %36 = getelementptr inbounds %struct.atl1c_rfd_ring, %struct.atl1c_rfd_ring* %35, i32 0, i32 2
  %37 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %36, align 8
  %38 = load i64, i64* %11, align 8
  %39 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %37, i64 %38
  store %struct.atl1c_buffer* %39, %struct.atl1c_buffer** %6, align 8
  br label %40

40:                                               ; preds = %133, %29
  %41 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %6, align 8
  %42 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @ATL1C_BUFFER_FREE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %146

47:                                               ; preds = %40
  %48 = load %struct.atl1c_rfd_ring*, %struct.atl1c_rfd_ring** %3, align 8
  %49 = load i64, i64* %10, align 8
  %50 = call %struct.atl1c_rx_free_desc* @ATL1C_RFD_DESC(%struct.atl1c_rfd_ring* %48, i64 %49)
  store %struct.atl1c_rx_free_desc* %50, %struct.atl1c_rx_free_desc** %12, align 8
  %51 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %52 = call %struct.sk_buff* @atl1c_alloc_skb(%struct.atl1c_adapter* %51)
  store %struct.sk_buff* %52, %struct.sk_buff** %7, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %54 = icmp ne %struct.sk_buff* %53, null
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %47
  %60 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %61 = call i64 @netif_msg_rx_err(%struct.atl1c_adapter* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 0
  %66 = call i32 @dev_warn(i32* %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %67

67:                                               ; preds = %63, %59
  br label %146

68:                                               ; preds = %47
  %69 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %8, align 8
  %72 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %5, align 8
  %73 = load i32, i32* @ATL1C_BUFFER_BUSY, align 4
  %74 = call i32 @ATL1C_SET_BUFFER_STATE(%struct.atl1c_buffer* %72, i32 %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %76 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %5, align 8
  %77 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %76, i32 0, i32 3
  store %struct.sk_buff* %75, %struct.sk_buff** %77, align 8
  %78 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %79 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %5, align 8
  %82 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %81, i32 0, i32 2
  store i64 %80, i64* %82, align 8
  %83 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %5, align 8
  %86 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %89 = call i32 @pci_map_single(%struct.pci_dev* %83, i8* %84, i64 %87, i32 %88)
  store i32 %89, i32* %13, align 4
  %90 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @pci_dma_mapping_error(%struct.pci_dev* %90, i32 %91)
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %68
  %96 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %97 = call i32 @dev_kfree_skb(%struct.sk_buff* %96)
  %98 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %5, align 8
  %99 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %98, i32 0, i32 3
  store %struct.sk_buff* null, %struct.sk_buff** %99, align 8
  %100 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %5, align 8
  %101 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %100, i32 0, i32 2
  store i64 0, i64* %101, align 8
  %102 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %5, align 8
  %103 = load i32, i32* @ATL1C_BUFFER_FREE, align 4
  %104 = call i32 @ATL1C_SET_BUFFER_STATE(%struct.atl1c_buffer* %102, i32 %103)
  %105 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %106 = load i32, i32* @rx_err, align 4
  %107 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %108 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @netif_warn(%struct.atl1c_adapter* %105, i32 %106, i32 %109, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %146

111:                                              ; preds = %68
  %112 = load i32, i32* %13, align 4
  %113 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %5, align 8
  %114 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %5, align 8
  %116 = load i32, i32* @ATL1C_PCIMAP_SINGLE, align 4
  %117 = load i32, i32* @ATL1C_PCIMAP_FROMDEVICE, align 4
  %118 = call i32 @ATL1C_SET_PCIMAP_TYPE(%struct.atl1c_buffer* %115, i32 %116, i32 %117)
  %119 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %5, align 8
  %120 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @cpu_to_le64(i32 %121)
  %123 = load %struct.atl1c_rx_free_desc*, %struct.atl1c_rx_free_desc** %12, align 8
  %124 = getelementptr inbounds %struct.atl1c_rx_free_desc, %struct.atl1c_rx_free_desc* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  %125 = load i64, i64* %11, align 8
  store i64 %125, i64* %10, align 8
  %126 = load i64, i64* %11, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %11, align 8
  %128 = load %struct.atl1c_rfd_ring*, %struct.atl1c_rfd_ring** %3, align 8
  %129 = getelementptr inbounds %struct.atl1c_rfd_ring, %struct.atl1c_rfd_ring* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %127, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %111
  store i64 0, i64* %11, align 8
  br label %133

133:                                              ; preds = %132, %111
  %134 = load %struct.atl1c_rfd_ring*, %struct.atl1c_rfd_ring** %3, align 8
  %135 = getelementptr inbounds %struct.atl1c_rfd_ring, %struct.atl1c_rfd_ring* %134, i32 0, i32 2
  %136 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %135, align 8
  %137 = load i64, i64* %10, align 8
  %138 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %136, i64 %137
  store %struct.atl1c_buffer* %138, %struct.atl1c_buffer** %5, align 8
  %139 = load %struct.atl1c_rfd_ring*, %struct.atl1c_rfd_ring** %3, align 8
  %140 = getelementptr inbounds %struct.atl1c_rfd_ring, %struct.atl1c_rfd_ring* %139, i32 0, i32 2
  %141 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %140, align 8
  %142 = load i64, i64* %11, align 8
  %143 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %141, i64 %142
  store %struct.atl1c_buffer* %143, %struct.atl1c_buffer** %6, align 8
  %144 = load i64, i64* %9, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %9, align 8
  br label %40

146:                                              ; preds = %95, %67, %40
  %147 = load i64, i64* %9, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %165

149:                                              ; preds = %146
  %150 = call i32 (...) @wmb()
  %151 = load i64, i64* %10, align 8
  %152 = load %struct.atl1c_rfd_ring*, %struct.atl1c_rfd_ring** %3, align 8
  %153 = getelementptr inbounds %struct.atl1c_rfd_ring, %struct.atl1c_rfd_ring* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  %154 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %155 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %154, i32 0, i32 0
  %156 = load i32, i32* @REG_MB_RFD0_PROD_IDX, align 4
  %157 = load %struct.atl1c_rfd_ring*, %struct.atl1c_rfd_ring** %3, align 8
  %158 = getelementptr inbounds %struct.atl1c_rfd_ring, %struct.atl1c_rfd_ring* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i32, i32* @MB_RFDX_PROD_IDX_MASK, align 4
  %161 = sext i32 %160 to i64
  %162 = and i64 %159, %161
  %163 = trunc i64 %162 to i32
  %164 = call i32 @AT_WRITE_REG(i32* %155, i32 %156, i32 %163)
  br label %165

165:                                              ; preds = %149, %146
  %166 = load i64, i64* %9, align 8
  %167 = trunc i64 %166 to i32
  ret i32 %167
}

declare dso_local %struct.atl1c_rx_free_desc* @ATL1C_RFD_DESC(%struct.atl1c_rfd_ring*, i64) #1

declare dso_local %struct.sk_buff* @atl1c_alloc_skb(%struct.atl1c_adapter*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @netif_msg_rx_err(%struct.atl1c_adapter*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @ATL1C_SET_BUFFER_STATE(%struct.atl1c_buffer*, i32) #1

declare dso_local i32 @pci_map_single(%struct.pci_dev*, i8*, i64, i32) #1

declare dso_local i32 @pci_dma_mapping_error(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @netif_warn(%struct.atl1c_adapter*, i32, i32, i8*) #1

declare dso_local i32 @ATL1C_SET_PCIMAP_TYPE(%struct.atl1c_buffer*, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @AT_WRITE_REG(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
