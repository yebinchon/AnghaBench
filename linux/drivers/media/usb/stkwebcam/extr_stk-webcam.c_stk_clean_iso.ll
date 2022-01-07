; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stkwebcam/extr_stk-webcam.c_stk_clean_iso.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stkwebcam/extr_stk-webcam.c_stk_clean_iso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stk_camera = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.TYPE_2__*, %struct.urb* }
%struct.urb = type { i32 }

@MAX_ISO_BUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stk_camera*)* @stk_clean_iso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stk_clean_iso(%struct.stk_camera* %0) #0 {
  %2 = alloca %struct.stk_camera*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.urb*, align 8
  store %struct.stk_camera* %0, %struct.stk_camera** %2, align 8
  %5 = load %struct.stk_camera*, %struct.stk_camera** %2, align 8
  %6 = icmp eq %struct.stk_camera* %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.stk_camera*, %struct.stk_camera** %2, align 8
  %9 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp eq %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %1
  br label %66

13:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %54, %13
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @MAX_ISO_BUFS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %57

18:                                               ; preds = %14
  %19 = load %struct.stk_camera*, %struct.stk_camera** %2, align 8
  %20 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load %struct.urb*, %struct.urb** %25, align 8
  store %struct.urb* %26, %struct.urb** %4, align 8
  %27 = load %struct.urb*, %struct.urb** %4, align 8
  %28 = icmp ne %struct.urb* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %18
  %30 = load %struct.stk_camera*, %struct.stk_camera** %2, align 8
  %31 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %30, i32 0, i32 1
  %32 = call i64 @atomic_read(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.stk_camera*, %struct.stk_camera** %2, align 8
  %36 = call i64 @is_present(%struct.stk_camera* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.urb*, %struct.urb** %4, align 8
  %40 = call i32 @usb_kill_urb(%struct.urb* %39)
  br label %41

41:                                               ; preds = %38, %34, %29
  %42 = load %struct.urb*, %struct.urb** %4, align 8
  %43 = call i32 @usb_free_urb(%struct.urb* %42)
  br label %44

44:                                               ; preds = %41, %18
  %45 = load %struct.stk_camera*, %struct.stk_camera** %2, align 8
  %46 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = call i32 @kfree(%struct.TYPE_2__* %52)
  br label %54

54:                                               ; preds = %44
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %14

57:                                               ; preds = %14
  %58 = load %struct.stk_camera*, %struct.stk_camera** %2, align 8
  %59 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = call i32 @kfree(%struct.TYPE_2__* %60)
  %62 = load %struct.stk_camera*, %struct.stk_camera** %2, align 8
  %63 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %62, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %63, align 8
  %64 = load %struct.stk_camera*, %struct.stk_camera** %2, align 8
  %65 = call i32 @unset_memallocd(%struct.stk_camera* %64)
  br label %66

66:                                               ; preds = %57, %12
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @is_present(%struct.stk_camera*) #1

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

declare dso_local i32 @unset_memallocd(%struct.stk_camera*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
