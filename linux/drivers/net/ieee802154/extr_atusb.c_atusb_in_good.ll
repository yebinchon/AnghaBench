; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_atusb.c_atusb_in_good.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_atusb.c_atusb_in_good.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, %struct.sk_buff*, %struct.usb_device* }
%struct.sk_buff = type { i32* }
%struct.usb_device = type { i32 }
%struct.atusb = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"atusb_in: zero-sized URB ?\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"atusb_in: frame len %d+1 > URB %u-1\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"atusb_in: frame corrupted\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"atusb_in: rx len %d lqi 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @atusb_in_good to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atusb_in_good(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.atusb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %8 = load %struct.urb*, %struct.urb** %2, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 2
  %10 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  store %struct.usb_device* %10, %struct.usb_device** %3, align 8
  %11 = load %struct.urb*, %struct.urb** %2, align 8
  %12 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 1
  %13 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %13, %struct.sk_buff** %4, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call %struct.atusb* @SKB_ATUSB(%struct.sk_buff* %14)
  store %struct.atusb* %15, %struct.atusb** %5, align 8
  %16 = load %struct.urb*, %struct.urb** %2, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %22 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %21, i32 0, i32 0
  %23 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %88

24:                                               ; preds = %1
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  %29 = load %struct.urb*, %struct.urb** %2, align 8
  %30 = getelementptr inbounds %struct.urb, %struct.urb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load %struct.atusb*, %struct.atusb** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @atusb_tx_done(%struct.atusb* %34, i32 %35)
  br label %88

37:                                               ; preds = %24
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  %40 = load %struct.urb*, %struct.urb** %2, align 8
  %41 = getelementptr inbounds %struct.urb, %struct.urb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 1
  %44 = icmp sgt i32 %39, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %37
  %46 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %47 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %46, i32 0, i32 0
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.urb*, %struct.urb** %2, align 8
  %50 = getelementptr inbounds %struct.urb, %struct.urb* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %51)
  br label %88

53:                                               ; preds = %37
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @ieee802154_is_valid_psdu_len(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %59 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %58, i32 0, i32 0
  %60 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %88

61:                                               ; preds = %53
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %7, align 4
  %70 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %71 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %70, i32 0, i32 0
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %72, i32 %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = call i32 @skb_pull(%struct.sk_buff* %75, i32 1)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @skb_trim(%struct.sk_buff* %77, i32 %78)
  %80 = load %struct.atusb*, %struct.atusb** %5, align 8
  %81 = getelementptr inbounds %struct.atusb, %struct.atusb* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @ieee802154_rx_irqsafe(i32 %82, %struct.sk_buff* %83, i32 %84)
  %86 = load %struct.urb*, %struct.urb** %2, align 8
  %87 = getelementptr inbounds %struct.urb, %struct.urb* %86, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %87, align 8
  br label %88

88:                                               ; preds = %61, %57, %45, %33, %20
  ret void
}

declare dso_local %struct.atusb* @SKB_ATUSB(%struct.sk_buff*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @atusb_tx_done(%struct.atusb*, i32) #1

declare dso_local i32 @ieee802154_is_valid_psdu_len(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @ieee802154_rx_irqsafe(i32, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
