; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_esd_usb2.c_esd_usb2_set_bittiming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_esd_usb2.c_esd_usb2_set_bittiming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.esd_usb2_net_priv = type { %struct.TYPE_14__*, i32, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.can_bittiming }
%struct.can_bittiming = type { i32, i32, i32, i32, i32 }
%struct.esd_usb2_msg = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i64, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@ESD_USB2_UBR = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LISTENONLY = common dso_local global i32 0, align 4
@ESD_USB2_LOM = common dso_local global i32 0, align 4
@ESD_USB2_BRP_MAX = common dso_local global i32 0, align 4
@USB_CANUSBM_PRODUCT_ID = common dso_local global i64 0, align 8
@ESD_USBM_SJW_SHIFT = common dso_local global i32 0, align 4
@ESD_USB2_SJW_SHIFT = common dso_local global i32 0, align 4
@ESD_USB2_SJW_MAX = common dso_local global i32 0, align 4
@ESD_USB2_TSEG1_MAX = common dso_local global i32 0, align 4
@ESD_USB2_TSEG1_SHIFT = common dso_local global i32 0, align 4
@ESD_USB2_TSEG2_MAX = common dso_local global i32 0, align 4
@ESD_USB2_TSEG2_SHIFT = common dso_local global i32 0, align 4
@CAN_CTRLMODE_3_SAMPLES = common dso_local global i32 0, align 4
@ESD_USB2_3_SAMPLES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_SETBAUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"setting BTR=%#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @esd_usb2_set_bittiming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esd_usb2_set_bittiming(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.esd_usb2_net_priv*, align 8
  %5 = alloca %struct.can_bittiming*, align 8
  %6 = alloca %struct.esd_usb2_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.esd_usb2_net_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.esd_usb2_net_priv* %11, %struct.esd_usb2_net_priv** %4, align 8
  %12 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %4, align 8
  %13 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  store %struct.can_bittiming* %14, %struct.can_bittiming** %5, align 8
  %15 = load i32, i32* @ESD_USB2_UBR, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %4, align 8
  %17 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CAN_CTRLMODE_LISTENONLY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* @ESD_USB2_LOM, align 4
  %25 = load i32, i32* %8, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %23, %1
  %28 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %29 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 1
  %32 = load i32, i32* @ESD_USB2_BRP_MAX, align 4
  %33 = sub nsw i32 %32, 1
  %34 = and i32 %31, %33
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %4, align 8
  %38 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %37, i32 0, i32 0
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @le16_to_cpu(i32 %44)
  %46 = load i64, i64* @USB_CANUSBM_PRODUCT_ID, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %27
  %49 = load i32, i32* @ESD_USBM_SJW_SHIFT, align 4
  store i32 %49, i32* %9, align 4
  br label %52

50:                                               ; preds = %27
  %51 = load i32, i32* @ESD_USB2_SJW_SHIFT, align 4
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %54 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 1
  %57 = load i32, i32* @ESD_USB2_SJW_MAX, align 4
  %58 = sub nsw i32 %57, 1
  %59 = and i32 %56, %58
  %60 = load i32, i32* %9, align 4
  %61 = shl i32 %59, %60
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  %64 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %65 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %68 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %66, %69
  %71 = sub nsw i32 %70, 1
  %72 = load i32, i32* @ESD_USB2_TSEG1_MAX, align 4
  %73 = sub nsw i32 %72, 1
  %74 = and i32 %71, %73
  %75 = load i32, i32* @ESD_USB2_TSEG1_SHIFT, align 4
  %76 = shl i32 %74, %75
  %77 = load i32, i32* %8, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %8, align 4
  %79 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %80 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, 1
  %83 = load i32, i32* @ESD_USB2_TSEG2_MAX, align 4
  %84 = sub nsw i32 %83, 1
  %85 = and i32 %82, %84
  %86 = load i32, i32* @ESD_USB2_TSEG2_SHIFT, align 4
  %87 = shl i32 %85, %86
  %88 = load i32, i32* %8, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %8, align 4
  %90 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %4, align 8
  %91 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @CAN_CTRLMODE_3_SAMPLES, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %52
  %98 = load i32, i32* @ESD_USB2_3_SAMPLES, align 4
  %99 = load i32, i32* %8, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %97, %52
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = call %struct.esd_usb2_msg* @kmalloc(i32 32, i32 %102)
  store %struct.esd_usb2_msg* %103, %struct.esd_usb2_msg** %6, align 8
  %104 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %6, align 8
  %105 = icmp ne %struct.esd_usb2_msg* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %147

109:                                              ; preds = %101
  %110 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %6, align 8
  %111 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  store i32 2, i32* %113, align 8
  %114 = load i32, i32* @CMD_SETBAUD, align 4
  %115 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %6, align 8
  %116 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  store i32 %114, i32* %118, align 4
  %119 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %4, align 8
  %120 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %6, align 8
  %123 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 2
  store i32 %121, i32* %125, align 8
  %126 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %6, align 8
  %127 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  store i64 0, i64* %129, align 8
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @cpu_to_le32(i32 %130)
  %132 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %6, align 8
  %133 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  store i32 %131, i32* %135, align 8
  %136 = load %struct.net_device*, %struct.net_device** %3, align 8
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @netdev_info(%struct.net_device* %136, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %137)
  %139 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %4, align 8
  %140 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %139, i32 0, i32 0
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %140, align 8
  %142 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %6, align 8
  %143 = call i32 @esd_usb2_send_msg(%struct.TYPE_14__* %141, %struct.esd_usb2_msg* %142)
  store i32 %143, i32* %7, align 4
  %144 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %6, align 8
  %145 = call i32 @kfree(%struct.esd_usb2_msg* %144)
  %146 = load i32, i32* %7, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %109, %106
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local %struct.esd_usb2_net_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local %struct.esd_usb2_msg* @kmalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @esd_usb2_send_msg(%struct.TYPE_14__*, %struct.esd_usb2_msg*) #1

declare dso_local i32 @kfree(%struct.esd_usb2_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
