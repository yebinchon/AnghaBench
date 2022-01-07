; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_greth_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_greth_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.greth_private = type { i64, i32, i32*, i32, i32, %struct.greth_bd*, %struct.TYPE_3__*, i32 }
%struct.greth_bd = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@GRETH_RXI = common dso_local global i32 0, align 4
@GRETH_TXI = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@GRETH_BD_EN = common dso_local global i32 0, align 4
@GRETH_BD_IE = common dso_local global i32 0, align 4
@GRETH_BD_LEN = common dso_local global i32 0, align 4
@GRETH_TXBD_NUM_MASK = common dso_local global i64 0, align 8
@GRETH_BD_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @greth_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @greth_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.greth_private*, align 8
  %7 = alloca %struct.greth_bd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.greth_private* @netdev_priv(%struct.net_device* %13)
  store %struct.greth_private* %14, %struct.greth_private** %6, align 8
  %15 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %17 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @greth_clean_tx(i32 %18)
  %20 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %21 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sle i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %2
  %28 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %29 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %28, i32 0, i32 3
  %30 = load i64, i64* %12, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %33 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %32, i32 0, i32 6
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @GRETH_REGLOAD(i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @GRETH_RXI, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %27
  %43 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %44 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %43, i32 0, i32 6
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @GRETH_TXI, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @GRETH_REGSAVE(i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %42, %27
  %53 = load %struct.net_device*, %struct.net_device** %5, align 8
  %54 = call i32 @netif_stop_queue(%struct.net_device* %53)
  %55 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %56 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %55, i32 0, i32 3
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %59, i32* %3, align 4
  br label %176

60:                                               ; preds = %2
  %61 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %62 = call i64 @netif_msg_pktdata(%struct.greth_private* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = call i32 @greth_print_tx_packet(%struct.sk_buff* %65)
  br label %67

67:                                               ; preds = %64, %60
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @MAX_FRAME_SIZE, align 4
  %72 = icmp sgt i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %67
  %77 = load %struct.net_device*, %struct.net_device** %5, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  br label %172

82:                                               ; preds = %67
  %83 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %84 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %83, i32 0, i32 5
  %85 = load %struct.greth_bd*, %struct.greth_bd** %84, align 8
  %86 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %87 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %85, i64 %89
  store %struct.greth_bd* %90, %struct.greth_bd** %7, align 8
  %91 = load %struct.greth_bd*, %struct.greth_bd** %7, align 8
  %92 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %91, i32 0, i32 1
  %93 = call i32 @greth_read_bd(i32* %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i64 @phys_to_virt(i32 %94)
  %96 = inttoptr i64 %95 to i8*
  %97 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @memcpy(i8* %96, i32 %99, i32 %102)
  %104 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %105 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @DMA_TO_DEVICE, align 4
  %112 = call i32 @dma_sync_single_for_device(i32 %106, i32 %107, i32 %110, i32 %111)
  %113 = load i32, i32* @GRETH_BD_EN, align 4
  %114 = load i32, i32* @GRETH_BD_IE, align 4
  %115 = or i32 %113, %114
  %116 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @GRETH_BD_LEN, align 4
  %120 = and i32 %118, %119
  %121 = or i32 %115, %120
  store i32 %121, i32* %9, align 4
  %122 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %123 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @GRETH_BD_LEN, align 4
  %126 = and i32 %124, %125
  %127 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %128 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %131 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %129, i64 %133
  store i32 %126, i32* %134, align 4
  %135 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %136 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = load i64, i64* @GRETH_TXBD_NUM_MASK, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %82
  %142 = load i32, i32* @GRETH_BD_WR, align 4
  %143 = load i32, i32* %9, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %9, align 4
  br label %145

145:                                              ; preds = %141, %82
  %146 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %147 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = call i64 @NEXT_TX(i64 %149)
  %151 = trunc i64 %150 to i32
  %152 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %153 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 8
  %154 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %155 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %156, -1
  store i64 %157, i64* %155, align 8
  %158 = load %struct.greth_bd*, %struct.greth_bd** %7, align 8
  %159 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %158, i32 0, i32 0
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @greth_write_bd(i32* %159, i32 %160)
  %162 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %163 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %162, i32 0, i32 3
  %164 = load i64, i64* %12, align 8
  %165 = call i32 @spin_lock_irqsave(i32* %163, i64 %164)
  %166 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %167 = call i32 @greth_enable_tx(%struct.greth_private* %166)
  %168 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %169 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %168, i32 0, i32 3
  %170 = load i64, i64* %12, align 8
  %171 = call i32 @spin_unlock_irqrestore(i32* %169, i64 %170)
  br label %172

172:                                              ; preds = %145, %76
  %173 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %174 = call i32 @dev_kfree_skb(%struct.sk_buff* %173)
  %175 = load i32, i32* %8, align 4
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %172, %52
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local %struct.greth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @greth_clean_tx(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @GRETH_REGLOAD(i32) #1

declare dso_local i32 @GRETH_REGSAVE(i32, i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @netif_msg_pktdata(%struct.greth_private*) #1

declare dso_local i32 @greth_print_tx_packet(%struct.sk_buff*) #1

declare dso_local i32 @greth_read_bd(i32*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i64 @phys_to_virt(i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i64 @NEXT_TX(i64) #1

declare dso_local i32 @greth_write_bd(i32*, i32) #1

declare dso_local i32 @greth_enable_tx(%struct.greth_private*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
