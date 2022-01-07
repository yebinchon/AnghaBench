; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_fst_rx_dma_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_fst_rx_dma_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.fst_card_info = type { i32 }
%struct.fst_port_info = type { i32, i64 }
%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@DBG_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"fst_rx_dma_complete\0A\00", align 1
@rxDescrRing = common dso_local global %struct.TYPE_4__** null, align 8
@DMA_OWN = common dso_local global i32 0, align 4
@DBG_RX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Pushing the frame up the stack\0A\00", align 1
@FST_RAW = common dso_local global i64 0, align 8
@NET_RX_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fst_card_info*, %struct.fst_port_info*, i32, %struct.sk_buff*, i32)* @fst_rx_dma_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fst_rx_dma_complete(%struct.fst_card_info* %0, %struct.fst_port_info* %1, i32 %2, %struct.sk_buff* %3, i32 %4) #0 {
  %6 = alloca %struct.fst_card_info*, align 8
  %7 = alloca %struct.fst_port_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fst_card_info* %0, %struct.fst_card_info** %6, align 8
  store %struct.fst_port_info* %1, %struct.fst_port_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.fst_port_info*, %struct.fst_port_info** %7, align 8
  %15 = call %struct.net_device* @port_to_dev(%struct.fst_port_info* %14)
  store %struct.net_device* %15, %struct.net_device** %11, align 8
  %16 = load i32, i32* @DBG_TX, align 4
  %17 = call i32 @dbg(i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.fst_port_info*, %struct.fst_port_info** %7, align 8
  %19 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %12, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %22 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %23 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @skb_put_data(%struct.sk_buff* %21, i32 %24, i32 %25)
  %27 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %28 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @rxDescrRing, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %28, i64 %30
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DMA_OWN, align 4
  %39 = call i32 @FST_WRB(%struct.fst_card_info* %27, i32 %37, i32 %38)
  %40 = load %struct.net_device*, %struct.net_device** %11, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.net_device*, %struct.net_device** %11, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, %45
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* @DBG_RX, align 4
  %52 = call i32 @dbg(i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.fst_port_info*, %struct.fst_port_info** %7, align 8
  %54 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @FST_RAW, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %5
  %59 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %60 = load %struct.net_device*, %struct.net_device** %11, align 8
  %61 = call i32 @farsync_type_trans(%struct.sk_buff* %59, %struct.net_device* %60)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %70

64:                                               ; preds = %5
  %65 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %66 = load %struct.net_device*, %struct.net_device** %11, align 8
  %67 = call i32 @hdlc_type_trans(%struct.sk_buff* %65, %struct.net_device* %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %64, %58
  %71 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %72 = call i32 @netif_rx(%struct.sk_buff* %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load %struct.fst_port_info*, %struct.fst_port_info** %7, align 8
  %75 = call %struct.net_device* @port_to_dev(%struct.fst_port_info* %74)
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @fst_process_rx_status(i32 %73, i32 %77)
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @NET_RX_DROP, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %70
  %83 = load %struct.net_device*, %struct.net_device** %11, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %82, %70
  ret void
}

declare dso_local %struct.net_device* @port_to_dev(%struct.fst_port_info*) #1

declare dso_local i32 @dbg(i32, i8*) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @FST_WRB(%struct.fst_card_info*, i32, i32) #1

declare dso_local i32 @farsync_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @hdlc_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @fst_process_rx_status(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
