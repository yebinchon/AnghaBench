; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-417.c_cx231xx_isoc_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-417.c_cx231xx_isoc_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }
%struct.urb = type { i64, i8*, %struct.TYPE_2__*, %struct.cx231xx_dmaqueue* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.cx231xx_dmaqueue = type { i64, i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx231xx*, %struct.urb*)* @cx231xx_isoc_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx231xx_isoc_copy(%struct.cx231xx* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.cx231xx*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.cx231xx_dmaqueue*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %9 = load %struct.urb*, %struct.urb** %4, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 3
  %11 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %10, align 8
  store %struct.cx231xx_dmaqueue* %11, %struct.cx231xx_dmaqueue** %5, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %8, align 8
  br label %12

12:                                               ; preds = %71, %2
  %13 = load i64, i64* %8, align 8
  %14 = load %struct.urb*, %struct.urb** %4, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %74

18:                                               ; preds = %12
  %19 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %5, align 8
  %20 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %18
  %24 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %25 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %5, align 8
  %26 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %5, align 8
  %29 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.urb*, %struct.urb** %4, align 8
  %32 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %5, align 8
  %33 = call i32 @buffer_copy(%struct.cx231xx* %24, i8* %27, i64 %30, %struct.urb* %31, %struct.cx231xx_dmaqueue* %32)
  %34 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %5, align 8
  %35 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %5, align 8
  %38 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %5, align 8
  %40 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %23, %18
  %42 = load %struct.urb*, %struct.urb** %4, align 8
  %43 = getelementptr inbounds %struct.urb, %struct.urb* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.urb*, %struct.urb** %4, align 8
  %46 = getelementptr inbounds %struct.urb, %struct.urb* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %44, i64 %52
  store i8* %53, i8** %6, align 8
  %54 = load %struct.urb*, %struct.urb** %4, align 8
  %55 = getelementptr inbounds %struct.urb, %struct.urb* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %7, align 8
  %62 = icmp ugt i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %41
  %64 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load %struct.urb*, %struct.urb** %4, align 8
  %68 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %5, align 8
  %69 = call i32 @buffer_copy(%struct.cx231xx* %64, i8* %65, i64 %66, %struct.urb* %67, %struct.cx231xx_dmaqueue* %68)
  br label %70

70:                                               ; preds = %63, %41
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %8, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %8, align 8
  br label %12

74:                                               ; preds = %12
  ret i32 0
}

declare dso_local i32 @buffer_copy(%struct.cx231xx*, i8*, i64, %struct.urb*, %struct.cx231xx_dmaqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
