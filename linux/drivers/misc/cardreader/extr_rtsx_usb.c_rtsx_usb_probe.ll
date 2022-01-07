; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_usb.c_rtsx_usb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_usb.c_rtsx_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, i32 }
%struct.usb_device_id = type { i32, i32 }
%struct.usb_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rtsx_ucr = type { i32, i64, %struct.usb_device*, i32, %struct.usb_interface*, i32, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c": Realtek USB Card Reader found at bus %03d address %03d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IOBUF_SIZE = common dso_local global i32 0, align 4
@rtsx_usb_sg_timed_out = common dso_local global i32 0, align 4
@rtsx_usb_cells = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @rtsx_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsx_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.rtsx_ucr*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %10 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %9)
  store %struct.usb_device* %10, %struct.usb_device** %6, align 8
  %11 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %12 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %11, i32 0, i32 1
  %13 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %14 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %19 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dev_dbg(i32* %12, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20)
  %22 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %23 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %22, i32 0, i32 1
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.rtsx_ucr* @devm_kzalloc(i32* %23, i32 72, i32 %24)
  store %struct.rtsx_ucr* %25, %struct.rtsx_ucr** %7, align 8
  %26 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %27 = icmp ne %struct.rtsx_ucr* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %112

31:                                               ; preds = %2
  %32 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %33 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %34 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %33, i32 0, i32 2
  store %struct.usb_device* %32, %struct.usb_device** %34, align 8
  %35 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %36 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %35, i32 0, i32 2
  %37 = load %struct.usb_device*, %struct.usb_device** %36, align 8
  %38 = load i32, i32* @IOBUF_SIZE, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %41 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %40, i32 0, i32 0
  %42 = call i64 @usb_alloc_coherent(%struct.usb_device* %37, i32 %38, i32 %39, i32* %41)
  %43 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %44 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %46 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %31
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %112

52:                                               ; preds = %31
  %53 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %54 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %55 = call i32 @usb_set_intfdata(%struct.usb_interface* %53, %struct.rtsx_ucr* %54)
  %56 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %57 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %60 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %59, i32 0, i32 9
  store i32 %58, i32* %60, align 4
  %61 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %62 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %65 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %64, i32 0, i32 8
  store i32 %63, i32* %65, align 8
  %66 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %67 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %70 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %69, i32 0, i32 6
  store i64 %68, i64* %70, align 8
  %71 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %72 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %71, i32 0, i32 7
  store i64 %68, i64* %72, align 8
  %73 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %74 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %73, i32 0, i32 5
  %75 = call i32 @mutex_init(i32* %74)
  %76 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %77 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %78 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %77, i32 0, i32 4
  store %struct.usb_interface* %76, %struct.usb_interface** %78, align 8
  %79 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %80 = call i32 @rtsx_usb_init_chip(%struct.rtsx_ucr* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %52
  br label %99

84:                                               ; preds = %52
  %85 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %86 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %85, i32 0, i32 3
  %87 = load i32, i32* @rtsx_usb_sg_timed_out, align 4
  %88 = call i32 @timer_setup(i32* %86, i32 %87, i32 0)
  %89 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %90 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %89, i32 0, i32 1
  %91 = load i32, i32* @rtsx_usb_cells, align 4
  %92 = load i32, i32* @rtsx_usb_cells, align 4
  %93 = call i32 @ARRAY_SIZE(i32 %92)
  %94 = call i32 @mfd_add_hotplug_devices(i32* %90, i32 %91, i32 %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %84
  br label %99

98:                                               ; preds = %84
  store i32 0, i32* %3, align 4
  br label %112

99:                                               ; preds = %97, %83
  %100 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %101 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %100, i32 0, i32 2
  %102 = load %struct.usb_device*, %struct.usb_device** %101, align 8
  %103 = load i32, i32* @IOBUF_SIZE, align 4
  %104 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %105 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %108 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @usb_free_coherent(%struct.usb_device* %102, i32 %103, i64 %106, i32 %109)
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %99, %98, %49, %28
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local %struct.rtsx_ucr* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i64 @usb_alloc_coherent(%struct.usb_device*, i32, i32, i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.rtsx_ucr*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @rtsx_usb_init_chip(%struct.rtsx_ucr*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mfd_add_hotplug_devices(i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @usb_free_coherent(%struct.usb_device*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
