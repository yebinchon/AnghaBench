; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_usb_8dev.c_usb_8dev_cmd_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_usb_8dev.c_usb_8dev_cmd_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_8dev_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.can_bittiming }
%struct.can_bittiming = type { i64, i64, i64, i64, i64 }
%struct.usb_8dev_cmd_msg = type { i64*, i32, i32 }

@USB_8DEV_STATUS_FRAME = common dso_local global i32 0, align 4
@USB_8DEV_OPEN = common dso_local global i32 0, align 4
@USB_8DEV_BAUD_MANUAL = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LOOPBACK = common dso_local global i32 0, align 4
@USB_8DEV_LOOPBACK = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LISTENONLY = common dso_local global i32 0, align 4
@USB_8DEV_SILENT = common dso_local global i32 0, align 4
@CAN_CTRLMODE_ONE_SHOT = common dso_local global i32 0, align 4
@USB_8DEV_DISABLE_AUTO_RESTRANS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_8dev_priv*)* @usb_8dev_cmd_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_8dev_cmd_open(%struct.usb_8dev_priv* %0) #0 {
  %2 = alloca %struct.usb_8dev_priv*, align 8
  %3 = alloca %struct.can_bittiming*, align 8
  %4 = alloca %struct.usb_8dev_cmd_msg, align 8
  %5 = alloca %struct.usb_8dev_cmd_msg, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_8dev_priv* %0, %struct.usb_8dev_priv** %2, align 8
  %10 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %2, align 8
  %11 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store %struct.can_bittiming* %12, %struct.can_bittiming** %3, align 8
  %13 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %2, align 8
  %14 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @USB_8DEV_STATUS_FRAME, align 4
  store i32 %17, i32* %7, align 4
  %18 = call i32 @memset(%struct.usb_8dev_cmd_msg* %4, i32 0, i32 16)
  %19 = load i32, i32* @USB_8DEV_OPEN, align 4
  %20 = getelementptr inbounds %struct.usb_8dev_cmd_msg, %struct.usb_8dev_cmd_msg* %4, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @USB_8DEV_BAUD_MANUAL, align 4
  %22 = getelementptr inbounds %struct.usb_8dev_cmd_msg, %struct.usb_8dev_cmd_msg* %4, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = load %struct.can_bittiming*, %struct.can_bittiming** %3, align 8
  %24 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.can_bittiming*, %struct.can_bittiming** %3, align 8
  %27 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = getelementptr inbounds %struct.usb_8dev_cmd_msg, %struct.usb_8dev_cmd_msg* %4, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  store i64 %29, i64* %32, align 8
  %33 = load %struct.can_bittiming*, %struct.can_bittiming** %3, align 8
  %34 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.usb_8dev_cmd_msg, %struct.usb_8dev_cmd_msg* %4, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  store i64 %35, i64* %38, align 8
  %39 = load %struct.can_bittiming*, %struct.can_bittiming** %3, align 8
  %40 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.usb_8dev_cmd_msg, %struct.usb_8dev_cmd_msg* %4, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 2
  store i64 %41, i64* %44, align 8
  %45 = load %struct.can_bittiming*, %struct.can_bittiming** %3, align 8
  %46 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @cpu_to_be16(i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = getelementptr inbounds %struct.usb_8dev_cmd_msg, %struct.usb_8dev_cmd_msg* %4, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 3
  %53 = call i32 @memcpy(i64* %52, i32* %9, i32 4)
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @CAN_CTRLMODE_LOOPBACK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %1
  %59 = load i32, i32* @USB_8DEV_LOOPBACK, align 4
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %58, %1
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @CAN_CTRLMODE_LISTENONLY, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* @USB_8DEV_SILENT, align 4
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %67, %62
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @CAN_CTRLMODE_ONE_SHOT, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* @USB_8DEV_DISABLE_AUTO_RESTRANS, align 4
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %76, %71
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @cpu_to_be32(i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = getelementptr inbounds %struct.usb_8dev_cmd_msg, %struct.usb_8dev_cmd_msg* %4, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 5
  %86 = call i32 @memcpy(i64* %85, i32* %8, i32 4)
  %87 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %2, align 8
  %88 = call i32 @usb_8dev_send_cmd(%struct.usb_8dev_priv* %87, %struct.usb_8dev_cmd_msg* %4, %struct.usb_8dev_cmd_msg* %5)
  ret i32 %88
}

declare dso_local i32 @memset(%struct.usb_8dev_cmd_msg*, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @usb_8dev_send_cmd(%struct.usb_8dev_priv*, %struct.usb_8dev_cmd_msg*, %struct.usb_8dev_cmd_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
