; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_iguanair.c_iguanair_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_iguanair.c_iguanair_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.iguanair = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [40 x i8] c"failed to disable receiver for suspend\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, i32)* @iguanair_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iguanair_suspend(%struct.usb_interface* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iguanair*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %8 = call %struct.iguanair* @usb_get_intfdata(%struct.usb_interface* %7)
  store %struct.iguanair* %8, %struct.iguanair** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.iguanair*, %struct.iguanair** %5, align 8
  %10 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.iguanair*, %struct.iguanair** %5, align 8
  %13 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.iguanair*, %struct.iguanair** %5, align 8
  %18 = call i32 @iguanair_receiver(%struct.iguanair* %17, i32 0)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.iguanair*, %struct.iguanair** %5, align 8
  %23 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_warn(i32 %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %21, %16
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.iguanair*, %struct.iguanair** %5, align 8
  %29 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @usb_kill_urb(i32 %30)
  %32 = load %struct.iguanair*, %struct.iguanair** %5, align 8
  %33 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @usb_kill_urb(i32 %34)
  %36 = load %struct.iguanair*, %struct.iguanair** %5, align 8
  %37 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local %struct.iguanair* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iguanair_receiver(%struct.iguanair*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
