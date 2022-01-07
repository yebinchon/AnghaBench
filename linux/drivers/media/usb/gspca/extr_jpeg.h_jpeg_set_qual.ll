; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_jpeg.h_jpeg_set_qual.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_jpeg.h_jpeg_set_qual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jpeg_head = common dso_local global i32* null, align 8
@JPEG_QT0_OFFSET = common dso_local global i32 0, align 4
@JPEG_QT1_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @jpeg_set_qual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jpeg_set_qual(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sle i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 5000, i32* %6, align 4
  br label %21

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 50
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = sdiv i32 5000, %14
  store i32 %15, i32* %6, align 4
  br label %20

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = mul nsw i32 %17, 2
  %19 = sub nsw i32 200, %18
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %16, %13
  br label %21

21:                                               ; preds = %20, %9
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %60, %21
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 64
  br i1 %24, label %25, label %63

25:                                               ; preds = %22
  %26 = load i32*, i32** @jpeg_head, align 8
  %27 = load i32, i32* @JPEG_QT0_OFFSET, align 4
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = mul nsw i32 %32, %33
  %35 = add nsw i32 %34, 50
  %36 = sdiv i32 %35, 100
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* @JPEG_QT0_OFFSET, align 4
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  store i32 %36, i32* %42, align 4
  %43 = load i32*, i32** @jpeg_head, align 8
  %44 = load i32, i32* @JPEG_QT1_OFFSET, align 4
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %43, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = mul nsw i32 %49, %50
  %52 = add nsw i32 %51, 50
  %53 = sdiv i32 %52, 100
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* @JPEG_QT1_OFFSET, align 4
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  store i32 %53, i32* %59, align 4
  br label %60

60:                                               ; preds = %25
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %22

63:                                               ; preds = %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
