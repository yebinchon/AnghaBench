; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ttusbir.c_ttusbir_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ttusbir.c_ttusbir_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.ttusbir = type { %struct.TYPE_3__*, %struct.TYPE_3__**, i32, i32, %struct.usb_device* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.usb_device = type { i32 }

@NUM_URBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @ttusbir_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttusbir_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.ttusbir*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call %struct.ttusbir* @usb_get_intfdata(%struct.usb_interface* %6)
  store %struct.ttusbir* %7, %struct.ttusbir** %3, align 8
  %8 = load %struct.ttusbir*, %struct.ttusbir** %3, align 8
  %9 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %8, i32 0, i32 4
  %10 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  store %struct.usb_device* %10, %struct.usb_device** %4, align 8
  %11 = load %struct.ttusbir*, %struct.ttusbir** %3, align 8
  %12 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %11, i32 0, i32 4
  store %struct.usb_device* null, %struct.usb_device** %12, align 8
  %13 = load %struct.ttusbir*, %struct.ttusbir** %3, align 8
  %14 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @rc_unregister_device(i32 %15)
  %17 = load %struct.ttusbir*, %struct.ttusbir** %3, align 8
  %18 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %17, i32 0, i32 2
  %19 = call i32 @led_classdev_unregister(i32* %18)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %61, %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @NUM_URBS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %64

24:                                               ; preds = %20
  %25 = load %struct.ttusbir*, %struct.ttusbir** %3, align 8
  %26 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %27, i64 %29
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = call i32 @usb_kill_urb(%struct.TYPE_3__* %31)
  %33 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %34 = load %struct.ttusbir*, %struct.ttusbir** %3, align 8
  %35 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %36, i64 %38
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ttusbir*, %struct.ttusbir** %3, align 8
  %44 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %45, i64 %47
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @usb_free_coherent(%struct.usb_device* %33, i32 128, i32 %42, i32 %51)
  %53 = load %struct.ttusbir*, %struct.ttusbir** %3, align 8
  %54 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %55, i64 %57
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = call i32 @usb_free_urb(%struct.TYPE_3__* %59)
  br label %61

61:                                               ; preds = %24
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %20

64:                                               ; preds = %20
  %65 = load %struct.ttusbir*, %struct.ttusbir** %3, align 8
  %66 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = call i32 @usb_kill_urb(%struct.TYPE_3__* %67)
  %69 = load %struct.ttusbir*, %struct.ttusbir** %3, align 8
  %70 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = call i32 @usb_free_urb(%struct.TYPE_3__* %71)
  %73 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %74 = call i32 @usb_set_intfdata(%struct.usb_interface* %73, i32* null)
  %75 = load %struct.ttusbir*, %struct.ttusbir** %3, align 8
  %76 = call i32 @kfree(%struct.ttusbir* %75)
  ret void
}

declare dso_local %struct.ttusbir* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @rc_unregister_device(i32) #1

declare dso_local i32 @led_classdev_unregister(i32*) #1

declare dso_local i32 @usb_kill_urb(%struct.TYPE_3__*) #1

declare dso_local i32 @usb_free_coherent(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_3__*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @kfree(%struct.ttusbir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
