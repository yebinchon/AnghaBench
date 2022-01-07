; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-if.c_pwc_iso_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-if.c_pwc_iso_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { %struct.urb** }
%struct.urb = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAX_ISO_BUFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Freeing URB\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwc_device*)* @pwc_iso_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pwc_iso_free(%struct.pwc_device* %0) #0 {
  %2 = alloca %struct.pwc_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.urb*, align 8
  store %struct.pwc_device* %0, %struct.pwc_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %50, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @MAX_ISO_BUFS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %53

9:                                                ; preds = %5
  %10 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %11 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %10, i32 0, i32 0
  %12 = load %struct.urb**, %struct.urb*** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.urb*, %struct.urb** %12, i64 %14
  %16 = load %struct.urb*, %struct.urb** %15, align 8
  store %struct.urb* %16, %struct.urb** %4, align 8
  %17 = load %struct.urb*, %struct.urb** %4, align 8
  %18 = icmp ne %struct.urb* %17, null
  br i1 %18, label %19, label %49

19:                                               ; preds = %9
  %20 = call i32 @PWC_DEBUG_MEMORY(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.urb*, %struct.urb** %4, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load %struct.urb*, %struct.urb** %4, align 8
  %27 = getelementptr inbounds %struct.urb, %struct.urb* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.urb*, %struct.urb** %4, align 8
  %31 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.urb*, %struct.urb** %4, align 8
  %34 = getelementptr inbounds %struct.urb, %struct.urb* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.urb*, %struct.urb** %4, align 8
  %37 = getelementptr inbounds %struct.urb, %struct.urb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @pwc_free_urb_buffer(i32* %29, i32 %32, i64 %35, i32 %38)
  br label %40

40:                                               ; preds = %25, %19
  %41 = load %struct.urb*, %struct.urb** %4, align 8
  %42 = call i32 @usb_free_urb(%struct.urb* %41)
  %43 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %44 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %43, i32 0, i32 0
  %45 = load %struct.urb**, %struct.urb*** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.urb*, %struct.urb** %45, i64 %47
  store %struct.urb* null, %struct.urb** %48, align 8
  br label %49

49:                                               ; preds = %40, %9
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %5

53:                                               ; preds = %5
  ret void
}

declare dso_local i32 @PWC_DEBUG_MEMORY(i8*) #1

declare dso_local i32 @pwc_free_urb_buffer(i32*, i32, i64, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
