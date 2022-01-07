; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-core.c_usbvision_begin_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-core.c_usbvision_begin_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_usbvision = type { i64, i32 }

@ISOC_MODE_COMPRESS = common dso_local global i64 0, align 8
@USBVISION_VIN_REG2 = common dso_local global i32 0, align 4
@USBVISION_NOHVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbvision_begin_streaming(%struct.usb_usbvision* %0) #0 {
  %2 = alloca %struct.usb_usbvision*, align 8
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %2, align 8
  %3 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %4 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @ISOC_MODE_COMPRESS, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %10 = call i32 @usbvision_init_compression(%struct.usb_usbvision* %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %13 = load i32, i32* @USBVISION_VIN_REG2, align 4
  %14 = load i32, i32* @USBVISION_NOHVALID, align 4
  %15 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %16 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %14, %17
  %19 = call i32 @usbvision_write_reg(%struct.usb_usbvision* %12, i32 %13, i32 %18)
  ret i32 %19
}

declare dso_local i32 @usbvision_init_compression(%struct.usb_usbvision*) #1

declare dso_local i32 @usbvision_write_reg(%struct.usb_usbvision*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
