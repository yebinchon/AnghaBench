; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-417.c_cx231xx_bulk_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-417.c_cx231xx_bulk_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }
%struct.urb = type { i8*, i32, %struct.cx231xx_dmaqueue* }
%struct.cx231xx_dmaqueue = type { i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx231xx*, %struct.urb*)* @cx231xx_bulk_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx231xx_bulk_copy(%struct.cx231xx* %0, %struct.urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx231xx*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.cx231xx_dmaqueue*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %10 = load %struct.urb*, %struct.urb** %5, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 2
  %12 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %11, align 8
  store %struct.cx231xx_dmaqueue* %12, %struct.cx231xx_dmaqueue** %6, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.urb*, %struct.urb** %5, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %7, align 8
  %16 = load %struct.urb*, %struct.urb** %5, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call i8* @kmalloc(i32 %19, i32 %20)
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %56

27:                                               ; preds = %2
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %6, align 8
  %30 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @memcpy(i8* %28, i8* %31, i32 3)
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 3
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 %36, 3
  %38 = call i32 @memcpy(i8* %34, i8* %35, i32 %37)
  %39 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %6, align 8
  %40 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = getelementptr inbounds i8, i8* %45, i64 -3
  %47 = call i32 @memcpy(i8* %41, i8* %46, i32 3)
  %48 = load i8*, i8** %8, align 8
  store i8* %48, i8** %7, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.urb*, %struct.urb** %5, align 8
  %52 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %6, align 8
  %53 = call i32 @buffer_filled(i8* %49, i32 %50, %struct.urb* %51, %struct.cx231xx_dmaqueue* %52)
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @kfree(i8* %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %27, %24
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @buffer_filled(i8*, i32, %struct.urb*, %struct.cx231xx_dmaqueue*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
