; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_pro.c_pcan_usb_pro_encode_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_pro.c_pcan_usb_pro_encode_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_usb_device = type { i32 }
%struct.sk_buff = type { i64 }
%struct.can_frame = type { i32, i32, i32 }
%struct.pcan_usb_pro_msg = type { i64 }

@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@PCAN_USBPRO_TXMSG0 = common dso_local global i32 0, align 4
@PCAN_USBPRO_TXMSG4 = common dso_local global i32 0, align 4
@PCAN_USBPRO_TXMSG8 = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.peak_usb_device*, %struct.sk_buff*, i32*, i64*)* @pcan_usb_pro_encode_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcan_usb_pro_encode_msg(%struct.peak_usb_device* %0, %struct.sk_buff* %1, i32* %2, i64* %3) #0 {
  %5 = alloca %struct.peak_usb_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.can_frame*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pcan_usb_pro_msg, align 8
  store %struct.peak_usb_device* %0, %struct.peak_usb_device** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64* %3, i64** %8, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.can_frame*
  store %struct.can_frame* %17, %struct.can_frame** %9, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i64*, i64** %8, align 8
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @pcan_msg_init_empty(%struct.pcan_usb_pro_msg* %13, i32* %18, i64 %20)
  %22 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %23 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CAN_RTR_FLAG, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %4
  %29 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %30 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28, %4
  %34 = load i32, i32* @PCAN_USBPRO_TXMSG0, align 4
  store i32 %34, i32* %10, align 4
  br label %45

35:                                               ; preds = %28
  %36 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %37 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp sle i32 %38, 4
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @PCAN_USBPRO_TXMSG4, align 4
  store i32 %41, i32* %10, align 4
  br label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @PCAN_USBPRO_TXMSG8, align 4
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %42, %40
  br label %45

45:                                               ; preds = %44, %33
  %46 = load %struct.peak_usb_device*, %struct.peak_usb_device** %5, align 8
  %47 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 4
  %50 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %51 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 15
  %54 = or i32 %49, %53
  store i32 %54, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %55 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %56 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @CAN_EFF_FLAG, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %45
  %62 = load i32, i32* %12, align 4
  %63 = or i32 %62, 2
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %61, %45
  %65 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %66 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CAN_RTR_FLAG, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load i32, i32* %12, align 4
  %73 = or i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %71, %64
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %79 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %82 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @pcan_msg_add_rec(%struct.pcan_usb_pro_msg* %13, i32 %75, i32 0, i32 %76, i32 %77, i32 %80, i32 %83)
  %85 = getelementptr inbounds %struct.pcan_usb_pro_msg, %struct.pcan_usb_pro_msg* %13, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64*, i64** %8, align 8
  store i64 %86, i64* %87, align 8
  ret i32 0
}

declare dso_local i32 @pcan_msg_init_empty(%struct.pcan_usb_pro_msg*, i32*, i64) #1

declare dso_local i32 @pcan_msg_add_rec(%struct.pcan_usb_pro_msg*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
