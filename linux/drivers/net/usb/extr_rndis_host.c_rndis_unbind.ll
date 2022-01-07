; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_rndis_host.c_rndis_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_rndis_host.c_rndis_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.usb_interface = type { i32 }
%struct.rndis_halt = type { i8*, i8* }

@CONTROL_BUFFER_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RNDIS_MSG_HALT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rndis_unbind(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.rndis_halt*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %4, align 8
  %6 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.rndis_halt* @kzalloc(i32 %6, i32 %7)
  store %struct.rndis_halt* %8, %struct.rndis_halt** %5, align 8
  %9 = load %struct.rndis_halt*, %struct.rndis_halt** %5, align 8
  %10 = icmp ne %struct.rndis_halt* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load i32, i32* @RNDIS_MSG_HALT, align 4
  %13 = call i8* @cpu_to_le32(i32 %12)
  %14 = load %struct.rndis_halt*, %struct.rndis_halt** %5, align 8
  %15 = getelementptr inbounds %struct.rndis_halt, %struct.rndis_halt* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  %16 = call i8* @cpu_to_le32(i32 16)
  %17 = load %struct.rndis_halt*, %struct.rndis_halt** %5, align 8
  %18 = getelementptr inbounds %struct.rndis_halt, %struct.rndis_halt* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %20 = load %struct.rndis_halt*, %struct.rndis_halt** %5, align 8
  %21 = bitcast %struct.rndis_halt* %20 to i8*
  %22 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %23 = call i32 @rndis_command(%struct.usbnet* %19, i8* %21, i32 %22)
  %24 = load %struct.rndis_halt*, %struct.rndis_halt** %5, align 8
  %25 = call i32 @kfree(%struct.rndis_halt* %24)
  br label %26

26:                                               ; preds = %11, %2
  %27 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %28 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %29 = call i32 @usbnet_cdc_unbind(%struct.usbnet* %27, %struct.usb_interface* %28)
  ret void
}

declare dso_local %struct.rndis_halt* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @rndis_command(%struct.usbnet*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.rndis_halt*) #1

declare dso_local i32 @usbnet_cdc_unbind(%struct.usbnet*, %struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
