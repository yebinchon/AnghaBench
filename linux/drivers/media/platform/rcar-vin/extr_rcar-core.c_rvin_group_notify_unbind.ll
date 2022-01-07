; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-core.c_rvin_group_notify_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-core.c_rvin_group_notify_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_async_notifier = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_async_subdev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.rvin_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i64* }
%struct.TYPE_5__ = type { i64, i32* }

@RCAR_VIN_NUM = common dso_local global i32 0, align 4
@RVIN_CSI_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unbind CSI-2 %s from slot %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_async_notifier*, %struct.v4l2_subdev*, %struct.v4l2_async_subdev*)* @rvin_group_notify_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rvin_group_notify_unbind(%struct.v4l2_async_notifier* %0, %struct.v4l2_subdev* %1, %struct.v4l2_async_subdev* %2) #0 {
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
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %40, %3
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @RCAR_VIN_NUM, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %13
  %18 = load %struct.rvin_dev*, %struct.rvin_dev** %7, align 8
  %19 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %17
  %29 = load %struct.rvin_dev*, %struct.rvin_dev** %7, align 8
  %30 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @rvin_v4l2_unregister(i64 %37)
  br label %39

39:                                               ; preds = %28, %17
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %8, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %13

43:                                               ; preds = %13
  %44 = load %struct.rvin_dev*, %struct.rvin_dev** %7, align 8
  %45 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = call i32 @mutex_lock(i32* %47)
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %86, %43
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @RVIN_CSI_MAX, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %89

53:                                               ; preds = %49
  %54 = load %struct.rvin_dev*, %struct.rvin_dev** %7, align 8
  %55 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %6, align 8
  %65 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %63, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %53
  br label %86

70:                                               ; preds = %53
  %71 = load %struct.rvin_dev*, %struct.rvin_dev** %7, align 8
  %72 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store i32* null, i32** %79, align 8
  %80 = load %struct.rvin_dev*, %struct.rvin_dev** %7, align 8
  %81 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %82 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @vin_dbg(%struct.rvin_dev* %80, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %84)
  br label %89

86:                                               ; preds = %69
  %87 = load i32, i32* %8, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %49

89:                                               ; preds = %70, %49
  %90 = load %struct.rvin_dev*, %struct.rvin_dev** %7, align 8
  %91 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = call i32 @mutex_unlock(i32* %93)
  ret void
}

declare dso_local %struct.rvin_dev* @v4l2_dev_to_vin(i32) #1

declare dso_local i32 @rvin_v4l2_unregister(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vin_dbg(%struct.rvin_dev*, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
