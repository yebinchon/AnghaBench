; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_hif_usb_send_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_hif_usb_send_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hif_device_usb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.ath9k_htc_tx_ctl = type { i64 }

@HIF_USB_TX_STOP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@MAX_TX_BUF_NUM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATH9K_HTC_MGMT = common dso_local global i64 0, align 8
@ATH9K_HTC_BEACON = common dso_local global i64 0, align 8
@ATH9K_HTC_NORMAL = common dso_local global i64 0, align 8
@ATH9K_HTC_AMPDU = common dso_local global i64 0, align 8
@MAX_TX_URB_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hif_device_usb*, %struct.sk_buff*)* @hif_usb_send_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hif_usb_send_tx(%struct.hif_device_usb* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hif_device_usb*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ath9k_htc_tx_ctl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.hif_device_usb* %0, %struct.hif_device_usb** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.hif_device_usb*, %struct.hif_device_usb** %4, align 8
  %10 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.hif_device_usb*, %struct.hif_device_usb** %4, align 8
  %15 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @HIF_USB_TX_STOP, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.hif_device_usb*, %struct.hif_device_usb** %4, align 8
  %23 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %118

29:                                               ; preds = %2
  %30 = load %struct.hif_device_usb*, %struct.hif_device_usb** %4, align 8
  %31 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MAX_TX_BUF_NUM, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load %struct.hif_device_usb*, %struct.hif_device_usb** %4, align 8
  %38 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %118

44:                                               ; preds = %29
  %45 = load %struct.hif_device_usb*, %struct.hif_device_usb** %4, align 8
  %46 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = call %struct.ath9k_htc_tx_ctl* @HTC_SKB_CB(%struct.sk_buff* %50)
  store %struct.ath9k_htc_tx_ctl* %51, %struct.ath9k_htc_tx_ctl** %6, align 8
  %52 = load %struct.ath9k_htc_tx_ctl*, %struct.ath9k_htc_tx_ctl** %6, align 8
  %53 = getelementptr inbounds %struct.ath9k_htc_tx_ctl, %struct.ath9k_htc_tx_ctl* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @ATH9K_HTC_MGMT, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %44
  %58 = load %struct.ath9k_htc_tx_ctl*, %struct.ath9k_htc_tx_ctl** %6, align 8
  %59 = getelementptr inbounds %struct.ath9k_htc_tx_ctl, %struct.ath9k_htc_tx_ctl* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ATH9K_HTC_BEACON, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57, %44
  %64 = load %struct.hif_device_usb*, %struct.hif_device_usb** %4, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = call i32 @hif_usb_send_mgmt(%struct.hif_device_usb* %64, %struct.sk_buff* %65)
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %63, %57
  %68 = load %struct.hif_device_usb*, %struct.hif_device_usb** %4, align 8
  %69 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 3
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @spin_lock_irqsave(i32* %70, i64 %71)
  %73 = load %struct.ath9k_htc_tx_ctl*, %struct.ath9k_htc_tx_ctl** %6, align 8
  %74 = getelementptr inbounds %struct.ath9k_htc_tx_ctl, %struct.ath9k_htc_tx_ctl* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @ATH9K_HTC_NORMAL, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %84, label %78

78:                                               ; preds = %67
  %79 = load %struct.ath9k_htc_tx_ctl*, %struct.ath9k_htc_tx_ctl** %6, align 8
  %80 = getelementptr inbounds %struct.ath9k_htc_tx_ctl, %struct.ath9k_htc_tx_ctl* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @ATH9K_HTC_AMPDU, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %78, %67
  %85 = load %struct.hif_device_usb*, %struct.hif_device_usb** %4, align 8
  %86 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 4
  %88 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %89 = call i32 @__skb_queue_tail(i32* %87, %struct.sk_buff* %88)
  %90 = load %struct.hif_device_usb*, %struct.hif_device_usb** %4, align 8
  %91 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %84, %78
  %96 = load %struct.hif_device_usb*, %struct.hif_device_usb** %4, align 8
  %97 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @MAX_TX_URB_NUM, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %95
  %103 = load %struct.hif_device_usb*, %struct.hif_device_usb** %4, align 8
  %104 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %106, 2
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load %struct.hif_device_usb*, %struct.hif_device_usb** %4, align 8
  %110 = call i32 @__hif_usb_tx(%struct.hif_device_usb* %109)
  br label %111

111:                                              ; preds = %108, %102, %95
  %112 = load %struct.hif_device_usb*, %struct.hif_device_usb** %4, align 8
  %113 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 3
  %115 = load i64, i64* %7, align 8
  %116 = call i32 @spin_unlock_irqrestore(i32* %114, i64 %115)
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %111, %36, %21
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.ath9k_htc_tx_ctl* @HTC_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @hif_usb_send_mgmt(%struct.hif_device_usb*, %struct.sk_buff*) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @__hif_usb_tx(%struct.hif_device_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
