; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_usb.c_mwifiex_usb_cleanup_tx_aggr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_usb.c_mwifiex_usb_cleanup_tx_aggr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.usb_card_rec = type { %struct.usb_tx_data_port* }
%struct.usb_tx_data_port = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i64, i32 }
%struct.sk_buff = type { i32 }

@MWIFIEX_TX_DATA_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_adapter*)* @mwifiex_usb_cleanup_tx_aggr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_usb_cleanup_tx_aggr(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  %3 = alloca %struct.usb_card_rec*, align 8
  %4 = alloca %struct.usb_tx_data_port*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  %7 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.usb_card_rec*
  store %struct.usb_card_rec* %10, %struct.usb_card_rec** %3, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %53, %1
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MWIFIEX_TX_DATA_PORT, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %56

15:                                               ; preds = %11
  %16 = load %struct.usb_card_rec*, %struct.usb_card_rec** %3, align 8
  %17 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %16, i32 0, i32 0
  %18 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %18, i64 %20
  store %struct.usb_tx_data_port* %21, %struct.usb_tx_data_port** %4, align 8
  %22 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %34, %27
  %29 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %4, align 8
  %30 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = call %struct.sk_buff* @skb_dequeue(i32* %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %5, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call i32 @mwifiex_write_data_complete(%struct.mwifiex_adapter* %35, %struct.sk_buff* %36, i32 0, i32 -1)
  br label %28

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %15
  %40 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %4, align 8
  %41 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = call i32 @del_timer_sync(i32* %43)
  %45 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %4, align 8
  %46 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %4, align 8
  %50 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %39
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %11

56:                                               ; preds = %11
  ret void
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @mwifiex_write_data_complete(%struct.mwifiex_adapter*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
