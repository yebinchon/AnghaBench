; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_dnet.c_dnet_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_dnet.c_dnet_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i32 }
%struct.net_device = type { i32 }
%struct.dnet = type { i32 }

@TX_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"start_xmit: len %u head %p data %p\0A\00", align 1
@DNET_FIFO_SIZE = common dso_local global i32 0, align 4
@TX_FIFO_WCNT = common dso_local global i32 0, align 4
@TX_DATA_FIFO = common dso_local global i32 0, align 4
@TX_LEN_FIFO = common dso_local global i32 0, align 4
@DNET_FIFO_TX_DATA_AF_TH = common dso_local global i64 0, align 8
@INTR_SRC = common dso_local global i32 0, align 4
@INTR_ENB = common dso_local global i32 0, align 4
@DNET_INTR_ENB_TX_FIFOAE = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @dnet_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dnet_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.dnet*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.dnet* @netdev_priv(%struct.net_device* %14)
  store %struct.dnet* %15, %struct.dnet** %5, align 8
  %16 = load %struct.dnet*, %struct.dnet** %5, align 8
  %17 = load i32, i32* @TX_STATUS, align 4
  %18 = call i64 @dnet_readl(%struct.dnet* %16, i32 %17)
  store i64 %18, i64* %6, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24, i64 %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %30 = call i32 @dnet_print_skb(%struct.sk_buff* %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 3
  %35 = ashr i32 %34, 2
  store i32 %35, i32* %8, align 4
  %36 = load %struct.dnet*, %struct.dnet** %5, align 8
  %37 = getelementptr inbounds %struct.dnet, %struct.dnet* %36, i32 0, i32 0
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.dnet*, %struct.dnet** %5, align 8
  %41 = load i32, i32* @TX_STATUS, align 4
  %42 = call i64 @dnet_readl(%struct.dnet* %40, i32 %41)
  store i64 %42, i64* %6, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = and i64 %45, -4
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %13, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = add i64 %51, 3
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %11, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = and i64 %56, 3
  %58 = load i32, i32* %11, align 4
  %59 = zext i32 %58 to i64
  %60 = add i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = lshr i32 %62, 2
  store i32 %63, i32* %11, align 4
  %64 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = and i64 %66, 3
  %68 = shl i64 %67, 16
  %69 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = or i64 %68, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = zext i32 %75 to i64
  %77 = load i32, i32* @DNET_FIFO_SIZE, align 4
  %78 = zext i32 %77 to i64
  %79 = load %struct.dnet*, %struct.dnet** %5, align 8
  %80 = load i32, i32* @TX_FIFO_WCNT, align 4
  %81 = call i64 @dnet_readl(%struct.dnet* %79, i32 %80)
  %82 = sub nsw i64 %78, %81
  %83 = icmp slt i64 %76, %82
  br i1 %83, label %84, label %106

84:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %97, %84
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %85
  %90 = load %struct.dnet*, %struct.dnet** %5, align 8
  %91 = load i32*, i32** %13, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %13, align 8
  %93 = load i32, i32* %91, align 4
  %94 = zext i32 %93 to i64
  %95 = load i32, i32* @TX_DATA_FIFO, align 4
  %96 = call i32 @dnet_writel(%struct.dnet* %90, i64 %94, i32 %95)
  br label %97

97:                                               ; preds = %89
  %98 = load i32, i32* %9, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %85

100:                                              ; preds = %85
  %101 = load %struct.dnet*, %struct.dnet** %5, align 8
  %102 = load i32, i32* %10, align 4
  %103 = zext i32 %102 to i64
  %104 = load i32, i32* @TX_LEN_FIFO, align 4
  %105 = call i32 @dnet_writel(%struct.dnet* %101, i64 %103, i32 %104)
  br label %106

106:                                              ; preds = %100, %2
  %107 = load %struct.dnet*, %struct.dnet** %5, align 8
  %108 = load i32, i32* @TX_FIFO_WCNT, align 4
  %109 = call i64 @dnet_readl(%struct.dnet* %107, i32 %108)
  %110 = load i64, i64* @DNET_FIFO_TX_DATA_AF_TH, align 8
  %111 = icmp sgt i64 %109, %110
  br i1 %111, label %112, label %128

112:                                              ; preds = %106
  %113 = load %struct.net_device*, %struct.net_device** %4, align 8
  %114 = call i32 @netif_stop_queue(%struct.net_device* %113)
  %115 = load %struct.dnet*, %struct.dnet** %5, align 8
  %116 = load i32, i32* @INTR_SRC, align 4
  %117 = call i64 @dnet_readl(%struct.dnet* %115, i32 %116)
  store i64 %117, i64* %6, align 8
  %118 = load %struct.dnet*, %struct.dnet** %5, align 8
  %119 = load i32, i32* @INTR_ENB, align 4
  %120 = call i64 @dnet_readl(%struct.dnet* %118, i32 %119)
  store i64 %120, i64* %7, align 8
  %121 = load i64, i64* @DNET_INTR_ENB_TX_FIFOAE, align 8
  %122 = load i64, i64* %7, align 8
  %123 = or i64 %122, %121
  store i64 %123, i64* %7, align 8
  %124 = load %struct.dnet*, %struct.dnet** %5, align 8
  %125 = load i64, i64* %7, align 8
  %126 = load i32, i32* @INTR_ENB, align 4
  %127 = call i32 @dnet_writel(%struct.dnet* %124, i64 %125, i32 %126)
  br label %128

128:                                              ; preds = %112, %106
  %129 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %130 = call i32 @skb_tx_timestamp(%struct.sk_buff* %129)
  %131 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %132 = call i32 @dev_kfree_skb(%struct.sk_buff* %131)
  %133 = load %struct.dnet*, %struct.dnet** %5, align 8
  %134 = getelementptr inbounds %struct.dnet, %struct.dnet* %133, i32 0, i32 0
  %135 = load i64, i64* %12, align 8
  %136 = call i32 @spin_unlock_irqrestore(i32* %134, i64 %135)
  %137 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %137
}

declare dso_local %struct.dnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @dnet_readl(%struct.dnet*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i64) #1

declare dso_local i32 @dnet_print_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dnet_writel(%struct.dnet*, i64, i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
