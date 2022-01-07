; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_rx_refill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_rx_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_usbdev_info = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.brcmf_usbreq = type { %struct.sk_buff*, i32, %struct.brcmf_usbdev_info* }
%struct.sk_buff = type { i32 }

@brcmf_usb_rx_complete = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_usbdev_info*, %struct.brcmf_usbreq*)* @brcmf_usb_rx_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_usb_rx_refill(%struct.brcmf_usbdev_info* %0, %struct.brcmf_usbreq* %1) #0 {
  %3 = alloca %struct.brcmf_usbdev_info*, align 8
  %4 = alloca %struct.brcmf_usbreq*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.brcmf_usbdev_info* %0, %struct.brcmf_usbdev_info** %3, align 8
  store %struct.brcmf_usbreq* %1, %struct.brcmf_usbreq** %4, align 8
  %7 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %4, align 8
  %8 = icmp ne %struct.brcmf_usbreq* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %11 = icmp ne %struct.brcmf_usbdev_info* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %2
  br label %79

13:                                               ; preds = %9
  %14 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %15 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.sk_buff* @dev_alloc_skb(i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %5, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %13
  %22 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %23 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %24 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %23, i32 0, i32 0
  %25 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %4, align 8
  %26 = call i32 @brcmf_usb_enq(%struct.brcmf_usbdev_info* %22, i32* %24, %struct.brcmf_usbreq* %25, i32* null)
  br label %79

27:                                               ; preds = %13
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %4, align 8
  %30 = getelementptr inbounds %struct.brcmf_usbreq, %struct.brcmf_usbreq* %29, i32 0, i32 0
  store %struct.sk_buff* %28, %struct.sk_buff** %30, align 8
  %31 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %4, align 8
  %32 = getelementptr inbounds %struct.brcmf_usbreq, %struct.brcmf_usbreq* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %35 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %38 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = call i32 @skb_tailroom(%struct.sk_buff* %43)
  %45 = load i32, i32* @brcmf_usb_rx_complete, align 4
  %46 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %4, align 8
  %47 = call i32 @usb_fill_bulk_urb(i32 %33, i32 %36, i32 %39, i32 %42, i32 %44, i32 %45, %struct.brcmf_usbreq* %46)
  %48 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %49 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %4, align 8
  %50 = getelementptr inbounds %struct.brcmf_usbreq, %struct.brcmf_usbreq* %49, i32 0, i32 2
  store %struct.brcmf_usbdev_info* %48, %struct.brcmf_usbdev_info** %50, align 8
  %51 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %52 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %53 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %52, i32 0, i32 1
  %54 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %4, align 8
  %55 = call i32 @brcmf_usb_enq(%struct.brcmf_usbdev_info* %51, i32* %53, %struct.brcmf_usbreq* %54, i32* null)
  %56 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %4, align 8
  %57 = getelementptr inbounds %struct.brcmf_usbreq, %struct.brcmf_usbreq* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @GFP_ATOMIC, align 4
  %60 = call i32 @usb_submit_urb(i32 %58, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %27
  %64 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %65 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %4, align 8
  %66 = call i32 @brcmf_usb_del_fromq(%struct.brcmf_usbdev_info* %64, %struct.brcmf_usbreq* %65)
  %67 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %4, align 8
  %68 = getelementptr inbounds %struct.brcmf_usbreq, %struct.brcmf_usbreq* %67, i32 0, i32 0
  %69 = load %struct.sk_buff*, %struct.sk_buff** %68, align 8
  %70 = call i32 @brcmu_pkt_buf_free_skb(%struct.sk_buff* %69)
  %71 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %4, align 8
  %72 = getelementptr inbounds %struct.brcmf_usbreq, %struct.brcmf_usbreq* %71, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %72, align 8
  %73 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %74 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %3, align 8
  %75 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %74, i32 0, i32 0
  %76 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %4, align 8
  %77 = call i32 @brcmf_usb_enq(%struct.brcmf_usbdev_info* %73, i32* %75, %struct.brcmf_usbreq* %76, i32* null)
  br label %78

78:                                               ; preds = %63, %27
  br label %79

79:                                               ; preds = %78, %21, %12
  ret void
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @brcmf_usb_enq(%struct.brcmf_usbdev_info*, i32*, %struct.brcmf_usbreq*, i32*) #1

declare dso_local i32 @usb_fill_bulk_urb(i32, i32, i32, i32, i32, i32, %struct.brcmf_usbreq*) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @brcmf_usb_del_fromq(%struct.brcmf_usbdev_info*, %struct.brcmf_usbreq*) #1

declare dso_local i32 @brcmu_pkt_buf_free_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
