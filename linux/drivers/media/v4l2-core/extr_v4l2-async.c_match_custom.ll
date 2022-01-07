; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-async.c_match_custom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-async.c_match_custom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_async_subdev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i32, %struct.v4l2_async_subdev.0*)* }
%struct.v4l2_async_subdev.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_async_subdev*)* @match_custom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_custom(%struct.v4l2_subdev* %0, %struct.v4l2_async_subdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_async_subdev*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_async_subdev* %1, %struct.v4l2_async_subdev** %5, align 8
  %6 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32 (i32, %struct.v4l2_async_subdev.0*)*, i32 (i32, %struct.v4l2_async_subdev.0*)** %9, align 8
  %11 = icmp ne i32 (i32, %struct.v4l2_async_subdev.0*)* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %25

13:                                               ; preds = %2
  %14 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (i32, %struct.v4l2_async_subdev.0*)*, i32 (i32, %struct.v4l2_async_subdev.0*)** %17, align 8
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %20 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %5, align 8
  %23 = bitcast %struct.v4l2_async_subdev* %22 to %struct.v4l2_async_subdev.0*
  %24 = call i32 %18(i32 %21, %struct.v4l2_async_subdev.0* %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %13, %12
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
