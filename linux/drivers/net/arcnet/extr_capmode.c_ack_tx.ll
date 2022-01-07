; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_capmode.c_ack_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_capmode.c_ack_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.arcnet_local = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32*, %struct.sk_buff* }
%struct.sk_buff = type { i32, %struct.net_device* }
%struct.archdr = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32 }

@D_DURING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"capmode: ack_tx: protocol: %x: result: %d\0A\00", align 1
@D_SKB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ack_tx\00", align 1
@ARC_HDR_SIZE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@D_PROTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Acknowledge for cap packet %x.\0A\00", align 1
@ETH_P_ARCNET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"ack_tx_recv\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ack_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ack_tx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.arcnet_local*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.archdr*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.arcnet_local* @netdev_priv(%struct.net_device* %9)
  store %struct.arcnet_local* %10, %struct.arcnet_local** %5, align 8
  store i32 4, i32* %8, align 4
  %11 = load i32, i32* @D_DURING, align 4
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = load %struct.arcnet_local*, %struct.arcnet_local** %5, align 8
  %14 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 (i32, %struct.net_device*, i8*, i32, ...) @arc_printk(i32 %11, %struct.net_device* %12, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load i32, i32* @D_SKB, align 4
  %22 = call i64 @BUGLVL(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = load %struct.arcnet_local*, %struct.arcnet_local** %5, align 8
  %27 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load %struct.sk_buff*, %struct.sk_buff** %28, align 8
  %30 = call i32 @arcnet_dump_skb(%struct.net_device* %25, %struct.sk_buff* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %24, %2
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* @ARC_HDR_SIZE, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i32, i32* @GFP_ATOMIC, align 4
  %37 = call %struct.sk_buff* @alloc_skb(i64 %35, i32 %36)
  store %struct.sk_buff* %37, %struct.sk_buff** %6, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %31
  br label %98

41:                                               ; preds = %31
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* @ARC_HDR_SIZE, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @skb_put(%struct.sk_buff* %42, i64 %46)
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 1
  store %struct.net_device* %48, %struct.net_device** %50, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = call i32 @skb_reset_mac_header(%struct.sk_buff* %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = call i64 @skb_mac_header(%struct.sk_buff* %53)
  %55 = inttoptr i64 %54 to %struct.archdr*
  store %struct.archdr* %55, %struct.archdr** %7, align 8
  %56 = load %struct.arcnet_local*, %struct.arcnet_local** %5, align 8
  %57 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load %struct.sk_buff*, %struct.sk_buff** %58, align 8
  %60 = load %struct.archdr*, %struct.archdr** %7, align 8
  %61 = load i64, i64* @ARC_HDR_SIZE, align 8
  %62 = add i64 %61, 4
  %63 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %59, %struct.archdr* %60, i64 %62)
  %64 = load %struct.archdr*, %struct.archdr** %7, align 8
  %65 = getelementptr inbounds %struct.archdr, %struct.archdr* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.archdr*, %struct.archdr** %7, align 8
  %70 = getelementptr inbounds %struct.archdr, %struct.archdr* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i32 %68, i32* %73, align 8
  %74 = load i32, i32* @D_PROTO, align 4
  %75 = load %struct.net_device*, %struct.net_device** %3, align 8
  %76 = load %struct.archdr*, %struct.archdr** %7, align 8
  %77 = getelementptr inbounds %struct.archdr, %struct.archdr* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i32, %struct.net_device*, i8*, i32, ...) @arc_printk(i32 %74, %struct.net_device* %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @ETH_P_ARCNET, align 4
  %85 = call i32 @cpu_to_be16(i32 %84)
  %86 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* @D_SKB, align 4
  %89 = call i64 @BUGLVL(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %41
  %92 = load %struct.net_device*, %struct.net_device** %3, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %94 = call i32 @arcnet_dump_skb(%struct.net_device* %92, %struct.sk_buff* %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %95

95:                                               ; preds = %91, %41
  %96 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %97 = call i32 @netif_rx(%struct.sk_buff* %96)
  br label %98

98:                                               ; preds = %95, %40
  %99 = load %struct.arcnet_local*, %struct.arcnet_local** %5, align 8
  %100 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load %struct.sk_buff*, %struct.sk_buff** %101, align 8
  %103 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %102)
  %104 = load %struct.arcnet_local*, %struct.arcnet_local** %5, align 8
  %105 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  store i32* null, i32** %106, align 8
  ret i32 0
}

declare dso_local %struct.arcnet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @arc_printk(i32, %struct.net_device*, i8*, i32, ...) #1

declare dso_local i64 @BUGLVL(i32) #1

declare dso_local i32 @arcnet_dump_skb(%struct.net_device*, %struct.sk_buff*, i8*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i64 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, %struct.archdr*, i64) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
