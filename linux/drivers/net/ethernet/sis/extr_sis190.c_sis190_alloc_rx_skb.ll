; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sis/extr_sis190.c_sis190_alloc_rx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sis/extr_sis190.c_sis190_alloc_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sis190_private = type { i32, i32, i32 }
%struct.RxDesc = type { i32 }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sis190_private*, %struct.RxDesc*)* @sis190_alloc_rx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @sis190_alloc_rx_skb(%struct.sis190_private* %0, %struct.RxDesc* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sis190_private*, align 8
  %5 = alloca %struct.RxDesc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.sis190_private* %0, %struct.sis190_private** %4, align 8
  store %struct.RxDesc* %1, %struct.RxDesc** %5, align 8
  %9 = load %struct.sis190_private*, %struct.sis190_private** %4, align 8
  %10 = getelementptr inbounds %struct.sis190_private, %struct.sis190_private* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.sis190_private*, %struct.sis190_private** %4, align 8
  %13 = getelementptr inbounds %struct.sis190_private, %struct.sis190_private* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.sk_buff* @netdev_alloc_skb(i32 %14, i32 %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %52

24:                                               ; preds = %2
  %25 = load %struct.sis190_private*, %struct.sis190_private** %4, align 8
  %26 = getelementptr inbounds %struct.sis190_private, %struct.sis190_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sis190_private*, %struct.sis190_private** %4, align 8
  %32 = getelementptr inbounds %struct.sis190_private, %struct.sis190_private* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %35 = call i32 @pci_map_single(i32 %27, i32 %30, i32 %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.sis190_private*, %struct.sis190_private** %4, align 8
  %37 = getelementptr inbounds %struct.sis190_private, %struct.sis190_private* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @pci_dma_mapping_error(i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %24
  br label %49

43:                                               ; preds = %24
  %44 = load %struct.RxDesc*, %struct.RxDesc** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @sis190_map_to_asic(%struct.RxDesc* %44, i32 %45, i32 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %48, %struct.sk_buff** %3, align 8
  br label %55

49:                                               ; preds = %42
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %50)
  br label %52

52:                                               ; preds = %49, %23
  %53 = load %struct.RxDesc*, %struct.RxDesc** %5, align 8
  %54 = call i32 @sis190_make_unusable_by_asic(%struct.RxDesc* %53)
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %55

55:                                               ; preds = %52, %43
  %56 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %56
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @sis190_map_to_asic(%struct.RxDesc*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @sis190_make_unusable_by_asic(%struct.RxDesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
