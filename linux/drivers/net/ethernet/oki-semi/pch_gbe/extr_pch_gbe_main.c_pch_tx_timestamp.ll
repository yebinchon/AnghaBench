; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_tx_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_tx_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { %struct.pci_dev*, i64 }
%struct.pci_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.skb_shared_hwtstamps = type { i32 }
%struct.skb_shared_info = type { i32 }

@SKBTX_HW_TSTAMP = common dso_local global i32 0, align 4
@SKBTX_IN_PROGRESS = common dso_local global i32 0, align 4
@TX_SNAPSHOT_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_gbe_adapter*, %struct.sk_buff*)* @pch_tx_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_tx_timestamp(%struct.pch_gbe_adapter* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.pch_gbe_adapter*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.skb_shared_hwtstamps, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.skb_shared_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pch_gbe_adapter* %0, %struct.pch_gbe_adapter** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %11)
  store %struct.skb_shared_info* %12, %struct.skb_shared_info** %7, align 8
  %13 = load %struct.skb_shared_info*, %struct.skb_shared_info** %7, align 8
  %14 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SKBTX_HW_TSTAMP, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %19, %2
  %25 = phi i1 [ false, %2 ], [ %23, %19 ]
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @likely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %80

31:                                               ; preds = %24
  %32 = load i32, i32* @SKBTX_IN_PROGRESS, align 4
  %33 = load %struct.skb_shared_info*, %struct.skb_shared_info** %7, align 8
  %34 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %37, i32 0, i32 0
  %39 = load %struct.pci_dev*, %struct.pci_dev** %38, align 8
  store %struct.pci_dev* %39, %struct.pci_dev** %6, align 8
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %53, %31
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 100
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %45 = call i32 @pch_ch_event_read(%struct.pci_dev* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @TX_SNAPSHOT_LOCKED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %56

51:                                               ; preds = %43
  %52 = call i32 @udelay(i32 1)
  br label %53

53:                                               ; preds = %51
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %40

56:                                               ; preds = %50, %40
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @TX_SNAPSHOT_LOCKED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @SKBTX_IN_PROGRESS, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.skb_shared_info*, %struct.skb_shared_info** %7, align 8
  %65 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %80

68:                                               ; preds = %56
  %69 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %70 = call i32 @pch_tx_snap_read(%struct.pci_dev* %69)
  store i32 %70, i32* %8, align 4
  %71 = call i32 @memset(%struct.skb_shared_hwtstamps* %5, i32 0, i32 4)
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @ns_to_ktime(i32 %72)
  %74 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %5, i32 0, i32 0
  store i32 %73, i32* %74, align 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = call i32 @skb_tstamp_tx(%struct.sk_buff* %75, %struct.skb_shared_hwtstamps* %5)
  %77 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %78 = load i32, i32* @TX_SNAPSHOT_LOCKED, align 4
  %79 = call i32 @pch_ch_event_write(%struct.pci_dev* %77, i32 %78)
  br label %80

80:                                               ; preds = %68, %61, %30
  ret void
}

declare dso_local %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @pch_ch_event_read(%struct.pci_dev*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pch_tx_snap_read(%struct.pci_dev*) #1

declare dso_local i32 @memset(%struct.skb_shared_hwtstamps*, i32, i32) #1

declare dso_local i32 @ns_to_ktime(i32) #1

declare dso_local i32 @skb_tstamp_tx(%struct.sk_buff*, %struct.skb_shared_hwtstamps*) #1

declare dso_local i32 @pch_ch_event_write(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
