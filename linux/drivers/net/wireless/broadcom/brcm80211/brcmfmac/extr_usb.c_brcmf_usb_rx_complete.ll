; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_rx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_rx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, i32, i64 }
%struct.brcmf_usbreq = type { %struct.sk_buff*, %struct.brcmf_usbdev_info* }
%struct.sk_buff = type { i32 }
%struct.brcmf_usbdev_info = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Enter, urb->status=%d\0A\00", align 1
@BRCMFMAC_USB_STATE_UP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @brcmf_usb_rx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_usb_rx_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.brcmf_usbreq*, align 8
  %4 = alloca %struct.brcmf_usbdev_info*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %6 = load %struct.urb*, %struct.urb** %2, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.brcmf_usbreq*
  store %struct.brcmf_usbreq* %9, %struct.brcmf_usbreq** %3, align 8
  %10 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %3, align 8
  %11 = getelementptr inbounds %struct.brcmf_usbreq, %struct.brcmf_usbreq* %10, i32 0, i32 1
  %12 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %11, align 8
  store %struct.brcmf_usbdev_info* %12, %struct.brcmf_usbdev_info** %4, align 8
  %13 = load i32, i32* @USB, align 4
  %14 = load %struct.urb*, %struct.urb** %2, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @brcmf_dbg(i32 %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %4, align 8
  %19 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %3, align 8
  %20 = call i32 @brcmf_usb_del_fromq(%struct.brcmf_usbdev_info* %18, %struct.brcmf_usbreq* %19)
  %21 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %3, align 8
  %22 = getelementptr inbounds %struct.brcmf_usbreq, %struct.brcmf_usbreq* %21, i32 0, i32 0
  %23 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  store %struct.sk_buff* %23, %struct.sk_buff** %5, align 8
  %24 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %3, align 8
  %25 = getelementptr inbounds %struct.brcmf_usbreq, %struct.brcmf_usbreq* %24, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %25, align 8
  %26 = load %struct.urb*, %struct.urb** %2, align 8
  %27 = getelementptr inbounds %struct.urb, %struct.urb* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %1
  %31 = load %struct.urb*, %struct.urb** %2, align 8
  %32 = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %30, %1
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call i32 @brcmu_pkt_buf_free_skb(%struct.sk_buff* %36)
  %38 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %4, align 8
  %39 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %4, align 8
  %40 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %39, i32 0, i32 0
  %41 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %3, align 8
  %42 = call i32 @brcmf_usb_enq(%struct.brcmf_usbdev_info* %38, i32* %40, %struct.brcmf_usbreq* %41, i32* null)
  br label %73

43:                                               ; preds = %30
  %44 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %4, align 8
  %45 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @BRCMFMAC_USB_STATE_UP, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %43
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = load %struct.urb*, %struct.urb** %2, align 8
  %53 = getelementptr inbounds %struct.urb, %struct.urb* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @skb_put(%struct.sk_buff* %51, i32 %54)
  %56 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %4, align 8
  %57 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = call i32 @brcmf_rx_frame(i32 %58, %struct.sk_buff* %59, i32 1)
  %61 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %4, align 8
  %62 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %3, align 8
  %63 = call i32 @brcmf_usb_rx_refill(%struct.brcmf_usbdev_info* %61, %struct.brcmf_usbreq* %62)
  br label %72

64:                                               ; preds = %43
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = call i32 @brcmu_pkt_buf_free_skb(%struct.sk_buff* %65)
  %67 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %4, align 8
  %68 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %4, align 8
  %69 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %68, i32 0, i32 0
  %70 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %3, align 8
  %71 = call i32 @brcmf_usb_enq(%struct.brcmf_usbdev_info* %67, i32* %69, %struct.brcmf_usbreq* %70, i32* null)
  br label %72

72:                                               ; preds = %64, %50
  br label %73

73:                                               ; preds = %72, %35
  ret void
}

declare dso_local i32 @brcmf_dbg(i32, i8*, i64) #1

declare dso_local i32 @brcmf_usb_del_fromq(%struct.brcmf_usbdev_info*, %struct.brcmf_usbreq*) #1

declare dso_local i32 @brcmu_pkt_buf_free_skb(%struct.sk_buff*) #1

declare dso_local i32 @brcmf_usb_enq(%struct.brcmf_usbdev_info*, i32*, %struct.brcmf_usbreq*, i32*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @brcmf_rx_frame(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @brcmf_usb_rx_refill(%struct.brcmf_usbdev_info*, %struct.brcmf_usbreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
