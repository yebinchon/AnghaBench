; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rma.c_scif_fixup_aper_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rma.c_scif_fixup_aper_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_dev = type { %struct.scif_hw_dev* }
%struct.scif_hw_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.scif_window = type { i64, i32, i32*, i64* }

@SCIF_WINDOW_PEER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scif_dev*, %struct.scif_window*)* @scif_fixup_aper_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scif_fixup_aper_base(%struct.scif_dev* %0, %struct.scif_window* %1) #0 {
  %3 = alloca %struct.scif_dev*, align 8
  %4 = alloca %struct.scif_window*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scif_hw_dev*, align 8
  %7 = alloca i64, align 8
  store %struct.scif_dev* %0, %struct.scif_dev** %3, align 8
  store %struct.scif_window* %1, %struct.scif_window** %4, align 8
  %8 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %9 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %8, i32 0, i32 0
  %10 = load %struct.scif_hw_dev*, %struct.scif_hw_dev** %9, align 8
  store %struct.scif_hw_dev* %10, %struct.scif_hw_dev** %6, align 8
  store i64 0, i64* %7, align 8
  %11 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %12 = call i32 @scifdev_self(%struct.scif_dev* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %36, label %14

14:                                               ; preds = %2
  %15 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %16 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SCIF_WINDOW_PEER, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load %struct.scif_hw_dev*, %struct.scif_hw_dev** %6, align 8
  %22 = getelementptr inbounds %struct.scif_hw_dev, %struct.scif_hw_dev* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp ne %struct.TYPE_2__* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load %struct.scif_hw_dev*, %struct.scif_hw_dev** %6, align 8
  %27 = getelementptr inbounds %struct.scif_hw_dev, %struct.scif_hw_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = load %struct.scif_hw_dev*, %struct.scif_hw_dev** %6, align 8
  %32 = getelementptr inbounds %struct.scif_hw_dev, %struct.scif_hw_dev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %7, align 8
  br label %37

36:                                               ; preds = %25, %20, %14, %2
  br label %70

37:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %67, %37
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %41 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %70

44:                                               ; preds = %38
  %45 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %46 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %45, i32 0, i32 3
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %44
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %56 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %54
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %60, align 4
  br label %66

65:                                               ; preds = %44
  br label %70

66:                                               ; preds = %53
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %38

70:                                               ; preds = %36, %65, %38
  ret void
}

declare dso_local i32 @scifdev_self(%struct.scif_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
