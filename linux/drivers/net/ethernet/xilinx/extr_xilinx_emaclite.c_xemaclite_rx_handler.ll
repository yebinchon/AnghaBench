; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_emaclite.c_xemaclite_rx_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_emaclite.c_xemaclite_rx_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.net_local = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32, i64 }

@ETH_FRAME_LEN = common dso_local global i64 0, align 8
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@ALIGNMENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Could not allocate receive buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @xemaclite_rx_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xemaclite_rx_handler(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_local*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.net_local* @netdev_priv(%struct.net_device* %7)
  store %struct.net_local* %8, %struct.net_local** %3, align 8
  %9 = load i64, i64* @ETH_FRAME_LEN, align 8
  %10 = load i64, i64* @ETH_FCS_LEN, align 8
  %11 = add nsw i64 %9, %10
  store i64 %11, i64* %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @ALIGNMENT, align 8
  %15 = add nsw i64 %13, %14
  %16 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %12, i64 %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %4, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %1
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.net_local*, %struct.net_local** %3, align 8
  %26 = getelementptr inbounds %struct.net_local, %struct.net_local* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %91

30:                                               ; preds = %1
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @BUFFER_ALIGN(i64 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @skb_reserve(%struct.sk_buff* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %30
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = call i32 @skb_reserve(%struct.sk_buff* %42, i32 2)
  %44 = load %struct.net_local*, %struct.net_local** %3, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i32*
  %49 = load i64, i64* %6, align 8
  %50 = call i64 @xemaclite_recv_data(%struct.net_local* %44, i32* %48, i64 %49)
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %41
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %59)
  br label %91

61:                                               ; preds = %41
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @skb_put(%struct.sk_buff* %62, i64 %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = load %struct.net_device*, %struct.net_device** %2, align 8
  %67 = call i32 @eth_type_trans(%struct.sk_buff* %65, %struct.net_device* %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %70)
  %72 = load %struct.net_device*, %struct.net_device** %2, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load i64, i64* %6, align 8
  %78 = load %struct.net_device*, %struct.net_device** %2, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %77
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %80, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = call i32 @skb_defer_rx_timestamp(%struct.sk_buff* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %61
  %89 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %90 = call i32 @netif_rx(%struct.sk_buff* %89)
  br label %91

91:                                               ; preds = %19, %53, %88, %61
  ret void
}

declare dso_local %struct.net_local* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @BUFFER_ALIGN(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i64 @xemaclite_recv_data(%struct.net_local*, i32*, i64) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @skb_defer_rx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
