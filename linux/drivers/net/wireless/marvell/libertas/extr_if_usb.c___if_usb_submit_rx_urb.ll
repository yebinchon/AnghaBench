; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_usb.c___if_usb_submit_rx_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_usb.c___if_usb_submit_rx_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_usb_card = type { %struct.TYPE_3__*, %struct.sk_buff*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.urb = type opaque
%struct.urb.0 = type opaque

@MRVDRV_ETH_RX_PACKET_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"No free skb\0A\00", align 1
@IPFIELD_ALIGN_OFFSET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Pointer for rx_urb %p\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Submit Rx URB failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Submit Rx URB success\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_usb_card*, void (%struct.urb*)*)* @__if_usb_submit_rx_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__if_usb_submit_rx_urb(%struct.if_usb_card* %0, void (%struct.urb*)* %1) #0 {
  %3 = alloca %struct.if_usb_card*, align 8
  %4 = alloca void (%struct.urb*)*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.if_usb_card* %0, %struct.if_usb_card** %3, align 8
  store void (%struct.urb*)* %1, void (%struct.urb*)** %4, align 8
  store i32 -1, i32* %6, align 4
  %7 = load i32, i32* @MRVDRV_ETH_RX_PACKET_BUFFER_SIZE, align 4
  %8 = call %struct.sk_buff* @dev_alloc_skb(i32 %7)
  store %struct.sk_buff* %8, %struct.sk_buff** %5, align 8
  %9 = icmp ne %struct.sk_buff* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %71

12:                                               ; preds = %2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %15 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %14, i32 0, i32 1
  store %struct.sk_buff* %13, %struct.sk_buff** %15, align 8
  %16 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %17 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %20 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %23 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %26 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @usb_rcvbulkpipe(%struct.TYPE_3__* %24, i32 %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IPFIELD_ALIGN_OFFSET, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i32, i32* @MRVDRV_ETH_RX_PACKET_BUFFER_SIZE, align 4
  %35 = load void (%struct.urb*)*, void (%struct.urb*)** %4, align 8
  %36 = bitcast void (%struct.urb*)* %35 to void (%struct.urb.0*)*
  %37 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %38 = call i32 @usb_fill_bulk_urb(i32 %18, %struct.TYPE_3__* %21, i32 %28, i64 %33, i32 %34, void (%struct.urb.0*)* %36, %struct.if_usb_card* %37)
  %39 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %40 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %44 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i32*, i8*, ...) @lbs_deb_usb2(i32* %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %48 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @GFP_ATOMIC, align 4
  %51 = call i32 @usb_submit_urb(i32 %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %12
  %54 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %55 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @lbs_deb_usbd(i32* %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = call i32 @kfree_skb(%struct.sk_buff* %60)
  %62 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %63 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %62, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %63, align 8
  store i32 -1, i32* %6, align 4
  br label %70

64:                                               ; preds = %12
  %65 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %66 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = call i32 (i32*, i8*, ...) @lbs_deb_usb2(i32* %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %64, %53
  br label %71

71:                                               ; preds = %70, %10
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @usb_fill_bulk_urb(i32, %struct.TYPE_3__*, i32, i64, i32, void (%struct.urb.0*)*, %struct.if_usb_card*) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @lbs_deb_usb2(i32*, i8*, ...) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @lbs_deb_usbd(i32*, i8*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
