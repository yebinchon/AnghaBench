; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_xdp_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_xdp_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.qede_fastpath = type { i32, %struct.qede_tx_queue* }
%struct.qede_tx_queue = type { i64, i32, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32 }
%struct.sw_rx_data = type { i64, i32 }
%struct.eth_tx_1st_bd = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ETH_TX_1ST_BD_FLAGS_START_BD_SHIFT = common dso_local global i32 0, align 4
@ETH_TX_DATA_1ST_BD_PKT_LEN_MASK = common dso_local global i64 0, align 8
@ETH_TX_DATA_1ST_BD_PKT_LEN_SHIFT = common dso_local global i64 0, align 8
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qede_dev*, %struct.qede_fastpath*, %struct.sw_rx_data*, i64, i64)* @qede_xdp_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_xdp_xmit(%struct.qede_dev* %0, %struct.qede_fastpath* %1, %struct.sw_rx_data* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qede_dev*, align 8
  %8 = alloca %struct.qede_fastpath*, align 8
  %9 = alloca %struct.sw_rx_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.qede_tx_queue*, align 8
  %13 = alloca %struct.eth_tx_1st_bd*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.qede_dev* %0, %struct.qede_dev** %7, align 8
  store %struct.qede_fastpath* %1, %struct.qede_fastpath** %8, align 8
  store %struct.sw_rx_data* %2, %struct.sw_rx_data** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.qede_fastpath*, %struct.qede_fastpath** %8, align 8
  %17 = getelementptr inbounds %struct.qede_fastpath, %struct.qede_fastpath* %16, i32 0, i32 1
  %18 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %17, align 8
  store %struct.qede_tx_queue* %18, %struct.qede_tx_queue** %12, align 8
  %19 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %12, align 8
  %20 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %14, align 8
  %22 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %12, align 8
  %23 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %22, i32 0, i32 3
  %24 = call i32 @qed_chain_get_elem_left(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %5
  %27 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %12, align 8
  %28 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %114

33:                                               ; preds = %5
  %34 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %12, align 8
  %35 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %34, i32 0, i32 3
  %36 = call i64 @qed_chain_produce(i32* %35)
  %37 = inttoptr i64 %36 to %struct.eth_tx_1st_bd*
  store %struct.eth_tx_1st_bd* %37, %struct.eth_tx_1st_bd** %13, align 8
  %38 = load %struct.eth_tx_1st_bd*, %struct.eth_tx_1st_bd** %13, align 8
  %39 = call i32 @memset(%struct.eth_tx_1st_bd* %38, i32 0, i32 12)
  %40 = load i32, i32* @ETH_TX_1ST_BD_FLAGS_START_BD_SHIFT, align 4
  %41 = call i32 @BIT(i32 %40)
  %42 = load %struct.eth_tx_1st_bd*, %struct.eth_tx_1st_bd** %13, align 8
  %43 = getelementptr inbounds %struct.eth_tx_1st_bd, %struct.eth_tx_1st_bd* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 4
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* @ETH_TX_DATA_1ST_BD_PKT_LEN_MASK, align 8
  %48 = and i64 %46, %47
  %49 = load i64, i64* @ETH_TX_DATA_1ST_BD_PKT_LEN_SHIFT, align 8
  %50 = shl i64 %48, %49
  store i64 %50, i64* %15, align 8
  %51 = load i64, i64* %15, align 8
  %52 = call i32 @cpu_to_le16(i64 %51)
  %53 = load %struct.eth_tx_1st_bd*, %struct.eth_tx_1st_bd** %13, align 8
  %54 = getelementptr inbounds %struct.eth_tx_1st_bd, %struct.eth_tx_1st_bd* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %52
  store i32 %57, i32* %55, align 4
  %58 = load %struct.eth_tx_1st_bd*, %struct.eth_tx_1st_bd** %13, align 8
  %59 = getelementptr inbounds %struct.eth_tx_1st_bd, %struct.eth_tx_1st_bd* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  %61 = load %struct.eth_tx_1st_bd*, %struct.eth_tx_1st_bd** %13, align 8
  %62 = load %struct.sw_rx_data*, %struct.sw_rx_data** %9, align 8
  %63 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %10, align 8
  %66 = add i64 %64, %65
  %67 = load i64, i64* %11, align 8
  %68 = call i32 @BD_SET_UNMAP_ADDR_LEN(%struct.eth_tx_1st_bd* %61, i64 %66, i64 %67)
  %69 = load %struct.qede_dev*, %struct.qede_dev** %7, align 8
  %70 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load %struct.sw_rx_data*, %struct.sw_rx_data** %9, align 8
  %74 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = add i64 %75, %76
  %78 = load i64, i64* %11, align 8
  %79 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %80 = call i32 @dma_sync_single_for_device(i32* %72, i64 %77, i64 %78, i32 %79)
  %81 = load %struct.sw_rx_data*, %struct.sw_rx_data** %9, align 8
  %82 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %12, align 8
  %85 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = load i64, i64* %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  store i32 %83, i32* %90, align 8
  %91 = load %struct.sw_rx_data*, %struct.sw_rx_data** %9, align 8
  %92 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %12, align 8
  %95 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = load i64, i64* %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  store i64 %93, i64* %100, align 8
  %101 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %12, align 8
  %102 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add i64 %103, 1
  %105 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %12, align 8
  %106 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = urem i64 %104, %108
  %110 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %12, align 8
  %111 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = load %struct.qede_fastpath*, %struct.qede_fastpath** %8, align 8
  %113 = getelementptr inbounds %struct.qede_fastpath, %struct.qede_fastpath* %112, i32 0, i32 0
  store i32 1, i32* %113, align 8
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %33, %26
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i32 @qed_chain_get_elem_left(i32*) #1

declare dso_local i64 @qed_chain_produce(i32*) #1

declare dso_local i32 @memset(%struct.eth_tx_1st_bd*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @BD_SET_UNMAP_ADDR_LEN(%struct.eth_tx_1st_bd*, i64, i64) #1

declare dso_local i32 @dma_sync_single_for_device(i32*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
