; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_usb.c_mwifiex_submit_rx_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_usb.c_mwifiex_submit_rx_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i64 }
%struct.usb_card_rec = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@INTF_HEADER_LEN = common dso_local global i32 0, align 4
@MWIFIEX_RX_CMD_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_adapter*, i64)* @mwifiex_submit_rx_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_submit_rx_urb(%struct.mwifiex_adapter* %0, i64 %1) #0 {
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.usb_card_rec*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.usb_card_rec*
  store %struct.usb_card_rec* %9, %struct.usb_card_rec** %5, align 8
  %10 = load %struct.usb_card_rec*, %struct.usb_card_rec** %5, align 8
  %11 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @INTF_HEADER_LEN, align 4
  %15 = call i32 @skb_push(i32 %13, i32 %14)
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.usb_card_rec*, %struct.usb_card_rec** %5, align 8
  %18 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load %struct.usb_card_rec*, %struct.usb_card_rec** %5, align 8
  %23 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %22, i32 0, i32 2
  %24 = call i32 @atomic_read(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.usb_card_rec*, %struct.usb_card_rec** %5, align 8
  %28 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %27, i32 0, i32 1
  %29 = load i32, i32* @MWIFIEX_RX_CMD_BUF_SIZE, align 4
  %30 = call i32 @mwifiex_usb_submit_rx_urb(%struct.TYPE_2__* %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %21, %2
  ret void
}

declare dso_local i32 @skb_push(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @mwifiex_usb_submit_rx_urb(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
