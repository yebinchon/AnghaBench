; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/ttusb-budget/extr_dvb-ttusb-budget.c_ttusb_alloc_iso_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/ttusb-budget/extr_dvb-ttusb-budget.c_ttusb_alloc_iso_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttusb = type { %struct.urb**, i32 }
%struct.urb = type { i32 }

@FRAMES_PER_ISO_BUF = common dso_local global i32 0, align 4
@ISO_BUF_COUNT = common dso_local global i32 0, align 4
@ISO_FRAME_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttusb*)* @ttusb_alloc_iso_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttusb_alloc_iso_urbs(%struct.ttusb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ttusb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.urb*, align 8
  store %struct.ttusb* %0, %struct.ttusb** %3, align 8
  %6 = load i32, i32* @FRAMES_PER_ISO_BUF, align 4
  %7 = load i32, i32* @ISO_BUF_COUNT, align 4
  %8 = mul nsw i32 %6, %7
  %9 = load i32, i32* @ISO_FRAME_SIZE, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i32 @kcalloc(i32 %8, i32 %9, i32 %10)
  %12 = load %struct.ttusb*, %struct.ttusb** %3, align 8
  %13 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = load %struct.ttusb*, %struct.ttusb** %3, align 8
  %15 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %48

21:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %44, %21
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @ISO_BUF_COUNT, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %22
  %27 = load i32, i32* @FRAMES_PER_ISO_BUF, align 4
  %28 = load i32, i32* @GFP_ATOMIC, align 4
  %29 = call %struct.urb* @usb_alloc_urb(i32 %27, i32 %28)
  store %struct.urb* %29, %struct.urb** %5, align 8
  %30 = icmp ne %struct.urb* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.ttusb*, %struct.ttusb** %3, align 8
  %33 = call i32 @ttusb_free_iso_urbs(%struct.ttusb* %32)
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %48

36:                                               ; preds = %26
  %37 = load %struct.urb*, %struct.urb** %5, align 8
  %38 = load %struct.ttusb*, %struct.ttusb** %3, align 8
  %39 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %38, i32 0, i32 0
  %40 = load %struct.urb**, %struct.urb*** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.urb*, %struct.urb** %40, i64 %42
  store %struct.urb* %37, %struct.urb** %43, align 8
  br label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %22

47:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %31, %18
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @ttusb_free_iso_urbs(%struct.ttusb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
