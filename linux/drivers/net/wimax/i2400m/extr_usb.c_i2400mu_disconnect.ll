; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_usb.c_i2400mu_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_usb.c_i2400mu_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.device }
%struct.device = type { i32 }
%struct.i2400mu = type { i32, i32, %struct.i2400m }
%struct.i2400m = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"(iface %p i2400m %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"(iface %p i2400m %p) = void\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @i2400mu_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2400mu_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.i2400mu*, align 8
  %4 = alloca %struct.i2400m*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %8 = call %struct.i2400mu* @usb_get_intfdata(%struct.usb_interface* %7)
  store %struct.i2400mu* %8, %struct.i2400mu** %3, align 8
  %9 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %10 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %9, i32 0, i32 2
  store %struct.i2400m* %10, %struct.i2400m** %4, align 8
  %11 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %12 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %5, align 8
  %15 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %16 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %6, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %19 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %20 = call i32 @d_fnstart(i32 3, %struct.device* %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.usb_interface* %18, %struct.i2400m* %19)
  %21 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %22 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @debugfs_remove_recursive(i32 %23)
  %25 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %26 = call i32 @i2400m_release(%struct.i2400m* %25)
  %27 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %28 = call i32 @usb_set_intfdata(%struct.usb_interface* %27, i32* null)
  %29 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %30 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @usb_put_dev(i32 %31)
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = call i32 @free_netdev(%struct.net_device* %33)
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %37 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %38 = call i32 @d_fnend(i32 3, %struct.device* %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.usb_interface* %36, %struct.i2400m* %37)
  ret void
}

declare dso_local %struct.i2400mu* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.usb_interface*, %struct.i2400m*) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @i2400m_release(%struct.i2400m*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_put_dev(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.usb_interface*, %struct.i2400m*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
