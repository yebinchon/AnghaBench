; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-core.c_rvin_group_notify_bound.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-core.c_rvin_group_notify_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_async_notifier = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_async_subdev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.rvin_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.v4l2_subdev* }

@RVIN_CSI_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Bound CSI-2 %s to slot %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_async_notifier*, %struct.v4l2_subdev*, %struct.v4l2_async_subdev*)* @rvin_group_notify_bound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvin_group_notify_bound(%struct.v4l2_async_notifier* %0, %struct.v4l2_subdev* %1, %struct.v4l2_async_subdev* %2) #0 {
  %4 = alloca %struct.v4l2_async_notifier*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_async_subdev*, align 8
  %7 = alloca %struct.rvin_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_async_notifier* %0, %struct.v4l2_async_notifier** %4, align 8
  store %struct.v4l2_subdev* %1, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_async_subdev* %2, %struct.v4l2_async_subdev** %6, align 8
  %9 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %4, align 8
  %10 = getelementptr inbounds %struct.v4l2_async_notifier, %struct.v4l2_async_notifier* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.rvin_dev* @v4l2_dev_to_vin(i32 %11)
  store %struct.rvin_dev* %12, %struct.rvin_dev** %7, align 8
  %13 = load %struct.rvin_dev*, %struct.rvin_dev** %7, align 8
  %14 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %56, %3
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @RVIN_CSI_MAX, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %59

22:                                               ; preds = %18
  %23 = load %struct.rvin_dev*, %struct.rvin_dev** %7, align 8
  %24 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %6, align 8
  %34 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %32, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %22
  br label %56

39:                                               ; preds = %22
  %40 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %41 = load %struct.rvin_dev*, %struct.rvin_dev** %7, align 8
  %42 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store %struct.v4l2_subdev* %40, %struct.v4l2_subdev** %49, align 8
  %50 = load %struct.rvin_dev*, %struct.rvin_dev** %7, align 8
  %51 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %52 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @vin_dbg(%struct.rvin_dev* %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54)
  br label %59

56:                                               ; preds = %38
  %57 = load i32, i32* %8, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %18

59:                                               ; preds = %39, %18
  %60 = load %struct.rvin_dev*, %struct.rvin_dev** %7, align 8
  %61 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  ret i32 0
}

declare dso_local %struct.rvin_dev* @v4l2_dev_to_vin(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vin_dbg(%struct.rvin_dev*, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
