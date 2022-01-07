; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_rx_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_rx_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { %struct.pci_dev*, i32 }
%struct.pci_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.skb_shared_hwtstamps = type { i32 }

@RX_SNAPSHOT_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_gbe_adapter*, %struct.sk_buff*)* @pch_rx_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_rx_timestamp(%struct.pch_gbe_adapter* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.pch_gbe_adapter*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.skb_shared_hwtstamps*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pch_gbe_adapter* %0, %struct.pch_gbe_adapter** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %13 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %64

18:                                               ; preds = %2
  %19 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %19, i32 0, i32 0
  %21 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  store %struct.pci_dev* %21, %struct.pci_dev** %6, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %23 = call i32 @pch_ch_event_read(%struct.pci_dev* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @RX_SNAPSHOT_LOCKED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  br label %64

29:                                               ; preds = %18
  %30 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %31 = call i32 @pch_src_uuid_lo_read(%struct.pci_dev* %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %33 = call i32 @pch_src_uuid_hi_read(%struct.pci_dev* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, 65535
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %8, align 4
  %37 = ashr i32 %36, 16
  %38 = and i32 %37, 65535
  store i32 %38, i32* %12, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @htons(i32 %40)
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @htonl(i32 %42)
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @htons(i32 %44)
  %46 = call i32 @pch_ptp_match(%struct.sk_buff* %39, i32 %41, i32 %43, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %29
  br label %60

49:                                               ; preds = %29
  %50 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %51 = call i32 @pch_rx_snap_read(%struct.pci_dev* %50)
  store i32 %51, i32* %7, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = call %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff* %52)
  store %struct.skb_shared_hwtstamps* %53, %struct.skb_shared_hwtstamps** %5, align 8
  %54 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %5, align 8
  %55 = call i32 @memset(%struct.skb_shared_hwtstamps* %54, i32 0, i32 4)
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @ns_to_ktime(i32 %56)
  %58 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %5, align 8
  %59 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %49, %48
  %61 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %62 = load i32, i32* @RX_SNAPSHOT_LOCKED, align 4
  %63 = call i32 @pch_ch_event_write(%struct.pci_dev* %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %28, %17
  ret void
}

declare dso_local i32 @pch_ch_event_read(%struct.pci_dev*) #1

declare dso_local i32 @pch_src_uuid_lo_read(%struct.pci_dev*) #1

declare dso_local i32 @pch_src_uuid_hi_read(%struct.pci_dev*) #1

declare dso_local i32 @pch_ptp_match(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @pch_rx_snap_read(%struct.pci_dev*) #1

declare dso_local %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.skb_shared_hwtstamps*, i32, i32) #1

declare dso_local i32 @ns_to_ktime(i32) #1

declare dso_local i32 @pch_ch_event_write(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
