; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/nxp/extr_lpc_eth.c_lpc_eth_hard_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/nxp/extr_lpc_eth.c_lpc_eth_hard_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.net_device = type { i32 }
%struct.netdata_local = type { i32, i64*, i64*, i32, i32, i64, %struct.txrx_desc_t* }
%struct.txrx_desc_t = type { i64 }

@ENET_TX_DESC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"BUG! TX request when no free TX buffers!\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@TXDESC_CONTROL_LAST = common dso_local global i64 0, align 8
@TXDESC_CONTROL_INT = common dso_local global i64 0, align 8
@ENET_MAXF_SIZE = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @lpc_eth_hard_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc_eth_hard_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.netdata_local*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.txrx_desc_t*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.netdata_local* @netdev_priv(%struct.net_device* %11)
  store %struct.netdata_local* %12, %struct.netdata_local** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.netdata_local*, %struct.netdata_local** %6, align 8
  %17 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %16, i32 0, i32 3
  %18 = call i32 @spin_lock_irq(i32* %17)
  %19 = load %struct.netdata_local*, %struct.netdata_local** %6, align 8
  %20 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ENET_TX_DESC, align 4
  %23 = sub nsw i32 %22, 1
  %24 = icmp sge i32 %21, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = call i32 @netif_stop_queue(%struct.net_device* %26)
  %28 = load %struct.netdata_local*, %struct.netdata_local** %6, align 8
  %29 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %28, i32 0, i32 3
  %30 = call i32 @spin_unlock_irq(i32* %29)
  %31 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %32, i32* %3, align 4
  br label %110

33:                                               ; preds = %2
  %34 = load %struct.netdata_local*, %struct.netdata_local** %6, align 8
  %35 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @LPC_ENET_TXPRODUCEINDEX(i32 %36)
  %38 = call i64 @readl(i32 %37)
  store i64 %38, i64* %8, align 8
  %39 = load %struct.netdata_local*, %struct.netdata_local** %6, align 8
  %40 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  store i64* %43, i64** %9, align 8
  %44 = load i64*, i64** %9, align 8
  store i64 0, i64* %44, align 8
  %45 = load %struct.netdata_local*, %struct.netdata_local** %6, align 8
  %46 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %45, i32 0, i32 6
  %47 = load %struct.txrx_desc_t*, %struct.txrx_desc_t** %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds %struct.txrx_desc_t, %struct.txrx_desc_t* %47, i64 %48
  store %struct.txrx_desc_t* %49, %struct.txrx_desc_t** %10, align 8
  %50 = load i64, i64* %7, align 8
  %51 = sub i64 %50, 1
  %52 = load i64, i64* @TXDESC_CONTROL_LAST, align 8
  %53 = or i64 %51, %52
  %54 = load i64, i64* @TXDESC_CONTROL_INT, align 8
  %55 = or i64 %53, %54
  %56 = load %struct.txrx_desc_t*, %struct.txrx_desc_t** %10, align 8
  %57 = getelementptr inbounds %struct.txrx_desc_t, %struct.txrx_desc_t* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.netdata_local*, %struct.netdata_local** %6, align 8
  %59 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @ENET_MAXF_SIZE, align 8
  %63 = mul i64 %61, %62
  %64 = add i64 %60, %63
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @memcpy(i64 %64, i32 %67, i64 %68)
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.netdata_local*, %struct.netdata_local** %6, align 8
  %72 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %71, i32 0, i32 2
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* %8, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  store i64 %70, i64* %75, align 8
  %76 = load %struct.netdata_local*, %struct.netdata_local** %6, align 8
  %77 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  %80 = load i64, i64* %8, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %8, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i32, i32* @ENET_TX_DESC, align 4
  %84 = sext i32 %83 to i64
  %85 = icmp uge i64 %82, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %33
  store i64 0, i64* %8, align 8
  br label %87

87:                                               ; preds = %86, %33
  %88 = load i64, i64* %8, align 8
  %89 = load %struct.netdata_local*, %struct.netdata_local** %6, align 8
  %90 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @LPC_ENET_TXPRODUCEINDEX(i32 %91)
  %93 = call i32 @writel(i64 %88, i32 %92)
  %94 = load %struct.netdata_local*, %struct.netdata_local** %6, align 8
  %95 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @ENET_TX_DESC, align 4
  %98 = sub nsw i32 %97, 1
  %99 = icmp sge i32 %96, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %87
  %101 = load %struct.net_device*, %struct.net_device** %5, align 8
  %102 = call i32 @netif_stop_queue(%struct.net_device* %101)
  br label %103

103:                                              ; preds = %100, %87
  %104 = load %struct.netdata_local*, %struct.netdata_local** %6, align 8
  %105 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %104, i32 0, i32 3
  %106 = call i32 @spin_unlock_irq(i32* %105)
  %107 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %108 = call i32 @dev_kfree_skb(%struct.sk_buff* %107)
  %109 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %103, %25
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.netdata_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i64 @readl(i32) #1

declare dso_local i32 @LPC_ENET_TXPRODUCEINDEX(i32) #1

declare dso_local i32 @memcpy(i64, i32, i64) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
