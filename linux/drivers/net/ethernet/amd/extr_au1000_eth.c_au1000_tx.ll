; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_au1000_eth.c_au1000_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_au1000_eth.c_au1000_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.au1000_private = type { i64, i32, %struct.db_dest**, %struct.tx_dma** }
%struct.db_dest = type { i32, i64 }
%struct.tx_dma = type { i32, i32, i32 }

@tx_queued = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"tx: aup %x len=%d, data=%p, head %d\0A\00", align 1
@TX_DMA_ENABLE = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@TX_T_DONE = common dso_local global i32 0, align 4
@ETH_ZLEN = common dso_local global i32 0, align 4
@NUM_TX_DMA = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @au1000_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1000_tx(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.au1000_private*, align 8
  %7 = alloca %struct.net_device_stats*, align 8
  %8 = alloca %struct.tx_dma*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.db_dest*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.au1000_private* @netdev_priv(%struct.net_device* %12)
  store %struct.au1000_private* %13, %struct.au1000_private** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  store %struct.net_device_stats* %15, %struct.net_device_stats** %7, align 8
  %16 = load %struct.au1000_private*, %struct.au1000_private** %6, align 8
  %17 = load i32, i32* @tx_queued, align 4
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = load %struct.au1000_private*, %struct.au1000_private** %6, align 8
  %20 = ptrtoint %struct.au1000_private* %19 to i32
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.au1000_private*, %struct.au1000_private** %6, align 8
  %28 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @netif_dbg(%struct.au1000_private* %16, i32 %17, %struct.net_device* %18, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %26, i64 %29)
  %31 = load %struct.au1000_private*, %struct.au1000_private** %6, align 8
  %32 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %31, i32 0, i32 3
  %33 = load %struct.tx_dma**, %struct.tx_dma*** %32, align 8
  %34 = load %struct.au1000_private*, %struct.au1000_private** %6, align 8
  %35 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.tx_dma*, %struct.tx_dma** %33, i64 %36
  %38 = load %struct.tx_dma*, %struct.tx_dma** %37, align 8
  store %struct.tx_dma* %38, %struct.tx_dma** %8, align 8
  %39 = load %struct.tx_dma*, %struct.tx_dma** %8, align 8
  %40 = getelementptr inbounds %struct.tx_dma, %struct.tx_dma* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @TX_DMA_ENABLE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %2
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = call i32 @netif_stop_queue(%struct.net_device* %47)
  %49 = load %struct.au1000_private*, %struct.au1000_private** %6, align 8
  %50 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %49, i32 0, i32 1
  store i32 1, i32* %50, align 8
  %51 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %51, i32* %3, align 4
  br label %161

52:                                               ; preds = %2
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @TX_T_DONE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.net_device*, %struct.net_device** %5, align 8
  %59 = load %struct.tx_dma*, %struct.tx_dma** %8, align 8
  %60 = getelementptr inbounds %struct.tx_dma, %struct.tx_dma* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @au1000_update_tx_stats(%struct.net_device* %58, i32 %61)
  %63 = load %struct.tx_dma*, %struct.tx_dma** %8, align 8
  %64 = getelementptr inbounds %struct.tx_dma, %struct.tx_dma* %63, i32 0, i32 1
  store i32 0, i32* %64, align 4
  br label %65

65:                                               ; preds = %57, %52
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.au1000_private*, %struct.au1000_private** %6, align 8
  %68 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.au1000_private*, %struct.au1000_private** %6, align 8
  %73 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %72, i32 0, i32 1
  store i32 0, i32* %73, align 8
  %74 = load %struct.net_device*, %struct.net_device** %5, align 8
  %75 = call i32 @netif_wake_queue(%struct.net_device* %74)
  br label %76

76:                                               ; preds = %71, %66
  %77 = load %struct.au1000_private*, %struct.au1000_private** %6, align 8
  %78 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %77, i32 0, i32 2
  %79 = load %struct.db_dest**, %struct.db_dest*** %78, align 8
  %80 = load %struct.au1000_private*, %struct.au1000_private** %6, align 8
  %81 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.db_dest*, %struct.db_dest** %79, i64 %82
  %84 = load %struct.db_dest*, %struct.db_dest** %83, align 8
  store %struct.db_dest* %84, %struct.db_dest** %10, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = load %struct.db_dest*, %struct.db_dest** %10, align 8
  %87 = getelementptr inbounds %struct.db_dest, %struct.db_dest* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %85, i8* %89, i32 %92)
  %94 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @ETH_ZLEN, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %122

99:                                               ; preds = %76
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %115, %99
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @ETH_ZLEN, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %103
  %108 = load %struct.db_dest*, %struct.db_dest** %10, align 8
  %109 = getelementptr inbounds %struct.db_dest, %struct.db_dest* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to i8*
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  store i8 0, i8* %114, align 1
  br label %115

115:                                              ; preds = %107
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %11, align 4
  br label %103

118:                                              ; preds = %103
  %119 = load i32, i32* @ETH_ZLEN, align 4
  %120 = load %struct.tx_dma*, %struct.tx_dma** %8, align 8
  %121 = getelementptr inbounds %struct.tx_dma, %struct.tx_dma* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  br label %128

122:                                              ; preds = %76
  %123 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.tx_dma*, %struct.tx_dma** %8, align 8
  %127 = getelementptr inbounds %struct.tx_dma, %struct.tx_dma* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  br label %128

128:                                              ; preds = %122, %118
  %129 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %130 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 4
  %133 = load %struct.tx_dma*, %struct.tx_dma** %8, align 8
  %134 = getelementptr inbounds %struct.tx_dma, %struct.tx_dma* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %137 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, %135
  store i32 %139, i32* %137, align 4
  %140 = load %struct.db_dest*, %struct.db_dest** %10, align 8
  %141 = getelementptr inbounds %struct.db_dest, %struct.db_dest* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @TX_DMA_ENABLE, align 4
  %144 = or i32 %142, %143
  %145 = load %struct.tx_dma*, %struct.tx_dma** %8, align 8
  %146 = getelementptr inbounds %struct.tx_dma, %struct.tx_dma* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 4
  %147 = call i32 (...) @wmb()
  %148 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %149 = call i32 @dev_kfree_skb(%struct.sk_buff* %148)
  %150 = load %struct.au1000_private*, %struct.au1000_private** %6, align 8
  %151 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = add i64 %152, 1
  %154 = load i32, i32* @NUM_TX_DMA, align 4
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = and i64 %153, %156
  %158 = load %struct.au1000_private*, %struct.au1000_private** %6, align 8
  %159 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %158, i32 0, i32 0
  store i64 %157, i64* %159, align 8
  %160 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %128, %46
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local %struct.au1000_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_dbg(%struct.au1000_private*, i32, %struct.net_device*, i8*, i32, i32, i32, i64) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @au1000_update_tx_stats(%struct.net_device*, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
