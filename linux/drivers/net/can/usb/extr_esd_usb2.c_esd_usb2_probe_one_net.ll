; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_esd_usb2.c_esd_usb2_probe_one_net.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_esd_usb2.c_esd_usb2_probe_one_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.esd_usb2 = type { %struct.esd_usb2_net_priv**, %struct.TYPE_8__* }
%struct.esd_usb2_net_priv = type { i32, %struct.TYPE_10__, %struct.net_device*, %struct.esd_usb2*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32*, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.net_device = type { i32, i32, i32*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@MAX_TX_URBS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"couldn't alloc candev\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CAN_STATE_STOPPED = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LISTENONLY = common dso_local global i32 0, align 4
@USB_CANUSBM_PRODUCT_ID = common dso_local global i64 0, align 8
@ESD_USBM_CAN_CLOCK = common dso_local global i32 0, align 4
@ESD_USB2_CAN_CLOCK = common dso_local global i32 0, align 4
@CAN_CTRLMODE_3_SAMPLES = common dso_local global i32 0, align 4
@esd_usb2_bittiming_const = common dso_local global i32 0, align 4
@esd_usb2_set_bittiming = common dso_local global i32 0, align 4
@esd_usb2_set_mode = common dso_local global i32 0, align 4
@esd_usb2_get_berr_counter = common dso_local global i32 0, align 4
@IFF_ECHO = common dso_local global i32 0, align 4
@esd_usb2_netdev_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"couldn't register CAN device: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"device %s registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, i32)* @esd_usb2_probe_one_net to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esd_usb2_probe_one_net(%struct.usb_interface* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.esd_usb2*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.esd_usb2_net_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %11 = call %struct.esd_usb2* @usb_get_intfdata(%struct.usb_interface* %10)
  store %struct.esd_usb2* %11, %struct.esd_usb2** %5, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* @MAX_TX_URBS, align 4
  %13 = call %struct.net_device* @alloc_candev(i32 80, i32 %12)
  store %struct.net_device* %13, %struct.net_device** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = icmp ne %struct.net_device* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %18 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %17, i32 0, i32 0
  %19 = call i32 (i32*, i8*, ...) @dev_err(i32* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %8, align 4
  br label %148

22:                                               ; preds = %2
  %23 = load %struct.net_device*, %struct.net_device** %6, align 8
  %24 = call %struct.esd_usb2_net_priv* @netdev_priv(%struct.net_device* %23)
  store %struct.esd_usb2_net_priv* %24, %struct.esd_usb2_net_priv** %7, align 8
  %25 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %7, align 8
  %26 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %25, i32 0, i32 6
  %27 = call i32 @init_usb_anchor(i32* %26)
  %28 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %7, align 8
  %29 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %28, i32 0, i32 5
  %30 = call i32 @atomic_set(i32* %29, i32 0)
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %44, %22
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @MAX_TX_URBS, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load i32, i32* @MAX_TX_URBS, align 4
  %37 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %7, align 8
  %38 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %37, i32 0, i32 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32 %36, i32* %43, align 4
  br label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %31

47:                                               ; preds = %31
  %48 = load %struct.esd_usb2*, %struct.esd_usb2** %5, align 8
  %49 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %7, align 8
  %50 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %49, i32 0, i32 3
  store %struct.esd_usb2* %48, %struct.esd_usb2** %50, align 8
  %51 = load %struct.net_device*, %struct.net_device** %6, align 8
  %52 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %7, align 8
  %53 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %52, i32 0, i32 2
  store %struct.net_device* %51, %struct.net_device** %53, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %7, align 8
  %56 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @CAN_STATE_STOPPED, align 4
  %58 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %7, align 8
  %59 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 6
  store i32 %57, i32* %60, align 8
  %61 = load i32, i32* @CAN_CTRLMODE_LISTENONLY, align 4
  %62 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %7, align 8
  %63 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 4
  store i32 %61, i32* %64, align 8
  %65 = load %struct.esd_usb2*, %struct.esd_usb2** %5, align 8
  %66 = getelementptr inbounds %struct.esd_usb2, %struct.esd_usb2* %65, i32 0, i32 1
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @le16_to_cpu(i32 %70)
  %72 = load i64, i64* @USB_CANUSBM_PRODUCT_ID, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %47
  %75 = load i32, i32* @ESD_USBM_CAN_CLOCK, align 4
  %76 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %7, align 8
  %77 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  store i32 %75, i32* %79, align 4
  br label %92

80:                                               ; preds = %47
  %81 = load i32, i32* @ESD_USB2_CAN_CLOCK, align 4
  %82 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %7, align 8
  %83 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  store i32 %81, i32* %85, align 4
  %86 = load i32, i32* @CAN_CTRLMODE_3_SAMPLES, align 4
  %87 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %7, align 8
  %88 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %86
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %80, %74
  %93 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %7, align 8
  %94 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 3
  store i32* @esd_usb2_bittiming_const, i32** %95, align 8
  %96 = load i32, i32* @esd_usb2_set_bittiming, align 4
  %97 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %7, align 8
  %98 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  store i32 %96, i32* %99, align 8
  %100 = load i32, i32* @esd_usb2_set_mode, align 4
  %101 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %7, align 8
  %102 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  store i32 %100, i32* %103, align 4
  %104 = load i32, i32* @esd_usb2_get_berr_counter, align 4
  %105 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %7, align 8
  %106 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  %108 = load i32, i32* @IFF_ECHO, align 4
  %109 = load %struct.net_device*, %struct.net_device** %6, align 8
  %110 = getelementptr inbounds %struct.net_device, %struct.net_device* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load %struct.net_device*, %struct.net_device** %6, align 8
  %114 = getelementptr inbounds %struct.net_device, %struct.net_device* %113, i32 0, i32 2
  store i32* @esd_usb2_netdev_ops, i32** %114, align 8
  %115 = load %struct.net_device*, %struct.net_device** %6, align 8
  %116 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %117 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %116, i32 0, i32 0
  %118 = call i32 @SET_NETDEV_DEV(%struct.net_device* %115, i32* %117)
  %119 = load i32, i32* %4, align 4
  %120 = load %struct.net_device*, %struct.net_device** %6, align 8
  %121 = getelementptr inbounds %struct.net_device, %struct.net_device* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load %struct.net_device*, %struct.net_device** %6, align 8
  %123 = call i32 @register_candev(%struct.net_device* %122)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %92
  %127 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %128 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %127, i32 0, i32 0
  %129 = load i32, i32* %8, align 4
  %130 = call i32 (i32*, i8*, ...) @dev_err(i32* %128, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %129)
  %131 = load %struct.net_device*, %struct.net_device** %6, align 8
  %132 = call i32 @free_candev(%struct.net_device* %131)
  %133 = load i32, i32* @ENOMEM, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %8, align 4
  br label %148

135:                                              ; preds = %92
  %136 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %7, align 8
  %137 = load %struct.esd_usb2*, %struct.esd_usb2** %5, align 8
  %138 = getelementptr inbounds %struct.esd_usb2, %struct.esd_usb2* %137, i32 0, i32 0
  %139 = load %struct.esd_usb2_net_priv**, %struct.esd_usb2_net_priv*** %138, align 8
  %140 = load i32, i32* %4, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %139, i64 %141
  store %struct.esd_usb2_net_priv* %136, %struct.esd_usb2_net_priv** %142, align 8
  %143 = load %struct.net_device*, %struct.net_device** %6, align 8
  %144 = load %struct.net_device*, %struct.net_device** %6, align 8
  %145 = getelementptr inbounds %struct.net_device, %struct.net_device* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @netdev_info(%struct.net_device* %143, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %135, %126, %16
  %149 = load i32, i32* %8, align 4
  ret i32 %149
}

declare dso_local %struct.esd_usb2* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local %struct.net_device* @alloc_candev(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.esd_usb2_net_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @register_candev(%struct.net_device*) #1

declare dso_local i32 @free_candev(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
