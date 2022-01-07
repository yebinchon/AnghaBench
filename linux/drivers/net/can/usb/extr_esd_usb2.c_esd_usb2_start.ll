; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_esd_usb2.c_esd_usb2_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_esd_usb2.c_esd_usb2_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esd_usb2_net_priv = type { %struct.TYPE_8__, i32, %struct.net_device*, %struct.esd_usb2* }
%struct.TYPE_8__ = type { i32 }
%struct.net_device = type { i32 }
%struct.esd_usb2 = type { i32 }
%struct.esd_usb2_msg = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8**, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_IDADD = common dso_local global i32 0, align 4
@ESD_MAX_ID_SEGMENT = common dso_local global i32 0, align 4
@ESD_ID_ENABLE = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"couldn't start device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esd_usb2_net_priv*)* @esd_usb2_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esd_usb2_start(%struct.esd_usb2_net_priv* %0) #0 {
  %2 = alloca %struct.esd_usb2_net_priv*, align 8
  %3 = alloca %struct.esd_usb2*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.esd_usb2_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.esd_usb2_net_priv* %0, %struct.esd_usb2_net_priv** %2, align 8
  %8 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %2, align 8
  %9 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %8, i32 0, i32 3
  %10 = load %struct.esd_usb2*, %struct.esd_usb2** %9, align 8
  store %struct.esd_usb2* %10, %struct.esd_usb2** %3, align 8
  %11 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %2, align 8
  %12 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %11, i32 0, i32 2
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %4, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.esd_usb2_msg* @kmalloc(i32 24, i32 %14)
  store %struct.esd_usb2_msg* %15, %struct.esd_usb2_msg** %5, align 8
  %16 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %5, align 8
  %17 = icmp ne %struct.esd_usb2_msg* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %89

21:                                               ; preds = %1
  %22 = load i32, i32* @CMD_IDADD, align 4
  %23 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %5, align 8
  %24 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  store i32 %22, i32* %26, align 4
  %27 = load i32, i32* @ESD_MAX_ID_SEGMENT, align 4
  %28 = add nsw i32 2, %27
  %29 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %5, align 8
  %30 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 8
  %33 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %2, align 8
  %34 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %5, align 8
  %37 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  store i32 %35, i32* %39, align 4
  %40 = load i32, i32* @ESD_ID_ENABLE, align 4
  %41 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %5, align 8
  %42 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store i32 %40, i32* %44, align 8
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %59, %21
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @ESD_MAX_ID_SEGMENT, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = call i8* @cpu_to_le32(i32 -1)
  %51 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %5, align 8
  %52 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i8**, i8*** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  store i8* %50, i8** %58, align 8
  br label %59

59:                                               ; preds = %49
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %45

62:                                               ; preds = %45
  %63 = call i8* @cpu_to_le32(i32 1)
  %64 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %5, align 8
  %65 = getelementptr inbounds %struct.esd_usb2_msg, %struct.esd_usb2_msg* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i8**, i8*** %67, align 8
  %69 = load i32, i32* @ESD_MAX_ID_SEGMENT, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  store i8* %63, i8** %71, align 8
  %72 = load %struct.esd_usb2*, %struct.esd_usb2** %3, align 8
  %73 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %5, align 8
  %74 = call i32 @esd_usb2_send_msg(%struct.esd_usb2* %72, %struct.esd_usb2_msg* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %62
  br label %89

78:                                               ; preds = %62
  %79 = load %struct.esd_usb2*, %struct.esd_usb2** %3, align 8
  %80 = call i32 @esd_usb2_setup_rx_urbs(%struct.esd_usb2* %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %89

84:                                               ; preds = %78
  %85 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  %86 = load %struct.esd_usb2_net_priv*, %struct.esd_usb2_net_priv** %2, align 8
  %87 = getelementptr inbounds %struct.esd_usb2_net_priv, %struct.esd_usb2_net_priv* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  br label %89

89:                                               ; preds = %84, %83, %77, %18
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @ENODEV, align 4
  %92 = sub nsw i32 0, %91
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load %struct.net_device*, %struct.net_device** %4, align 8
  %96 = call i32 @netif_device_detach(%struct.net_device* %95)
  br label %97

97:                                               ; preds = %94, %89
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load %struct.net_device*, %struct.net_device** %4, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @netdev_err(%struct.net_device* %101, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %100, %97
  %105 = load %struct.esd_usb2_msg*, %struct.esd_usb2_msg** %5, align 8
  %106 = call i32 @kfree(%struct.esd_usb2_msg* %105)
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local %struct.esd_usb2_msg* @kmalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @esd_usb2_send_msg(%struct.esd_usb2*, %struct.esd_usb2_msg*) #1

declare dso_local i32 @esd_usb2_setup_rx_urbs(%struct.esd_usb2*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.esd_usb2_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
