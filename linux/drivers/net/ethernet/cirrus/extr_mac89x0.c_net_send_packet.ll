; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cirrus/extr_mac89x0.c_net_send_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cirrus/extr_mac89x0.c_net_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32*, i64 }
%struct.net_device = type { i64 }
%struct.net_local = type { i64 }

@tx_queued = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"sent %d byte packet of type %x\0A\00", align 1
@ETH_ALEN = common dso_local global i64 0, align 8
@PP_TxCMD = common dso_local global i32 0, align 4
@PP_TxLength = common dso_local global i32 0, align 4
@PP_BusST = common dso_local global i32 0, align 4
@READY_FOR_TX_NOW = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@PP_TxFrame = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @net_send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_send_packet(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_local*, align 8
  %7 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call %struct.net_local* @netdev_priv(%struct.net_device* %8)
  store %struct.net_local* %9, %struct.net_local** %6, align 8
  %10 = load %struct.net_local*, %struct.net_local** %6, align 8
  %11 = load i32, i32* @tx_queued, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @ETH_ALEN, align 8
  %20 = load i64, i64* @ETH_ALEN, align 8
  %21 = add i64 %19, %20
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @ETH_ALEN, align 8
  %29 = load i64, i64* @ETH_ALEN, align 8
  %30 = add i64 %28, %29
  %31 = add i64 %30, 1
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %24, %33
  %35 = call i32 @netif_dbg(%struct.net_local* %10, i32 %11, %struct.net_device* %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %15, i32 %34)
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @local_irq_save(i64 %36)
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = call i32 @netif_stop_queue(%struct.net_device* %38)
  %40 = load %struct.net_device*, %struct.net_device** %5, align 8
  %41 = load i32, i32* @PP_TxCMD, align 4
  %42 = load %struct.net_local*, %struct.net_local** %6, align 8
  %43 = getelementptr inbounds %struct.net_local, %struct.net_local* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @writereg(%struct.net_device* %40, i32 %41, i64 %44)
  %46 = load %struct.net_device*, %struct.net_device** %5, align 8
  %47 = load i32, i32* @PP_TxLength, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @writereg(%struct.net_device* %46, i32 %47, i64 %50)
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = load i32, i32* @PP_BusST, align 4
  %54 = call i32 @readreg(%struct.net_device* %52, i32 %53)
  %55 = load i32, i32* @READY_FOR_TX_NOW, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %2
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @local_irq_restore(i64 %59)
  %61 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %61, i32* %3, align 4
  br label %80

62:                                               ; preds = %2
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = load %struct.net_device*, %struct.net_device** %5, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @PP_TxFrame, align 8
  %68 = add nsw i64 %66, %67
  %69 = inttoptr i64 %68 to i8*
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 1
  %74 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %63, i8* %69, i64 %73)
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @local_irq_restore(i64 %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = call i32 @dev_kfree_skb(%struct.sk_buff* %77)
  %79 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %62, %58
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.net_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_dbg(%struct.net_local*, i32, %struct.net_device*, i8*, i64, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @writereg(%struct.net_device*, i32, i64) #1

declare dso_local i32 @readreg(%struct.net_device*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i8*, i64) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
