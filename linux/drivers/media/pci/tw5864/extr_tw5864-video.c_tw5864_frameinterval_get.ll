; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-video.c_tw5864_frameinterval_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-video.c_tw5864_frameinterval_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw5864_input = type { i32, %struct.tw5864_dev* }
%struct.tw5864_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_fract = type { i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"tw5864_frameinterval_get requested for unknown std %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tw5864_input*, %struct.v4l2_fract*)* @tw5864_frameinterval_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw5864_frameinterval_get(%struct.tw5864_input* %0, %struct.v4l2_fract* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tw5864_input*, align 8
  %5 = alloca %struct.v4l2_fract*, align 8
  %6 = alloca %struct.tw5864_dev*, align 8
  store %struct.tw5864_input* %0, %struct.tw5864_input** %4, align 8
  store %struct.v4l2_fract* %1, %struct.v4l2_fract** %5, align 8
  %7 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %8 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %7, i32 0, i32 1
  %9 = load %struct.tw5864_dev*, %struct.tw5864_dev** %8, align 8
  store %struct.tw5864_dev* %9, %struct.tw5864_dev** %6, align 8
  %10 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %11 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %23 [
    i32 130, label %13
    i32 129, label %18
    i32 128, label %18
  ]

13:                                               ; preds = %2
  %14 = load %struct.v4l2_fract*, %struct.v4l2_fract** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %14, i32 0, i32 0
  store i32 1001, i32* %15, align 4
  %16 = load %struct.v4l2_fract*, %struct.v4l2_fract** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %16, i32 0, i32 1
  store i32 30000, i32* %17, align 4
  br label %34

18:                                               ; preds = %2, %2
  %19 = load %struct.v4l2_fract*, %struct.v4l2_fract** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load %struct.v4l2_fract*, %struct.v4l2_fract** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %21, i32 0, i32 1
  store i32 25, i32* %22, align 4
  br label %34

23:                                               ; preds = %2
  %24 = load %struct.tw5864_dev*, %struct.tw5864_dev** %6, align 8
  %25 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %29 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_warn(i32* %27, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %18, %13
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %23
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
