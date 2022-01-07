; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.brcmf_usbdev_info = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.brcmf_usbreq = type { %struct.sk_buff*, %struct.TYPE_5__*, %struct.brcmf_usbdev_info* }
%struct.TYPE_5__ = type { i32 }

@USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Enter, skb=%p\0A\00", align 1
@BRCMFMAC_USB_STATE_UP = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"no req to send\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@brcmf_usb_tx_complete = common dso_local global i32 0, align 4
@URB_ZERO_PACKET = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"brcmf_usb_tx usb_submit_urb FAILED\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.sk_buff*)* @brcmf_usb_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_usb_tx(%struct.device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.brcmf_usbdev_info*, align 8
  %7 = alloca %struct.brcmf_usbreq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.brcmf_usbdev_info* @brcmf_usb_get_businfo(%struct.device* %10)
  store %struct.brcmf_usbdev_info* %11, %struct.brcmf_usbdev_info** %6, align 8
  %12 = load i32, i32* @USB, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call i32 @brcmf_dbg(i32 %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %13)
  %15 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %6, align 8
  %16 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %15, i32 0, i32 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BRCMFMAC_USB_STATE_UP, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %8, align 4
  br label %122

24:                                               ; preds = %2
  %25 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %6, align 8
  %26 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %6, align 8
  %27 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %26, i32 0, i32 4
  %28 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %6, align 8
  %29 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %28, i32 0, i32 0
  %30 = call %struct.brcmf_usbreq* @brcmf_usb_deq(%struct.brcmf_usbdev_info* %25, i32* %27, i64* %29)
  store %struct.brcmf_usbreq* %30, %struct.brcmf_usbreq** %7, align 8
  %31 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %7, align 8
  %32 = icmp ne %struct.brcmf_usbreq* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %24
  %34 = call i32 @brcmf_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  br label %122

37:                                               ; preds = %24
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %7, align 8
  %40 = getelementptr inbounds %struct.brcmf_usbreq, %struct.brcmf_usbreq* %39, i32 0, i32 0
  store %struct.sk_buff* %38, %struct.sk_buff** %40, align 8
  %41 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %6, align 8
  %42 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %7, align 8
  %43 = getelementptr inbounds %struct.brcmf_usbreq, %struct.brcmf_usbreq* %42, i32 0, i32 2
  store %struct.brcmf_usbdev_info* %41, %struct.brcmf_usbdev_info** %43, align 8
  %44 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %7, align 8
  %45 = getelementptr inbounds %struct.brcmf_usbreq, %struct.brcmf_usbreq* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %6, align 8
  %48 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %6, align 8
  %51 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @brcmf_usb_tx_complete, align 4
  %60 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %7, align 8
  %61 = call i32 @usb_fill_bulk_urb(%struct.TYPE_5__* %46, i32 %49, i32 %52, i32 %55, i32 %58, i32 %59, %struct.brcmf_usbreq* %60)
  %62 = load i32, i32* @URB_ZERO_PACKET, align 4
  %63 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %7, align 8
  %64 = getelementptr inbounds %struct.brcmf_usbreq, %struct.brcmf_usbreq* %63, i32 0, i32 1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %62
  store i32 %68, i32* %66, align 4
  %69 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %6, align 8
  %70 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %6, align 8
  %71 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %70, i32 0, i32 5
  %72 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %7, align 8
  %73 = call i32 @brcmf_usb_enq(%struct.brcmf_usbdev_info* %69, i32* %71, %struct.brcmf_usbreq* %72, i64* null)
  %74 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %7, align 8
  %75 = getelementptr inbounds %struct.brcmf_usbreq, %struct.brcmf_usbreq* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i32, i32* @GFP_ATOMIC, align 4
  %78 = call i32 @usb_submit_urb(%struct.TYPE_5__* %76, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %37
  %82 = call i32 @brcmf_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %83 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %6, align 8
  %84 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %7, align 8
  %85 = call i32 @brcmf_usb_del_fromq(%struct.brcmf_usbdev_info* %83, %struct.brcmf_usbreq* %84)
  %86 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %7, align 8
  %87 = getelementptr inbounds %struct.brcmf_usbreq, %struct.brcmf_usbreq* %86, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %87, align 8
  %88 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %6, align 8
  %89 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %6, align 8
  %90 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %89, i32 0, i32 4
  %91 = load %struct.brcmf_usbreq*, %struct.brcmf_usbreq** %7, align 8
  %92 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %6, align 8
  %93 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %92, i32 0, i32 0
  %94 = call i32 @brcmf_usb_enq(%struct.brcmf_usbdev_info* %88, i32* %90, %struct.brcmf_usbreq* %91, i64* %93)
  br label %122

95:                                               ; preds = %37
  %96 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %6, align 8
  %97 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %96, i32 0, i32 3
  %98 = load i64, i64* %9, align 8
  %99 = call i32 @spin_lock_irqsave(i32* %97, i64 %98)
  %100 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %6, align 8
  %101 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %6, align 8
  %104 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp slt i64 %102, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %95
  %108 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %6, align 8
  %109 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %107
  %113 = load %struct.device*, %struct.device** %4, align 8
  %114 = call i32 @brcmf_proto_bcdc_txflowblock(%struct.device* %113, i32 1)
  %115 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %6, align 8
  %116 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %115, i32 0, i32 2
  store i32 1, i32* %116, align 8
  br label %117

117:                                              ; preds = %112, %107, %95
  %118 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %6, align 8
  %119 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %118, i32 0, i32 3
  %120 = load i64, i64* %9, align 8
  %121 = call i32 @spin_unlock_irqrestore(i32* %119, i64 %120)
  store i32 0, i32* %3, align 4
  br label %124

122:                                              ; preds = %81, %33, %21
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %122, %117
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.brcmf_usbdev_info* @brcmf_usb_get_businfo(%struct.device*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, %struct.sk_buff*) #1

declare dso_local %struct.brcmf_usbreq* @brcmf_usb_deq(%struct.brcmf_usbdev_info*, i32*, i64*) #1

declare dso_local i32 @brcmf_err(i8*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_5__*, i32, i32, i32, i32, i32, %struct.brcmf_usbreq*) #1

declare dso_local i32 @brcmf_usb_enq(%struct.brcmf_usbdev_info*, i32*, %struct.brcmf_usbreq*, i64*) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @brcmf_usb_del_fromq(%struct.brcmf_usbdev_info*, %struct.brcmf_usbreq*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @brcmf_proto_bcdc_txflowblock(%struct.device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
