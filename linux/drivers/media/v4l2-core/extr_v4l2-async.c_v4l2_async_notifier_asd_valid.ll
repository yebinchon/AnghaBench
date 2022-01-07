; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-async.c_v4l2_async_notifier_asd_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-async.c_v4l2_async_notifier_asd_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_async_notifier = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.v4l2_async_subdev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"subdev descriptor already listed in this or other notifiers\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid match type %u on %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_async_notifier*, %struct.v4l2_async_subdev*, i32)* @v4l2_async_notifier_asd_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l2_async_notifier_asd_valid(%struct.v4l2_async_notifier* %0, %struct.v4l2_async_subdev* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_async_notifier*, align 8
  %6 = alloca %struct.v4l2_async_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  store %struct.v4l2_async_notifier* %0, %struct.v4l2_async_notifier** %5, align 8
  store %struct.v4l2_async_subdev* %1, %struct.v4l2_async_subdev** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_async_notifier, %struct.v4l2_async_notifier* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_async_notifier, %struct.v4l2_async_notifier* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  br label %20

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %13
  %21 = phi %struct.device* [ %18, %13 ], [ null, %19 ]
  store %struct.device* %21, %struct.device** %8, align 8
  %22 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %6, align 8
  %23 = icmp ne %struct.v4l2_async_subdev* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %53

27:                                               ; preds = %20
  %28 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %6, align 8
  %29 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %43 [
    i32 131, label %31
    i32 130, label %31
    i32 128, label %31
    i32 129, label %31
  ]

31:                                               ; preds = %27, %27, %27, %27
  %32 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %5, align 8
  %33 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @v4l2_async_notifier_has_async_subdev(%struct.v4l2_async_notifier* %32, %struct.v4l2_async_subdev* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.device*, %struct.device** %8, align 8
  %39 = call i32 @dev_dbg(%struct.device* %38, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EEXIST, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %53

42:                                               ; preds = %31
  br label %52

43:                                               ; preds = %27
  %44 = load %struct.device*, %struct.device** %8, align 8
  %45 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %6, align 8
  %46 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %6, align 8
  %49 = call i32 @dev_err(%struct.device* %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %47, %struct.v4l2_async_subdev* %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %53

52:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %43, %37, %24
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @v4l2_async_notifier_has_async_subdev(%struct.v4l2_async_notifier*, %struct.v4l2_async_subdev*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, %struct.v4l2_async_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
