; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_usb.c_mwifiex_usb_submit_rem_rx_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_usb.c_mwifiex_usb_submit_rem_rx_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i64 }
%struct.usb_card_rec = type { %struct.urb_context* }
%struct.urb_context = type { i64 }

@MWIFIEX_RX_DATA_URB = common dso_local global i32 0, align 4
@MWIFIEX_RX_DATA_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_adapter*)* @mwifiex_usb_submit_rem_rx_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_usb_submit_rem_rx_urbs(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  %3 = alloca %struct.usb_card_rec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.urb_context*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  %6 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.usb_card_rec*
  store %struct.usb_card_rec* %9, %struct.usb_card_rec** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %35, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @MWIFIEX_RX_DATA_URB, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %10
  %15 = load %struct.usb_card_rec*, %struct.usb_card_rec** %3, align 8
  %16 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %15, i32 0, i32 0
  %17 = load %struct.urb_context*, %struct.urb_context** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.urb_context, %struct.urb_context* %17, i64 %19
  %21 = getelementptr inbounds %struct.urb_context, %struct.urb_context* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %35

25:                                               ; preds = %14
  %26 = load %struct.usb_card_rec*, %struct.usb_card_rec** %3, align 8
  %27 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %26, i32 0, i32 0
  %28 = load %struct.urb_context*, %struct.urb_context** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.urb_context, %struct.urb_context* %28, i64 %30
  store %struct.urb_context* %31, %struct.urb_context** %5, align 8
  %32 = load %struct.urb_context*, %struct.urb_context** %5, align 8
  %33 = load i32, i32* @MWIFIEX_RX_DATA_BUF_SIZE, align 4
  %34 = call i32 @mwifiex_usb_submit_rx_urb(%struct.urb_context* %32, i32 %33)
  br label %35

35:                                               ; preds = %25, %24
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %10

38:                                               ; preds = %10
  ret void
}

declare dso_local i32 @mwifiex_usb_submit_rx_urb(%struct.urb_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
