; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_emac.c_emac_rx_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_emac.c_emac_rx_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, %struct.net_device* }
%struct.net_device = type { %struct.TYPE_2__, %struct.device }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.device = type { i32 }
%struct.emac_priv = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"failed rx buffer alloc\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @emac_rx_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_rx_handler(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.emac_priv*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.sk_buff*
  store %struct.sk_buff* %13, %struct.sk_buff** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 2
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %8, align 8
  %17 = load %struct.net_device*, %struct.net_device** %8, align 8
  %18 = call %struct.emac_priv* @netdev_priv(%struct.net_device* %17)
  store %struct.emac_priv* %18, %struct.emac_priv** %9, align 8
  %19 = load %struct.net_device*, %struct.net_device** %8, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 1
  store %struct.device* %20, %struct.device** %10, align 8
  %21 = load %struct.net_device*, %struct.net_device** %8, align 8
  %22 = call i32 @netif_running(%struct.net_device* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %29)
  br label %103

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.net_device*, %struct.net_device** %8, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %78

40:                                               ; preds = %31
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @skb_put(%struct.sk_buff* %41, i32 %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = load %struct.net_device*, %struct.net_device** %8, align 8
  %46 = call i32 @eth_type_trans(%struct.sk_buff* %44, %struct.net_device* %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %50 = call i32 @netif_receive_skb(%struct.sk_buff* %49)
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.net_device*, %struct.net_device** %8, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, %51
  store i32 %56, i32* %54, align 4
  %57 = load %struct.net_device*, %struct.net_device** %8, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.emac_priv*, %struct.emac_priv** %9, align 8
  %63 = call %struct.sk_buff* @emac_rx_alloc(%struct.emac_priv* %62)
  store %struct.sk_buff* %63, %struct.sk_buff** %7, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %65 = icmp ne %struct.sk_buff* %64, null
  br i1 %65, label %77, label %66

66:                                               ; preds = %40
  %67 = load %struct.emac_priv*, %struct.emac_priv** %9, align 8
  %68 = call i64 @netif_msg_rx_err(%struct.emac_priv* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = call i64 (...) @net_ratelimit()
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.device*, %struct.device** %10, align 8
  %75 = call i32 @dev_err(%struct.device* %74, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %70, %66
  br label %103

77:                                               ; preds = %40
  br label %78

78:                                               ; preds = %77, %34
  %79 = load %struct.emac_priv*, %struct.emac_priv** %9, align 8
  %80 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %87 = call i32 @skb_tailroom(%struct.sk_buff* %86)
  %88 = call i32 @cpdma_chan_submit(i32 %81, %struct.sk_buff* %82, i32 %85, i32 %87, i32 0)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp eq i32 %89, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @WARN_ON(i32 %93)
  %95 = load i32, i32* %11, align 4
  %96 = icmp slt i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %78
  %101 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %102 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %101)
  br label %103

103:                                              ; preds = %28, %76, %100, %78
  ret void
}

declare dso_local %struct.emac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @emac_rx_alloc(%struct.emac_priv*) #1

declare dso_local i64 @netif_msg_rx_err(%struct.emac_priv*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @cpdma_chan_submit(i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
