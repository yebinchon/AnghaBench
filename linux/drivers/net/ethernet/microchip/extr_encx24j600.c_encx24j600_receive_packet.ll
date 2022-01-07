; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_receive_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_receive_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encx24j600_priv = type { %struct.net_device* }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.rsv = type { i64 }
%struct.sk_buff = type { i32, i32, %struct.net_device*, i32, i32 }

@NET_IP_ALIGN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"RX: OOM: packet dropped\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RRXDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@CHECKSUM_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.encx24j600_priv*, %struct.rsv*)* @encx24j600_receive_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encx24j600_receive_packet(%struct.encx24j600_priv* %0, %struct.rsv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.encx24j600_priv*, align 8
  %5 = alloca %struct.rsv*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.encx24j600_priv* %0, %struct.encx24j600_priv** %4, align 8
  store %struct.rsv* %1, %struct.rsv** %5, align 8
  %8 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %4, align 8
  %9 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %8, i32 0, i32 0
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = load %struct.rsv*, %struct.rsv** %5, align 8
  %13 = getelementptr inbounds %struct.rsv, %struct.rsv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NET_IP_ALIGN, align 8
  %16 = add nsw i64 %14, %15
  %17 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %11, i64 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %2
  %21 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.net_device*, %struct.net_device** %6, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %84

29:                                               ; preds = %2
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = load i64, i64* @NET_IP_ALIGN, align 8
  %32 = call i32 @skb_reserve(%struct.sk_buff* %30, i64 %31)
  %33 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %4, align 8
  %34 = load i32, i32* @RRXDATA, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = load %struct.rsv*, %struct.rsv** %5, align 8
  %37 = getelementptr inbounds %struct.rsv, %struct.rsv* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @skb_put(%struct.sk_buff* %35, i64 %38)
  %40 = load %struct.rsv*, %struct.rsv** %5, align 8
  %41 = getelementptr inbounds %struct.rsv, %struct.rsv* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @encx24j600_raw_read(%struct.encx24j600_priv* %33, i32 %34, i32 %39, i64 %42)
  %44 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %4, align 8
  %45 = call i64 @netif_msg_pktdata(%struct.encx24j600_priv* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %29
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dump_packet(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %47, %29
  %56 = load %struct.net_device*, %struct.net_device** %6, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 2
  store %struct.net_device* %56, %struct.net_device** %58, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %60 = load %struct.net_device*, %struct.net_device** %6, align 8
  %61 = call i32 @eth_type_trans(%struct.sk_buff* %59, %struct.net_device* %60)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @CHECKSUM_COMPLETE, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.net_device*, %struct.net_device** %6, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load %struct.rsv*, %struct.rsv** %5, align 8
  %73 = getelementptr inbounds %struct.rsv, %struct.rsv* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.net_device*, %struct.net_device** %6, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %74
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %77, align 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %83 = call i32 @netif_rx(%struct.sk_buff* %82)
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %55, %20
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i64) #1

declare dso_local i32 @pr_err_ratelimited(i8*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @encx24j600_raw_read(%struct.encx24j600_priv*, i32, i32, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i64 @netif_msg_pktdata(%struct.encx24j600_priv*) #1

declare dso_local i32 @dump_packet(i8*, i32, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
