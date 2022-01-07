; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_dma.c_ioremap_remote.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_dma.c_ioremap_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_window = type { i64 }
%struct.scif_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.scif_window_iter = type { i32 }

@SCIF_WINDOW_PEER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct.scif_window*, i64, %struct.scif_dev*, %struct.scif_window_iter*)* @ioremap_remote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ioremap_remote(i32 %0, %struct.scif_window* %1, i64 %2, %struct.scif_dev* %3, %struct.scif_window_iter* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.scif_window*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.scif_dev*, align 8
  %10 = alloca %struct.scif_window_iter*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %struct.scif_window* %1, %struct.scif_window** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.scif_dev* %3, %struct.scif_dev** %9, align 8
  store %struct.scif_window_iter* %4, %struct.scif_window_iter** %10, align 8
  %12 = load %struct.scif_window*, %struct.scif_window** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.scif_window_iter*, %struct.scif_window_iter** %10, align 8
  %15 = call i64 @scif_off_to_dma_addr(%struct.scif_window* %12, i32 %13, i32* null, %struct.scif_window_iter* %14)
  store i64 %15, i64* %11, align 8
  %16 = load %struct.scif_dev*, %struct.scif_dev** %9, align 8
  %17 = call i32 @scifdev_self(%struct.scif_dev* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %49, label %19

19:                                               ; preds = %5
  %20 = load %struct.scif_window*, %struct.scif_window** %7, align 8
  %21 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SCIF_WINDOW_PEER, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %19
  %26 = load %struct.scif_dev*, %struct.scif_dev** %9, align 8
  %27 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = icmp ne %struct.TYPE_3__* %30, null
  br i1 %31, label %32, label %49

32:                                               ; preds = %25
  %33 = load %struct.scif_dev*, %struct.scif_dev** %9, align 8
  %34 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %32
  %40 = load i64, i64* %11, align 8
  %41 = load %struct.scif_dev*, %struct.scif_dev** %9, align 8
  %42 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %40, %47
  store i64 %48, i64* %11, align 8
  br label %49

49:                                               ; preds = %39, %32, %25, %19, %5
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.scif_dev*, %struct.scif_dev** %9, align 8
  %53 = call i8* @scif_ioremap(i64 %50, i64 %51, %struct.scif_dev* %52)
  ret i8* %53
}

declare dso_local i64 @scif_off_to_dma_addr(%struct.scif_window*, i32, i32*, %struct.scif_window_iter*) #1

declare dso_local i32 @scifdev_self(%struct.scif_dev*) #1

declare dso_local i8* @scif_ioremap(i64, i64, %struct.scif_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
