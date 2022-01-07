; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_fst_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_fst_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fst_card_info = type { i64, i32 }
%struct.fst_port_info = type { i64, i64, i32, i32, %struct.sk_buff**, %struct.fst_card_info* }

@DBG_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"fst_start_xmit: length = %d\0A\00", align 1
@DBG_ASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Tried to transmit but no carrier on card %d port %d\0A\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@LEN_TX_BUFFER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"Packet too large %d vs %d\0A\00", align 1
@FST_TXQ_DEPTH = common dso_local global i32 0, align 4
@fst_txq_high = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Tx queue overflow card %d port %d\0A\00", align 1
@fst_work_txq = common dso_local global i32 0, align 4
@fst_tx_task = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @fst_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fst_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.fst_card_info*, align 8
  %7 = alloca %struct.fst_port_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.fst_port_info* @dev_to_port(%struct.net_device* %10)
  store %struct.fst_port_info* %11, %struct.fst_port_info** %7, align 8
  %12 = load %struct.fst_port_info*, %struct.fst_port_info** %7, align 8
  %13 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %12, i32 0, i32 5
  %14 = load %struct.fst_card_info*, %struct.fst_card_info** %13, align 8
  store %struct.fst_card_info* %14, %struct.fst_card_info** %6, align 8
  %15 = load i32, i32* @DBG_TX, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 (i32, i8*, i64, ...) @dbg(i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = call i32 @netif_carrier_ok(%struct.net_device* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %45, label %23

23:                                               ; preds = %2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call i32 @dev_kfree_skb(%struct.sk_buff* %24)
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @DBG_ASS, align 4
  %37 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %38 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.fst_port_info*, %struct.fst_port_info** %7, align 8
  %41 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 (i32, i8*, i64, ...) @dbg(i32 %36, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %39, i64 %42)
  %44 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %44, i32* %3, align 4
  br label %157

45:                                               ; preds = %2
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @LEN_TX_BUFFER, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %45
  %52 = load i32, i32* @DBG_ASS, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @LEN_TX_BUFFER, align 8
  %57 = call i32 (i32, i8*, i64, ...) @dbg(i32 %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %55, i64 %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call i32 @dev_kfree_skb(%struct.sk_buff* %58)
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %65, i32* %3, align 4
  br label %157

66:                                               ; preds = %45
  %67 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %68 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %67, i32 0, i32 1
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @spin_lock_irqsave(i32* %68, i64 %69)
  %71 = load %struct.fst_port_info*, %struct.fst_port_info** %7, align 8
  %72 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.fst_port_info*, %struct.fst_port_info** %7, align 8
  %75 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = sub i64 %73, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %9, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %66
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @FST_TXQ_DEPTH, align 4
  %84 = add nsw i32 %82, %83
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %81, %66
  %86 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %87 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %86, i32 0, i32 1
  %88 = load i64, i64* %8, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @fst_txq_high, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %85
  %94 = load %struct.net_device*, %struct.net_device** %5, align 8
  %95 = call i32 @netif_stop_queue(%struct.net_device* %94)
  %96 = load %struct.fst_port_info*, %struct.fst_port_info** %7, align 8
  %97 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %96, i32 0, i32 3
  store i32 1, i32* %97, align 4
  br label %98

98:                                               ; preds = %93, %85
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @FST_TXQ_DEPTH, align 4
  %101 = sub nsw i32 %100, 1
  %102 = icmp eq i32 %99, %101
  br i1 %102, label %103, label %120

103:                                              ; preds = %98
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %105 = call i32 @dev_kfree_skb(%struct.sk_buff* %104)
  %106 = load %struct.net_device*, %struct.net_device** %5, align 8
  %107 = getelementptr inbounds %struct.net_device, %struct.net_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  %111 = load i32, i32* @DBG_ASS, align 4
  %112 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %113 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.fst_port_info*, %struct.fst_port_info** %7, align 8
  %116 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 (i32, i8*, i64, ...) @dbg(i32 %111, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %114, i64 %117)
  %119 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %119, i32* %3, align 4
  br label %157

120:                                              ; preds = %98
  %121 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %122 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %121, i32 0, i32 1
  %123 = load i64, i64* %8, align 8
  %124 = call i32 @spin_lock_irqsave(i32* %122, i64 %123)
  %125 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %126 = load %struct.fst_port_info*, %struct.fst_port_info** %7, align 8
  %127 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %126, i32 0, i32 4
  %128 = load %struct.sk_buff**, %struct.sk_buff*** %127, align 8
  %129 = load %struct.fst_port_info*, %struct.fst_port_info** %7, align 8
  %130 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %128, i64 %131
  store %struct.sk_buff* %125, %struct.sk_buff** %132, align 8
  %133 = load %struct.fst_port_info*, %struct.fst_port_info** %7, align 8
  %134 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %134, align 8
  %137 = load %struct.fst_port_info*, %struct.fst_port_info** %7, align 8
  %138 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* @FST_TXQ_DEPTH, align 4
  %141 = sext i32 %140 to i64
  %142 = icmp eq i64 %139, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %120
  %144 = load %struct.fst_port_info*, %struct.fst_port_info** %7, align 8
  %145 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %144, i32 0, i32 1
  store i64 0, i64* %145, align 8
  br label %146

146:                                              ; preds = %143, %120
  %147 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %148 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %147, i32 0, i32 1
  %149 = load i64, i64* %8, align 8
  %150 = call i32 @spin_unlock_irqrestore(i32* %148, i64 %149)
  %151 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %152 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @fst_q_work_item(i32* @fst_work_txq, i64 %153)
  %155 = call i32 @tasklet_schedule(i32* @fst_tx_task)
  %156 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %146, %103, %51, %23
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local %struct.fst_port_info* @dev_to_port(%struct.net_device*) #1

declare dso_local i32 @dbg(i32, i8*, i64, ...) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @fst_q_work_item(i32*, i64) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
