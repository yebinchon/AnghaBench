; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_init.c_netxen_release_tx_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_init.c_netxen_release_tx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32, i32, %struct.nx_host_tx_ring* }
%struct.nx_host_tx_ring = type { i32, %struct.netxen_cmd_buffer* }
%struct.netxen_cmd_buffer = type { i32, i32*, %struct.netxen_skb_frag* }
%struct.netxen_skb_frag = type { i64, i32 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netxen_release_tx_buffers(%struct.netxen_adapter* %0) #0 {
  %2 = alloca %struct.netxen_adapter*, align 8
  %3 = alloca %struct.netxen_cmd_buffer*, align 8
  %4 = alloca %struct.netxen_skb_frag*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nx_host_tx_ring*, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %2, align 8
  %8 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %8, i32 0, i32 2
  %10 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %9, align 8
  store %struct.nx_host_tx_ring* %10, %struct.nx_host_tx_ring** %7, align 8
  %11 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %7, align 8
  %15 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %14, i32 0, i32 1
  %16 = load %struct.netxen_cmd_buffer*, %struct.netxen_cmd_buffer** %15, align 8
  store %struct.netxen_cmd_buffer* %16, %struct.netxen_cmd_buffer** %3, align 8
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %92, %1
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %7, align 8
  %20 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %95

23:                                               ; preds = %17
  %24 = load %struct.netxen_cmd_buffer*, %struct.netxen_cmd_buffer** %3, align 8
  %25 = getelementptr inbounds %struct.netxen_cmd_buffer, %struct.netxen_cmd_buffer* %24, i32 0, i32 2
  %26 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %25, align 8
  store %struct.netxen_skb_frag* %26, %struct.netxen_skb_frag** %4, align 8
  %27 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %4, align 8
  %28 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %23
  %32 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %4, align 8
  %36 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %4, align 8
  %39 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %42 = call i32 @pci_unmap_single(i32 %34, i64 %37, i32 %40, i32 %41)
  %43 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %4, align 8
  %44 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %31, %23
  store i32 1, i32* %6, align 4
  br label %46

46:                                               ; preds = %74, %45
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.netxen_cmd_buffer*, %struct.netxen_cmd_buffer** %3, align 8
  %49 = getelementptr inbounds %struct.netxen_cmd_buffer, %struct.netxen_cmd_buffer* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %77

52:                                               ; preds = %46
  %53 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %4, align 8
  %54 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %53, i32 1
  store %struct.netxen_skb_frag* %54, %struct.netxen_skb_frag** %4, align 8
  %55 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %4, align 8
  %56 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %52
  %60 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %61 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %4, align 8
  %64 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %4, align 8
  %67 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %70 = call i32 @pci_unmap_page(i32 %62, i64 %65, i32 %68, i32 %69)
  %71 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %4, align 8
  %72 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %59, %52
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %46

77:                                               ; preds = %46
  %78 = load %struct.netxen_cmd_buffer*, %struct.netxen_cmd_buffer** %3, align 8
  %79 = getelementptr inbounds %struct.netxen_cmd_buffer, %struct.netxen_cmd_buffer* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load %struct.netxen_cmd_buffer*, %struct.netxen_cmd_buffer** %3, align 8
  %84 = getelementptr inbounds %struct.netxen_cmd_buffer, %struct.netxen_cmd_buffer* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @dev_kfree_skb_any(i32* %85)
  %87 = load %struct.netxen_cmd_buffer*, %struct.netxen_cmd_buffer** %3, align 8
  %88 = getelementptr inbounds %struct.netxen_cmd_buffer, %struct.netxen_cmd_buffer* %87, i32 0, i32 1
  store i32* null, i32** %88, align 8
  br label %89

89:                                               ; preds = %82, %77
  %90 = load %struct.netxen_cmd_buffer*, %struct.netxen_cmd_buffer** %3, align 8
  %91 = getelementptr inbounds %struct.netxen_cmd_buffer, %struct.netxen_cmd_buffer* %90, i32 1
  store %struct.netxen_cmd_buffer* %91, %struct.netxen_cmd_buffer** %3, align 8
  br label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %17

95:                                               ; preds = %17
  %96 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %97 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %96, i32 0, i32 0
  %98 = call i32 @spin_unlock_bh(i32* %97)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @pci_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @pci_unmap_page(i32, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
