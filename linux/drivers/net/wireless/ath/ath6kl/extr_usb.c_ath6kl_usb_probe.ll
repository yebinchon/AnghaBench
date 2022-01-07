; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_usb.c_ath6kl_usb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_usb.c_ath6kl_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ath6kl = type { %struct.TYPE_12__, %struct.TYPE_11__, i32*, i32, %struct.ath6kl_usb* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.ath6kl_usb = type { %struct.ath6kl*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@ATH6KL_DBG_USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"vendor_id = %04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"product_id = %04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"USB Interface %d\0A\00", align 1
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"USB 2.0 Host\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"USB 1.1 Host\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to alloc ath6kl core\0A\00", align 1
@ATH6KL_HIF_TYPE_USB = common dso_local global i32 0, align 4
@ath6kl_usb_ops = common dso_local global i32 0, align 4
@ATH6KL_HTC_TYPE_PIPE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"Failed to init ath6kl core: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @ath6kl_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.ath6kl*, align 8
  %8 = alloca %struct.ath6kl_usb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %12)
  store %struct.usb_device* %13, %struct.usb_device** %6, align 8
  store %struct.ath6kl_usb* null, %struct.ath6kl_usb** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %15 = call i32 @usb_get_dev(%struct.usb_device* %14)
  %16 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %17 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le16_to_cpu(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %22 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @le16_to_cpu(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* @ATH6KL_DBG_USB, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @ATH6KL_DBG_USB, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %33 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = icmp ne %struct.TYPE_9__* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %2
  %37 = load i32, i32* @ATH6KL_DBG_USB, align 4
  %38 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %39 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %38, i32 0, i32 0
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %36, %2
  %46 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %47 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @USB_SPEED_HIGH, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @ATH6KL_DBG_USB, align 4
  %53 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %57

54:                                               ; preds = %45
  %55 = load i32, i32* @ATH6KL_DBG_USB, align 4
  %56 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %51
  %58 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %59 = call %struct.ath6kl_usb* @ath6kl_usb_create(%struct.usb_interface* %58)
  store %struct.ath6kl_usb* %59, %struct.ath6kl_usb** %8, align 8
  %60 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %8, align 8
  %61 = icmp eq %struct.ath6kl_usb* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %11, align 4
  br label %111

65:                                               ; preds = %57
  %66 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %8, align 8
  %67 = getelementptr inbounds %struct.ath6kl_usb, %struct.ath6kl_usb* %66, i32 0, i32 1
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = call %struct.ath6kl* @ath6kl_core_create(i32* %69)
  store %struct.ath6kl* %70, %struct.ath6kl** %7, align 8
  %71 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %72 = icmp eq %struct.ath6kl* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = call i32 (i8*, ...) @ath6kl_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %11, align 4
  br label %108

77:                                               ; preds = %65
  %78 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %8, align 8
  %79 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %80 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %79, i32 0, i32 4
  store %struct.ath6kl_usb* %78, %struct.ath6kl_usb** %80, align 8
  %81 = load i32, i32* @ATH6KL_HIF_TYPE_USB, align 4
  %82 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %83 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  %84 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %85 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %84, i32 0, i32 2
  store i32* @ath6kl_usb_ops, i32** %85, align 8
  %86 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %87 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  store i32 16, i32* %88, align 4
  %89 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %90 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  store i32 252, i32* %91, align 8
  %92 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %93 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %8, align 8
  %94 = getelementptr inbounds %struct.ath6kl_usb, %struct.ath6kl_usb* %93, i32 0, i32 0
  store %struct.ath6kl* %92, %struct.ath6kl** %94, align 8
  %95 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %96 = load i32, i32* @ATH6KL_HTC_TYPE_PIPE, align 4
  %97 = call i32 @ath6kl_core_init(%struct.ath6kl* %95, i32 %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %77
  %101 = load i32, i32* %11, align 4
  %102 = call i32 (i8*, ...) @ath6kl_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %101)
  br label %105

103:                                              ; preds = %77
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %3, align 4
  br label %115

105:                                              ; preds = %100
  %106 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %107 = call i32 @ath6kl_core_destroy(%struct.ath6kl* %106)
  br label %108

108:                                              ; preds = %105, %73
  %109 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %8, align 8
  %110 = call i32 @ath6kl_usb_destroy(%struct.ath6kl_usb* %109)
  br label %111

111:                                              ; preds = %108, %62
  %112 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %113 = call i32 @usb_put_dev(%struct.usb_device* %112)
  %114 = load i32, i32* %11, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %111, %103
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, ...) #1

declare dso_local %struct.ath6kl_usb* @ath6kl_usb_create(%struct.usb_interface*) #1

declare dso_local %struct.ath6kl* @ath6kl_core_create(i32*) #1

declare dso_local i32 @ath6kl_err(i8*, ...) #1

declare dso_local i32 @ath6kl_core_init(%struct.ath6kl*, i32) #1

declare dso_local i32 @ath6kl_core_destroy(%struct.ath6kl*) #1

declare dso_local i32 @ath6kl_usb_destroy(%struct.ath6kl_usb*) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
