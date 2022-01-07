; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_init.c_qlcnic_release_tx_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_init.c_qlcnic_release_tx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32 }
%struct.qlcnic_host_tx_ring = type { i32, i32, %struct.qlcnic_cmd_buffer* }
%struct.qlcnic_cmd_buffer = type { i32, i32*, %struct.qlcnic_skb_frag* }
%struct.qlcnic_skb_frag = type { i64, i32 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_release_tx_buffers(%struct.qlcnic_adapter* %0, %struct.qlcnic_host_tx_ring* %1) #0 {
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_host_tx_ring*, align 8
  %5 = alloca %struct.qlcnic_cmd_buffer*, align 8
  %6 = alloca %struct.qlcnic_skb_frag*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store %struct.qlcnic_host_tx_ring* %1, %struct.qlcnic_host_tx_ring** %4, align 8
  %9 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %4, align 8
  %10 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %9, i32 0, i32 1
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %4, align 8
  %13 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %12, i32 0, i32 2
  %14 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %13, align 8
  store %struct.qlcnic_cmd_buffer* %14, %struct.qlcnic_cmd_buffer** %5, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %90, %2
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %4, align 8
  %18 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %93

21:                                               ; preds = %15
  %22 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %5, align 8
  %23 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %22, i32 0, i32 2
  %24 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %23, align 8
  store %struct.qlcnic_skb_frag* %24, %struct.qlcnic_skb_frag** %6, align 8
  %25 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %6, align 8
  %26 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %21
  %30 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %6, align 8
  %34 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %6, align 8
  %37 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %40 = call i32 @pci_unmap_single(i32 %32, i64 %35, i32 %38, i32 %39)
  %41 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %6, align 8
  %42 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %29, %21
  store i32 1, i32* %8, align 4
  br label %44

44:                                               ; preds = %72, %43
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %5, align 8
  %47 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %75

50:                                               ; preds = %44
  %51 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %6, align 8
  %52 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %51, i32 1
  store %struct.qlcnic_skb_frag* %52, %struct.qlcnic_skb_frag** %6, align 8
  %53 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %6, align 8
  %54 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %50
  %58 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %6, align 8
  %62 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %6, align 8
  %65 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %68 = call i32 @pci_unmap_page(i32 %60, i64 %63, i32 %66, i32 %67)
  %69 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %6, align 8
  %70 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %57, %50
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %44

75:                                               ; preds = %44
  %76 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %5, align 8
  %77 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %5, align 8
  %82 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @dev_kfree_skb_any(i32* %83)
  %85 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %5, align 8
  %86 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %85, i32 0, i32 1
  store i32* null, i32** %86, align 8
  br label %87

87:                                               ; preds = %80, %75
  %88 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %5, align 8
  %89 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %88, i32 1
  store %struct.qlcnic_cmd_buffer* %89, %struct.qlcnic_cmd_buffer** %5, align 8
  br label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %15

93:                                               ; preds = %15
  %94 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %4, align 8
  %95 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %94, i32 0, i32 1
  %96 = call i32 @spin_unlock(i32* %95)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pci_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @pci_unmap_page(i32, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
