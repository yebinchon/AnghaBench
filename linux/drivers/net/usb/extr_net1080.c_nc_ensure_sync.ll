; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_net1080.c_nc_ensure_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_net1080.c_nc_ensure_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, i32 }

@REQUEST_REGISTER = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USBCTL_FLUSH_THIS = common dso_local global i32 0, align 4
@USBCTL_FLUSH_OTHER = common dso_local global i32 0, align 4
@REG_USBCTL = common dso_local global i32 0, align 4
@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"flush net1080; too many framing errors\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*)* @nc_ensure_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nc_ensure_sync(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  %3 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %4 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* %4, align 4
  %7 = icmp sle i32 %6, 5
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %33

9:                                                ; preds = %1
  %10 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %11 = load i32, i32* @REQUEST_REGISTER, align 4
  %12 = load i32, i32* @USB_DIR_OUT, align 4
  %13 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @USBCTL_FLUSH_THIS, align 4
  %18 = load i32, i32* @USBCTL_FLUSH_OTHER, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @REG_USBCTL, align 4
  %21 = call i64 @usbnet_write_cmd_async(%struct.usbnet* %10, i32 %11, i32 %16, i32 %19, i32 %20, i32* null, i32 0)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %9
  br label %33

24:                                               ; preds = %9
  %25 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %26 = load i32, i32* @rx_err, align 4
  %27 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %28 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @netif_dbg(%struct.usbnet* %25, i32 %26, i32 %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %32 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %24, %23, %8
  ret void
}

declare dso_local i64 @usbnet_write_cmd_async(%struct.usbnet*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @netif_dbg(%struct.usbnet*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
