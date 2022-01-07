; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-cards.c_cx231xx_usb_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-cards.c_cx231xx_usb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.cx231xx = type { i64, i32, i32, i32, i64, i32, i32, i32, i32, i32 }

@DEV_DISCONNECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"device %s is open! Deregistration and memory deallocation are deferred on close.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @cx231xx_usb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx231xx_usb_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.cx231xx*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.cx231xx* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.cx231xx* %5, %struct.cx231xx** %3, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call i32 @usb_set_intfdata(%struct.usb_interface* %6, i32* null)
  %8 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %9 = icmp ne %struct.cx231xx* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %76

11:                                               ; preds = %1
  %12 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %13 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %12, i32 0, i32 9
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %76

17:                                               ; preds = %11
  %18 = load i32, i32* @DEV_DISCONNECTED, align 4
  %19 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %20 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %24 = call i32 @flush_request_modules(%struct.cx231xx* %23)
  %25 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %26 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %29 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %28, i32 0, i32 7
  %30 = call i32 @wake_up_interruptible_all(i32* %29)
  %31 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %32 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %17
  %36 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %37 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %40 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %39, i32 0, i32 5
  %41 = call i32 @video_device_node_name(i32* %40)
  %42 = call i32 @dev_warn(i32 %38, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %44 = call i32 @cx231xx_ir_exit(%struct.cx231xx* %43)
  %45 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %46 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %35
  %50 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %51 = call i32 @cx231xx_uninit_isoc(%struct.cx231xx* %50)
  br label %55

52:                                               ; preds = %35
  %53 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %54 = call i32 @cx231xx_uninit_bulk(%struct.cx231xx* %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %57 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %56, i32 0, i32 3
  %58 = call i32 @wake_up_interruptible(i32* %57)
  %59 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %60 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %59, i32 0, i32 2
  %61 = call i32 @wake_up_interruptible(i32* %60)
  br label %63

62:                                               ; preds = %17
  br label %63

63:                                               ; preds = %62, %55
  %64 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %65 = call i32 @cx231xx_close_extension(%struct.cx231xx* %64)
  %66 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %67 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %66, i32 0, i32 1
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %70 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %63
  %74 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %75 = call i32 @cx231xx_release_resources(%struct.cx231xx* %74)
  br label %76

76:                                               ; preds = %10, %16, %73, %63
  ret void
}

declare dso_local %struct.cx231xx* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @flush_request_modules(%struct.cx231xx*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wake_up_interruptible_all(i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @video_device_node_name(i32*) #1

declare dso_local i32 @cx231xx_ir_exit(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_uninit_isoc(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_uninit_bulk(%struct.cx231xx*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @cx231xx_close_extension(%struct.cx231xx*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cx231xx_release_resources(%struct.cx231xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
