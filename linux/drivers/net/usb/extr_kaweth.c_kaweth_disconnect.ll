; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_kaweth.c_kaweth_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_kaweth.c_kaweth_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.kaweth_device = type { i32, i64, i32, i32, i64, i32, i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"unregistering non-existent device\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Unregistering net device\0A\00", align 1
@KAWETH_BUF_SIZE = common dso_local global i32 0, align 4
@INTBUFFERSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @kaweth_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kaweth_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.kaweth_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.kaweth_device* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.kaweth_device* %6, %struct.kaweth_device** %3, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %8 = call i32 @usb_set_intfdata(%struct.usb_interface* %7, i32* null)
  %9 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %10 = icmp ne %struct.kaweth_device* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %13 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %12, i32 0, i32 0
  %14 = call i32 @dev_warn(i32* %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %63

15:                                               ; preds = %1
  %16 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %17 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %16, i32 0, i32 8
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %4, align 8
  %19 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %20 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %19, i32 0, i32 8
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  %22 = call i32 @netdev_dbg(%struct.net_device* %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = call i32 @unregister_netdev(%struct.net_device* %23)
  %25 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %26 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @usb_free_urb(i32 %27)
  %29 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %30 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @usb_free_urb(i32 %31)
  %33 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %34 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @usb_free_urb(i32 %35)
  %37 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %38 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @KAWETH_BUF_SIZE, align 4
  %41 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %42 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %46 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @usb_free_coherent(i32 %39, i32 %40, i8* %44, i32 %47)
  %49 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %50 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @INTBUFFERSIZE, align 4
  %53 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %54 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %58 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @usb_free_coherent(i32 %51, i32 %52, i8* %56, i32 %59)
  %61 = load %struct.net_device*, %struct.net_device** %4, align 8
  %62 = call i32 @free_netdev(%struct.net_device* %61)
  br label %63

63:                                               ; preds = %15, %11
  ret void
}

declare dso_local %struct.kaweth_device* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i8*, i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
