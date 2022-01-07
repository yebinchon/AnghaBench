; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-async.c_asd_equal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-async.c_asd_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_async_subdev = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_async_subdev*, %struct.v4l2_async_subdev*)* @asd_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_equal(%struct.v4l2_async_subdev* %0, %struct.v4l2_async_subdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_async_subdev*, align 8
  %5 = alloca %struct.v4l2_async_subdev*, align 8
  store %struct.v4l2_async_subdev* %0, %struct.v4l2_async_subdev** %4, align 8
  store %struct.v4l2_async_subdev* %1, %struct.v4l2_async_subdev** %5, align 8
  %6 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %4, align 8
  %7 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

14:                                               ; preds = %2
  %15 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %4, align 8
  %16 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %68 [
    i32 130, label %18
    i32 128, label %30
    i32 129, label %57
  ]

18:                                               ; preds = %14
  %19 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %4, align 8
  %20 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @strcmp(i32 %22, i32 %26)
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %3, align 4
  br label %70

30:                                               ; preds = %14
  %31 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %4, align 8
  %32 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %35, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %30
  %43 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %4, align 8
  %44 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %5, align 8
  %49 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %47, %52
  br label %54

54:                                               ; preds = %42, %30
  %55 = phi i1 [ false, %30 ], [ %53, %42 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %3, align 4
  br label %70

57:                                               ; preds = %14
  %58 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %4, align 8
  %59 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %5, align 8
  %63 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %61, %65
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %3, align 4
  br label %70

68:                                               ; preds = %14
  br label %69

69:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %57, %54, %18, %13
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
