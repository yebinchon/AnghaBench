; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_driver.c_uvc_fraction_to_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_driver.c_uvc_fraction_to_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvc_fraction_to_interval(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = sdiv i32 %10, %11
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %2
  store i32 -1, i32* %3, align 4
  br label %38

15:                                               ; preds = %9
  store i32 10000000, i32* %6, align 4
  br label %16

16:                                               ; preds = %21, %15
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sdiv i32 -1, %18
  %20 = icmp sgt i32 %17, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = sdiv i32 %22, 2
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = sdiv i32 %24, 2
  store i32 %25, i32* %5, align 4
  br label %16

26:                                               ; preds = %16
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %6, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load i32, i32* %5, align 4
  %34 = sdiv i32 %32, %33
  br label %36

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %29
  %37 = phi i32 [ %34, %29 ], [ 0, %35 ]
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %14
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
