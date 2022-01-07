; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hippi/extr_rrunner.c_rr_raz_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hippi/extr_rrunner.c_rr_raz_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rr_private = type { %struct.sk_buff**, i32, %struct.rx_desc* }
%struct.sk_buff = type { i32 }
%struct.rx_desc = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i64 }

@RX_RING_ENTRIES = common dso_local global i32 0, align 4
@HIPPI_HLEN = common dso_local global i64 0, align 8
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rr_private*, %struct.net_device*)* @rr_raz_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rr_raz_rx(%struct.rr_private* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.rr_private*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.rx_desc*, align 8
  store %struct.rr_private* %0, %struct.rr_private** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %57, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @RX_RING_ENTRIES, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %60

12:                                               ; preds = %8
  %13 = load %struct.rr_private*, %struct.rr_private** %3, align 8
  %14 = getelementptr inbounds %struct.rr_private, %struct.rr_private* %13, i32 0, i32 0
  %15 = load %struct.sk_buff**, %struct.sk_buff*** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %15, i64 %17
  %19 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  store %struct.sk_buff* %19, %struct.sk_buff** %6, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %22, label %56

22:                                               ; preds = %12
  %23 = load %struct.rr_private*, %struct.rr_private** %3, align 8
  %24 = getelementptr inbounds %struct.rr_private, %struct.rr_private* %23, i32 0, i32 2
  %25 = load %struct.rx_desc*, %struct.rx_desc** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %25, i64 %27
  store %struct.rx_desc* %28, %struct.rx_desc** %7, align 8
  %29 = load %struct.rr_private*, %struct.rr_private** %3, align 8
  %30 = getelementptr inbounds %struct.rr_private, %struct.rr_private* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.rx_desc*, %struct.rx_desc** %7, align 8
  %33 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @HIPPI_HLEN, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %42 = call i32 @pci_unmap_single(i32 %31, i32 %35, i64 %40, i32 %41)
  %43 = load %struct.rx_desc*, %struct.rx_desc** %7, align 8
  %44 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.rx_desc*, %struct.rx_desc** %7, align 8
  %46 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %45, i32 0, i32 0
  %47 = call i32 @set_rraddr(%struct.TYPE_2__* %46, i32 0)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = call i32 @dev_kfree_skb(%struct.sk_buff* %48)
  %50 = load %struct.rr_private*, %struct.rr_private** %3, align 8
  %51 = getelementptr inbounds %struct.rr_private, %struct.rr_private* %50, i32 0, i32 0
  %52 = load %struct.sk_buff**, %struct.sk_buff*** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %52, i64 %54
  store %struct.sk_buff* null, %struct.sk_buff** %55, align 8
  br label %56

56:                                               ; preds = %22, %12
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %8

60:                                               ; preds = %8
  ret void
}

declare dso_local i32 @pci_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @set_rraddr(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
