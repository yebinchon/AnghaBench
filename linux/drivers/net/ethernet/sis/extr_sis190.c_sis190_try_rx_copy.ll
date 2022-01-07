; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sis/extr_sis190.c_sis190_try_rx_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sis/extr_sis190.c_sis190_try_rx_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis190_private = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }

@rx_copybreak = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sis190_private*, %struct.sk_buff**, i32, i32)* @sis190_try_rx_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis190_try_rx_copy(%struct.sis190_private* %0, %struct.sk_buff** %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sis190_private*, align 8
  %6 = alloca %struct.sk_buff**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.sis190_private* %0, %struct.sis190_private** %5, align 8
  store %struct.sk_buff** %1, %struct.sk_buff*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @rx_copybreak, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %44

15:                                               ; preds = %4
  %16 = load %struct.sis190_private*, %struct.sis190_private** %5, align 8
  %17 = getelementptr inbounds %struct.sis190_private, %struct.sis190_private* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(i32 %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %9, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  br label %44

24:                                               ; preds = %15
  %25 = load %struct.sis190_private*, %struct.sis190_private** %5, align 8
  %26 = getelementptr inbounds %struct.sis190_private, %struct.sis190_private* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.sis190_private*, %struct.sis190_private** %5, align 8
  %30 = getelementptr inbounds %struct.sis190_private, %struct.sis190_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %33 = call i32 @pci_dma_sync_single_for_cpu(i32 %27, i32 %28, i32 %31, i32 %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %35 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  %36 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %35, i64 0
  %37 = load %struct.sk_buff*, %struct.sk_buff** %36, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %34, i32 %39, i32 %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %43 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  store %struct.sk_buff* %42, %struct.sk_buff** %43, align 8
  store i32 1, i32* %10, align 4
  br label %44

44:                                               ; preds = %24, %23, %14
  %45 = load i32, i32* %10, align 4
  ret i32 %45
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(i32, i32) #1

declare dso_local i32 @pci_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
