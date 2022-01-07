; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_emac.c_emac_dev_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_emac.c_emac_dev_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { %struct.TYPE_2__, %struct.device }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.emac_priv = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"DaVinci EMAC: No link to transmit\00", align 1
@EMAC_DEF_MIN_ETHPKTSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"DaVinci EMAC: packet pad failed\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"DaVinci EMAC: desc submit failed\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @emac_dev_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_dev_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.emac_priv*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 1
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.emac_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.emac_priv* %12, %struct.emac_priv** %8, align 8
  %13 = load %struct.emac_priv*, %struct.emac_priv** %8, align 8
  %14 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load %struct.emac_priv*, %struct.emac_priv** %8, align 8
  %23 = call i64 @netif_msg_tx_err(%struct.emac_priv* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = call i64 (...) @net_ratelimit()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %25, %21
  br label %97

32:                                               ; preds = %2
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = load i32, i32* @EMAC_DEF_MIN_ETHPKTSIZE, align 4
  %35 = call i32 @skb_padto(%struct.sk_buff* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %32
  %42 = load %struct.emac_priv*, %struct.emac_priv** %8, align 8
  %43 = call i64 @netif_msg_tx_err(%struct.emac_priv* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = call i64 (...) @net_ratelimit()
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %45, %41
  br label %97

52:                                               ; preds = %32
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = call i32 @skb_tx_timestamp(%struct.sk_buff* %53)
  %55 = load %struct.emac_priv*, %struct.emac_priv** %8, align 8
  %56 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @cpdma_chan_submit(i32 %57, %struct.sk_buff* %58, i32 %61, i32 %64, i32 0)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %52
  %72 = load %struct.emac_priv*, %struct.emac_priv** %8, align 8
  %73 = call i64 @netif_msg_tx_err(%struct.emac_priv* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = call i64 (...) @net_ratelimit()
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load %struct.device*, %struct.device** %6, align 8
  %80 = call i32 @dev_err(%struct.device* %79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %75, %71
  br label %97

82:                                               ; preds = %52
  %83 = load %struct.emac_priv*, %struct.emac_priv** %8, align 8
  %84 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @cpdma_check_free_tx_desc(i32 %85)
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call i64 @unlikely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %82
  %93 = load %struct.net_device*, %struct.net_device** %5, align 8
  %94 = call i32 @netif_stop_queue(%struct.net_device* %93)
  br label %95

95:                                               ; preds = %92, %82
  %96 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %96, i32* %3, align 4
  br label %106

97:                                               ; preds = %81, %51, %31
  %98 = load %struct.net_device*, %struct.net_device** %5, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  %103 = load %struct.net_device*, %struct.net_device** %5, align 8
  %104 = call i32 @netif_stop_queue(%struct.net_device* %103)
  %105 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %97, %95
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.emac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @netif_msg_tx_err(%struct.emac_priv*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @skb_padto(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @cpdma_chan_submit(i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @cpdma_check_free_tx_desc(i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
