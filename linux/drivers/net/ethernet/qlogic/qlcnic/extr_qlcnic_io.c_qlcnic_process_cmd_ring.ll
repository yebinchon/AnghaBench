; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_process_cmd_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_process_cmd_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i64, %struct.net_device*, %struct.pci_dev* }
%struct.net_device = type { i32 }
%struct.pci_dev = type { i32 }
%struct.qlcnic_host_tx_ring = type { i64, i32, i32*, %struct.TYPE_2__, i32, i32, %struct.qlcnic_cmd_buffer* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.qlcnic_cmd_buffer = type { i32, i32*, %struct.qlcnic_skb_frag* }
%struct.qlcnic_skb_frag = type { i64, i32 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@TX_STOP_THRESH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_host_tx_ring*, i32)* @qlcnic_process_cmd_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_process_cmd_ring(%struct.qlcnic_adapter* %0, %struct.qlcnic_host_tx_ring* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.qlcnic_host_tx_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.qlcnic_cmd_buffer*, align 8
  %14 = alloca %struct.pci_dev*, align 8
  %15 = alloca %struct.net_device*, align 8
  %16 = alloca %struct.qlcnic_skb_frag*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store %struct.qlcnic_host_tx_ring* %1, %struct.qlcnic_host_tx_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %18 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %17, i32 0, i32 2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  store %struct.pci_dev* %19, %struct.pci_dev** %14, align 8
  %20 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %21 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %20, i32 0, i32 1
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  store %struct.net_device* %22, %struct.net_device** %15, align 8
  %23 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %24 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %23, i32 0, i32 1
  %25 = call i32 @spin_trylock(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %168

28:                                               ; preds = %3
  %29 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %30 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %8, align 8
  %32 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %33 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @le32_to_cpu(i32 %35)
  store i64 %36, i64* %9, align 8
  br label %37

37:                                               ; preds = %113, %28
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %114

41:                                               ; preds = %37
  %42 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %43 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %42, i32 0, i32 6
  %44 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %44, i64 %45
  store %struct.qlcnic_cmd_buffer* %46, %struct.qlcnic_cmd_buffer** %13, align 8
  %47 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %13, align 8
  %48 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %102

51:                                               ; preds = %41
  %52 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %13, align 8
  %53 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %52, i32 0, i32 2
  %54 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %53, align 8
  %55 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %54, i64 0
  store %struct.qlcnic_skb_frag* %55, %struct.qlcnic_skb_frag** %16, align 8
  %56 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %57 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %16, align 8
  %58 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %16, align 8
  %61 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %64 = call i32 @pci_unmap_single(%struct.pci_dev* %56, i64 %59, i32 %62, i32 %63)
  %65 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %16, align 8
  %66 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  store i32 1, i32* %10, align 4
  br label %67

67:                                               ; preds = %87, %51
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %13, align 8
  %70 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %67
  %74 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %16, align 8
  %75 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %74, i32 1
  store %struct.qlcnic_skb_frag* %75, %struct.qlcnic_skb_frag** %16, align 8
  %76 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %77 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %16, align 8
  %78 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %16, align 8
  %81 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %84 = call i32 @pci_unmap_page(%struct.pci_dev* %76, i64 %79, i32 %82, i32 %83)
  %85 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %16, align 8
  %86 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %85, i32 0, i32 0
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %73
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %67

90:                                               ; preds = %67
  %91 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %92 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  %96 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %13, align 8
  %97 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @dev_kfree_skb_any(i32* %98)
  %100 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %13, align 8
  %101 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %100, i32 0, i32 1
  store i32* null, i32** %101, align 8
  br label %102

102:                                              ; preds = %90, %41
  %103 = load i64, i64* %8, align 8
  %104 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %105 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @get_next_index(i64 %103, i32 %106)
  store i64 %107, i64* %8, align 8
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp sge i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %102
  br label %114

113:                                              ; preds = %102
  br label %37

114:                                              ; preds = %112, %37
  %115 = load i64, i64* %8, align 8
  %116 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %117 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %154

120:                                              ; preds = %114
  %121 = load %struct.net_device*, %struct.net_device** %15, align 8
  %122 = call i64 @netif_running(%struct.net_device* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %154

124:                                              ; preds = %120
  %125 = call i32 (...) @smp_mb()
  %126 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %127 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = call i64 @netif_tx_queue_stopped(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %151

131:                                              ; preds = %124
  %132 = load %struct.net_device*, %struct.net_device** %15, align 8
  %133 = call i64 @netif_carrier_ok(%struct.net_device* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %151

135:                                              ; preds = %131
  %136 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %137 = call i64 @qlcnic_tx_avail(%struct.qlcnic_host_tx_ring* %136)
  %138 = load i64, i64* @TX_STOP_THRESH, align 8
  %139 = icmp sgt i64 %137, %138
  br i1 %139, label %140, label %150

140:                                              ; preds = %135
  %141 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %142 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @netif_tx_wake_queue(i32 %143)
  %145 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %146 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 8
  br label %150

150:                                              ; preds = %140, %135
  br label %151

151:                                              ; preds = %150, %131, %124
  %152 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %153 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %152, i32 0, i32 0
  store i64 0, i64* %153, align 8
  br label %154

154:                                              ; preds = %151, %120, %114
  %155 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %156 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %157, align 4
  %159 = call i64 @le32_to_cpu(i32 %158)
  store i64 %159, i64* %9, align 8
  %160 = load i64, i64* %8, align 8
  %161 = load i64, i64* %9, align 8
  %162 = icmp eq i64 %160, %161
  %163 = zext i1 %162 to i32
  store i32 %163, i32* %11, align 4
  %164 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %165 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %164, i32 0, i32 1
  %166 = call i32 @spin_unlock(i32* %165)
  %167 = load i32, i32* %11, align 4
  store i32 %167, i32* %4, align 4
  br label %168

168:                                              ; preds = %154, %27
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local i32 @spin_trylock(i32*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @pci_unmap_single(%struct.pci_dev*, i64, i32, i32) #1

declare dso_local i32 @pci_unmap_page(%struct.pci_dev*, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i64 @get_next_index(i64, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @netif_tx_queue_stopped(i32) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i64 @qlcnic_tx_avail(%struct.qlcnic_host_tx_ring*) #1

declare dso_local i32 @netif_tx_wake_queue(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
