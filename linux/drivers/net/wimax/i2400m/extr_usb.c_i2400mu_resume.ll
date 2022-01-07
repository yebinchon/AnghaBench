; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_usb.c_i2400mu_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_usb.c_i2400mu_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.device }
%struct.device = type { i32 }
%struct.i2400mu = type { %struct.i2400m }
%struct.i2400m = type { i64 }

@.str = private unnamed_addr constant [12 x i8] c"(iface %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"fw was down, no resume needed\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"fw was up, resuming\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"(iface %p) = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @i2400mu_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2400mu_resume(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.i2400mu*, align 8
  %6 = alloca %struct.i2400m*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %8 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %10 = call %struct.i2400mu* @usb_get_intfdata(%struct.usb_interface* %9)
  store %struct.i2400mu* %10, %struct.i2400mu** %5, align 8
  %11 = load %struct.i2400mu*, %struct.i2400mu** %5, align 8
  %12 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %11, i32 0, i32 0
  store %struct.i2400m* %12, %struct.i2400m** %6, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %15 = call i32 @d_fnstart(i32 3, %struct.device* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.usb_interface* %14)
  %16 = call i32 (...) @rmb()
  %17 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %18 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = call i32 @d_printf(i32 1, %struct.device* %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %29

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i32 @d_printf(i32 1, %struct.device* %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %27 = load %struct.i2400mu*, %struct.i2400mu** %5, align 8
  %28 = call i32 @i2400mu_notification_setup(%struct.i2400mu* %27)
  br label %29

29:                                               ; preds = %24, %21
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @d_fnend(i32 3, %struct.device* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), %struct.usb_interface* %31, i32 %32)
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.i2400mu* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.usb_interface*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*) #1

declare dso_local i32 @i2400mu_notification_setup(%struct.i2400mu*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.usb_interface*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
