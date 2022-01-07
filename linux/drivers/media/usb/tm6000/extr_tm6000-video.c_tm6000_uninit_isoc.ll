; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_tm6000_uninit_isoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_tm6000_uninit_isoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm6000_core = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.urb**, %struct.urb**, i32* }
%struct.urb = type { i32 }

@keep_urb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tm6000_core*)* @tm6000_uninit_isoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tm6000_uninit_isoc(%struct.tm6000_core* %0) #0 {
  %2 = alloca %struct.tm6000_core*, align 8
  %3 = alloca %struct.urb*, align 8
  %4 = alloca i32, align 4
  store %struct.tm6000_core* %0, %struct.tm6000_core** %2, align 8
  %5 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %6 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 3
  store i32* null, i32** %7, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %48, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %11 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %51

15:                                               ; preds = %8
  %16 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %17 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load %struct.urb**, %struct.urb*** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.urb*, %struct.urb** %19, i64 %21
  %23 = load %struct.urb*, %struct.urb** %22, align 8
  store %struct.urb* %23, %struct.urb** %3, align 8
  %24 = load %struct.urb*, %struct.urb** %3, align 8
  %25 = icmp ne %struct.urb* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %15
  %27 = load %struct.urb*, %struct.urb** %3, align 8
  %28 = call i32 @usb_kill_urb(%struct.urb* %27)
  %29 = load %struct.urb*, %struct.urb** %3, align 8
  %30 = call i32 @usb_unlink_urb(%struct.urb* %29)
  %31 = load %struct.urb*, %struct.urb** %3, align 8
  %32 = call i32 @usb_free_urb(%struct.urb* %31)
  %33 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %34 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load %struct.urb**, %struct.urb*** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.urb*, %struct.urb** %36, i64 %38
  store %struct.urb* null, %struct.urb** %39, align 8
  br label %40

40:                                               ; preds = %26, %15
  %41 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %42 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load %struct.urb**, %struct.urb*** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.urb*, %struct.urb** %44, i64 %46
  store %struct.urb* null, %struct.urb** %47, align 8
  br label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %8

51:                                               ; preds = %8
  %52 = load i32, i32* @keep_urb, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %56 = call i32 @tm6000_free_urb_buffers(%struct.tm6000_core* %55)
  br label %57

57:                                               ; preds = %54, %51
  %58 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %59 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load %struct.urb**, %struct.urb*** %60, align 8
  %62 = call i32 @kfree(%struct.urb** %61)
  %63 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %64 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load %struct.urb**, %struct.urb*** %65, align 8
  %67 = call i32 @kfree(%struct.urb** %66)
  %68 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %69 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  store %struct.urb** null, %struct.urb*** %70, align 8
  %71 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %72 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store %struct.urb** null, %struct.urb*** %73, align 8
  %74 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %75 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  ret void
}

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

declare dso_local i32 @usb_unlink_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @tm6000_free_urb_buffers(%struct.tm6000_core*) #1

declare dso_local i32 @kfree(%struct.urb**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
