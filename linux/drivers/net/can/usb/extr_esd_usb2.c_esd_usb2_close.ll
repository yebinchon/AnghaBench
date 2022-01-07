; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_esd_usb2.c_esd_usb2_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_esd_usb2.c_esd_usb2_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.esd_usb2_net_priv = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.esd_usb2_msg = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i64, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_IDADD = common dso_local global i32 0, align 4
@ESD_MAX_ID_SEGMENT = common dso_local global i32 0, align 4
@ESD_ID_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"sending idadd message failed\0A\00", align 1
@CMD_SETBAUD = common dso_local global i32 0, align 4
@ESD_USB2_NO_BAUDRATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"sending setbaud message failed\0A\00", align 1
@CAN_STATE_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @esd_usb2_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esd_usb2_close(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.esd_usb2_net_priv*, align 8
  %5 = alloca %struct.esd_usb2_msg*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.esd_usb2_net_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.esd_usb2_net_priv* %8, %struct.esd_usb2_net_priv** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.esd_usb2_msg* @kmalloc(i32 48, i32 %9)
  store %struct.esd_usb2_msg* %10, %struct.esd_usb2_msg** %5, align 8
  %11 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %5, align 8
  %12 = icmp ne %struct.esd_usb2_msg* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %113

16:                                               ; preds = %1
  %17 = load i32, i32* @CMD_IDADD, align 4
  %18 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %5, align 8
  %19 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* @ESD_MAX_ID_SEGMENT, align 4
  %23 = add nsw i32 2, %22
  %24 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %5, align 8
  %25 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 8
  %28 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %4, align 8
  %29 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %5, align 8
  %32 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  store i32 %30, i32* %34, align 4
  %35 = load i32, i32* @ESD_ID_ENABLE, align 4
  %36 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %5, align 8
  %37 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i32 %35, i32* %39, align 8
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %53, %16
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @ESD_MAX_ID_SEGMENT, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %5, align 8
  %46 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %44
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %40

56:                                               ; preds = %40
  %57 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %4, align 8
  %58 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %5, align 8
  %61 = call i64 @esd_usb2_send_msg(i32 %59, %struct.esd_usb2_msg* %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load %struct.net_device*, %struct.net_device** %3, align 8
  %65 = call i32 @netdev_err(%struct.net_device* %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %56
  %67 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %5, align 8
  %68 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i32 2, i32* %70, align 8
  %71 = load i32, i32* @CMD_SETBAUD, align 4
  %72 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %5, align 8
  %73 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  store i32 %71, i32* %75, align 4
  %76 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %4, align 8
  %77 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %5, align 8
  %80 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  store i32 %78, i32* %82, align 8
  %83 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %5, align 8
  %84 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load i32, i32* @ESD_USB2_NO_BAUDRATE, align 4
  %88 = call i32 @cpu_to_le32(i32 %87)
  %89 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %5, align 8
  %90 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  store i32 %88, i32* %92, align 8
  %93 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %4, align 8
  %94 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %5, align 8
  %97 = call i64 @esd_usb2_send_msg(i32 %95, %struct.esd_usb2_msg* %96)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %66
  %100 = load %struct.net_device*, %struct.net_device** %3, align 8
  %101 = call i32 @netdev_err(%struct.net_device* %100, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %66
  %103 = load i32, i32* @CAN_STATE_STOPPED, align 4
  %104 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %4, align 8
  %105 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 4
  %107 = load %struct.net_device*, %struct.net_device** %3, align 8
  %108 = call i32 @netif_stop_queue(%struct.net_device* %107)
  %109 = load %struct.net_device*, %struct.net_device** %3, align 8
  %110 = call i32 @close_candev(%struct.net_device* %109)
  %111 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %5, align 8
  %112 = call i32 @kfree(%struct.esd_usb2_msg* %111)
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %102, %13
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.esd_usb2_net_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.esd_usb2_msg* @kmalloc(i32, i32) #1

declare dso_local i64 @esd_usb2_send_msg(i32, %struct.esd_usb2_msg*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @close_candev(%struct.net_device*) #1

declare dso_local i32 @kfree(%struct.esd_usb2_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
