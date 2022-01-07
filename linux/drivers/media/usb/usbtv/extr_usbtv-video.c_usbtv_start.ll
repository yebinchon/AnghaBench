; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbtv/extr_usbtv-video.c_usbtv_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbtv/extr_usbtv-video.c_usbtv_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbtv = type { %struct.urb**, i32 }
%struct.urb = type { i32 }

@USBTV_ISOC_TRANSFERS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbtv*)* @usbtv_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbtv_start(%struct.usbtv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbtv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.urb*, align 8
  store %struct.usbtv* %0, %struct.usbtv** %3, align 8
  %7 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %8 = call i32 @usbtv_audio_suspend(%struct.usbtv* %7)
  %9 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %10 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @usb_set_interface(i32 %11, i32 0, i32 0)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %71

17:                                               ; preds = %1
  %18 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %19 = call i32 @usbtv_setup_capture(%struct.usbtv* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %71

24:                                               ; preds = %17
  %25 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %26 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @usb_set_interface(i32 %27, i32 0, i32 1)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %71

33:                                               ; preds = %24
  %34 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %35 = call i32 @usbtv_audio_resume(%struct.usbtv* %34)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %63, %33
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @USBTV_ISOC_TRANSFERS, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %36
  %41 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %42 = call %struct.urb* @usbtv_setup_iso_transfer(%struct.usbtv* %41)
  store %struct.urb* %42, %struct.urb** %6, align 8
  %43 = load %struct.urb*, %struct.urb** %6, align 8
  %44 = icmp eq %struct.urb* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %67

48:                                               ; preds = %40
  %49 = load %struct.urb*, %struct.urb** %6, align 8
  %50 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %51 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %50, i32 0, i32 0
  %52 = load %struct.urb**, %struct.urb*** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.urb*, %struct.urb** %52, i64 %54
  store %struct.urb* %49, %struct.urb** %55, align 8
  %56 = load %struct.urb*, %struct.urb** %6, align 8
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i32 @usb_submit_urb(%struct.urb* %56, i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %48
  br label %67

62:                                               ; preds = %48
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %36

66:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %71

67:                                               ; preds = %61, %45
  %68 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %69 = call i32 @usbtv_stop(%struct.usbtv* %68)
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %67, %66, %31, %22, %15
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @usbtv_audio_suspend(%struct.usbtv*) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @usbtv_setup_capture(%struct.usbtv*) #1

declare dso_local i32 @usbtv_audio_resume(%struct.usbtv*) #1

declare dso_local %struct.urb* @usbtv_setup_iso_transfer(%struct.usbtv*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usbtv_stop(%struct.usbtv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
