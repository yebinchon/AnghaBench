; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb.c_pcan_usb_encode_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb.c_pcan_usb_encode_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_usb_device = type { %struct.net_device* }
%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32 }
%struct.sk_buff = type { i64 }
%struct.can_frame = type { i32, i32, i32* }

@PCAN_USB_MSG_HEADER_LEN = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@PCAN_USB_STATUSLEN_RTR = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@CAN_ERR_MASK = common dso_local global i32 0, align 4
@PCAN_USB_STATUSLEN_EXT_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.peak_usb_device*, %struct.sk_buff*, i32*, i64*)* @pcan_usb_encode_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcan_usb_encode_msg(%struct.peak_usb_device* %0, %struct.sk_buff* %1, i32* %2, i64* %3) #0 {
  %5 = alloca %struct.peak_usb_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net_device_stats*, align 8
  %11 = alloca %struct.can_frame*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.peak_usb_device* %0, %struct.peak_usb_device** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64* %3, i64** %8, align 8
  %15 = load %struct.peak_usb_device*, %struct.peak_usb_device** %5, align 8
  %16 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %15, i32 0, i32 0
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %9, align 8
  %18 = load %struct.net_device*, %struct.net_device** %9, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  store %struct.net_device_stats* %19, %struct.net_device_stats** %10, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.can_frame*
  store %struct.can_frame* %23, %struct.can_frame** %11, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 2, i32* %25, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 1, i32* %27, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* @PCAN_USB_MSG_HEADER_LEN, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32* %31, i32** %12, align 8
  %32 = load %struct.can_frame*, %struct.can_frame** %11, align 8
  %33 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32*, i32** %12, align 8
  store i32 %34, i32* %35, align 4
  %36 = load %struct.can_frame*, %struct.can_frame** %11, align 8
  %37 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CAN_RTR_FLAG, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %4
  %43 = load i32, i32* @PCAN_USB_STATUSLEN_RTR, align 4
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %42, %4
  %48 = load %struct.can_frame*, %struct.can_frame** %11, align 8
  %49 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @CAN_EFF_FLAG, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %47
  %55 = load %struct.can_frame*, %struct.can_frame** %11, align 8
  %56 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @CAN_ERR_MASK, align 4
  %59 = and i32 %57, %58
  %60 = shl i32 %59, 3
  %61 = call i32 @cpu_to_le32(i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* @PCAN_USB_STATUSLEN_EXT_ID, align 4
  %63 = load i32*, i32** %12, align 8
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %62
  store i32 %65, i32* %63, align 4
  %66 = load i32*, i32** %12, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %12, align 8
  %68 = call i32 @memcpy(i32* %67, i32* %13, i32 4)
  %69 = load i32*, i32** %12, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 4
  store i32* %70, i32** %12, align 8
  br label %84

71:                                               ; preds = %47
  %72 = load %struct.can_frame*, %struct.can_frame** %11, align 8
  %73 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @CAN_ERR_MASK, align 4
  %76 = and i32 %74, %75
  %77 = shl i32 %76, 5
  %78 = call i32 @cpu_to_le16(i32 %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32*, i32** %12, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %12, align 8
  %81 = call i32 @memcpy(i32* %80, i32* %14, i32 2)
  %82 = load i32*, i32** %12, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  store i32* %83, i32** %12, align 8
  br label %84

84:                                               ; preds = %71, %54
  %85 = load %struct.can_frame*, %struct.can_frame** %11, align 8
  %86 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @CAN_RTR_FLAG, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %106, label %91

91:                                               ; preds = %84
  %92 = load i32*, i32** %12, align 8
  %93 = load %struct.can_frame*, %struct.can_frame** %11, align 8
  %94 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.can_frame*, %struct.can_frame** %11, align 8
  %97 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @memcpy(i32* %92, i32* %95, i32 %98)
  %100 = load %struct.can_frame*, %struct.can_frame** %11, align 8
  %101 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32*, i32** %12, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32* %105, i32** %12, align 8
  br label %106

106:                                              ; preds = %91, %84
  %107 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %108 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 255
  %111 = load i32*, i32** %7, align 8
  %112 = load i64*, i64** %8, align 8
  %113 = load i64, i64* %112, align 8
  %114 = sub i64 %113, 1
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  store i32 %110, i32* %115, align 4
  ret i32 0
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
