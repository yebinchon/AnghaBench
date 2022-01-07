; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_free_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_free_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fec_enet_private = type { i32, i32, %struct.fec_enet_priv_tx_q**, i64, %struct.TYPE_4__*, %struct.fec_enet_priv_rx_q** }
%struct.fec_enet_priv_tx_q = type { %struct.sk_buff**, i32**, %struct.TYPE_5__ }
%struct.sk_buff = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.bufdesc* }
%struct.bufdesc = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.fec_enet_priv_rx_q = type { %struct.TYPE_6__, %struct.sk_buff** }
%struct.TYPE_6__ = type { i32, %struct.bufdesc* }

@FEC_ENET_RX_FRSIZE = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @fec_enet_free_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fec_enet_free_buffers(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fec_enet_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.bufdesc*, align 8
  %7 = alloca %struct.fec_enet_priv_tx_q*, align 8
  %8 = alloca %struct.fec_enet_priv_rx_q*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %10)
  store %struct.fec_enet_private* %11, %struct.fec_enet_private** %3, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %80, %1
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %15 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %83

18:                                               ; preds = %12
  %19 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %20 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %19, i32 0, i32 5
  %21 = load %struct.fec_enet_priv_rx_q**, %struct.fec_enet_priv_rx_q*** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %21, i64 %23
  %25 = load %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %24, align 8
  store %struct.fec_enet_priv_rx_q* %25, %struct.fec_enet_priv_rx_q** %8, align 8
  %26 = load %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %8, align 8
  %27 = getelementptr inbounds %struct.fec_enet_priv_rx_q, %struct.fec_enet_priv_rx_q* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load %struct.bufdesc*, %struct.bufdesc** %28, align 8
  store %struct.bufdesc* %29, %struct.bufdesc** %6, align 8
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %76, %18
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %8, align 8
  %33 = getelementptr inbounds %struct.fec_enet_priv_rx_q, %struct.fec_enet_priv_rx_q* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ult i32 %31, %35
  br i1 %36, label %37, label %79

37:                                               ; preds = %30
  %38 = load %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %8, align 8
  %39 = getelementptr inbounds %struct.fec_enet_priv_rx_q, %struct.fec_enet_priv_rx_q* %38, i32 0, i32 1
  %40 = load %struct.sk_buff**, %struct.sk_buff*** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %40, i64 %42
  %44 = load %struct.sk_buff*, %struct.sk_buff** %43, align 8
  store %struct.sk_buff* %44, %struct.sk_buff** %5, align 8
  %45 = load %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %8, align 8
  %46 = getelementptr inbounds %struct.fec_enet_priv_rx_q, %struct.fec_enet_priv_rx_q* %45, i32 0, i32 1
  %47 = load %struct.sk_buff**, %struct.sk_buff*** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %47, i64 %49
  store %struct.sk_buff* null, %struct.sk_buff** %50, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = icmp ne %struct.sk_buff* %51, null
  br i1 %52, label %53, label %71

53:                                               ; preds = %37
  %54 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %55 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %54, i32 0, i32 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.bufdesc*, %struct.bufdesc** %6, align 8
  %59 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @fec32_to_cpu(i32 %60)
  %62 = load i64, i64* @FEC_ENET_RX_FRSIZE, align 8
  %63 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %64 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %62, %65
  %67 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %68 = call i32 @dma_unmap_single(i32* %57, i32 %61, i64 %66, i32 %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = call i32 @dev_kfree_skb(%struct.sk_buff* %69)
  br label %71

71:                                               ; preds = %53, %37
  %72 = load %struct.bufdesc*, %struct.bufdesc** %6, align 8
  %73 = load %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %8, align 8
  %74 = getelementptr inbounds %struct.fec_enet_priv_rx_q, %struct.fec_enet_priv_rx_q* %73, i32 0, i32 0
  %75 = call %struct.bufdesc* @fec_enet_get_nextdesc(%struct.bufdesc* %72, %struct.TYPE_6__* %74)
  store %struct.bufdesc* %75, %struct.bufdesc** %6, align 8
  br label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %4, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %30

79:                                               ; preds = %30
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %9, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %12

83:                                               ; preds = %12
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %143, %83
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %87 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ult i32 %85, %88
  br i1 %89, label %90, label %146

90:                                               ; preds = %84
  %91 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %92 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %91, i32 0, i32 2
  %93 = load %struct.fec_enet_priv_tx_q**, %struct.fec_enet_priv_tx_q*** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %93, i64 %95
  %97 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %96, align 8
  store %struct.fec_enet_priv_tx_q* %97, %struct.fec_enet_priv_tx_q** %7, align 8
  %98 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %7, align 8
  %99 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load %struct.bufdesc*, %struct.bufdesc** %100, align 8
  store %struct.bufdesc* %101, %struct.bufdesc** %6, align 8
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %139, %90
  %103 = load i32, i32* %4, align 4
  %104 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %7, align 8
  %105 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ult i32 %103, %107
  br i1 %108, label %109, label %142

109:                                              ; preds = %102
  %110 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %7, align 8
  %111 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %110, i32 0, i32 1
  %112 = load i32**, i32*** %111, align 8
  %113 = load i32, i32* %4, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32*, i32** %112, i64 %114
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @kfree(i32* %116)
  %118 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %7, align 8
  %119 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %118, i32 0, i32 1
  %120 = load i32**, i32*** %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32*, i32** %120, i64 %122
  store i32* null, i32** %123, align 8
  %124 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %7, align 8
  %125 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %124, i32 0, i32 0
  %126 = load %struct.sk_buff**, %struct.sk_buff*** %125, align 8
  %127 = load i32, i32* %4, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %126, i64 %128
  %130 = load %struct.sk_buff*, %struct.sk_buff** %129, align 8
  store %struct.sk_buff* %130, %struct.sk_buff** %5, align 8
  %131 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %7, align 8
  %132 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %131, i32 0, i32 0
  %133 = load %struct.sk_buff**, %struct.sk_buff*** %132, align 8
  %134 = load i32, i32* %4, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %133, i64 %135
  store %struct.sk_buff* null, %struct.sk_buff** %136, align 8
  %137 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %138 = call i32 @dev_kfree_skb(%struct.sk_buff* %137)
  br label %139

139:                                              ; preds = %109
  %140 = load i32, i32* %4, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %4, align 4
  br label %102

142:                                              ; preds = %102
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %9, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %9, align 4
  br label %84

146:                                              ; preds = %84
  ret void
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i64, i32) #1

declare dso_local i32 @fec32_to_cpu(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.bufdesc* @fec_enet_get_nextdesc(%struct.bufdesc*, %struct.TYPE_6__*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
