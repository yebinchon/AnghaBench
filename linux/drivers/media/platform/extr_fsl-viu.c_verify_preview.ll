; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_fsl-viu.c_verify_preview.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_fsl-viu.c_verify_preview.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viu_dev = type { %struct.TYPE_5__, i32*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.v4l2_window = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.viu_dev*, %struct.v4l2_window*)* @verify_preview to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_preview(%struct.viu_dev* %0, %struct.v4l2_window* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.viu_dev*, align 8
  %5 = alloca %struct.v4l2_window*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.viu_dev* %0, %struct.viu_dev** %4, align 8
  store %struct.v4l2_window* %1, %struct.v4l2_window** %5, align 8
  %9 = load %struct.viu_dev*, %struct.viu_dev** %4, align 8
  %10 = getelementptr inbounds %struct.viu_dev, %struct.viu_dev* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %102

17:                                               ; preds = %2
  %18 = load %struct.viu_dev*, %struct.viu_dev** %4, align 8
  %19 = getelementptr inbounds %struct.viu_dev, %struct.viu_dev* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %102

25:                                               ; preds = %17
  %26 = load %struct.v4l2_window*, %struct.v4l2_window** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 48
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.v4l2_window*, %struct.v4l2_window** %5, align 8
  %33 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, 32
  br i1 %36, label %37, label %40

37:                                               ; preds = %31, %25
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %102

40:                                               ; preds = %31
  %41 = load %struct.v4l2_window*, %struct.v4l2_window** %5, align 8
  %42 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %6, align 4
  %44 = load %struct.viu_dev*, %struct.viu_dev** %4, align 8
  %45 = getelementptr inbounds %struct.viu_dev, %struct.viu_dev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %7, align 4
  %48 = load %struct.viu_dev*, %struct.viu_dev** %4, align 8
  %49 = getelementptr inbounds %struct.viu_dev, %struct.viu_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %40
  %56 = load %struct.v4l2_window*, %struct.v4l2_window** %5, align 8
  %57 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = sdiv i32 %60, 2
  %62 = icmp sgt i32 %59, %61
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 129, i32 128
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %55, %40
  %66 = load i32, i32* %6, align 4
  switch i32 %66, label %71 [
    i32 128, label %67
    i32 130, label %67
    i32 129, label %70
  ]

67:                                               ; preds = %65, %65
  %68 = load i32, i32* %8, align 4
  %69 = sdiv i32 %68, 2
  store i32 %69, i32* %8, align 4
  br label %74

70:                                               ; preds = %65
  br label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %102

74:                                               ; preds = %70, %67
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.v4l2_window*, %struct.v4l2_window** %5, align 8
  %77 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.v4l2_window*, %struct.v4l2_window** %5, align 8
  %79 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %74
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.v4l2_window*, %struct.v4l2_window** %5, align 8
  %87 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 4
  br label %89

89:                                               ; preds = %84, %74
  %90 = load %struct.v4l2_window*, %struct.v4l2_window** %5, align 8
  %91 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.v4l2_window*, %struct.v4l2_window** %5, align 8
  %99 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 4
  br label %101

101:                                              ; preds = %96, %89
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %71, %37, %22, %14
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
