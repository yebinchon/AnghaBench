; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mc.c_v4l2_pipeline_pm_use.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mc.c_v4l2_pipeline_pm_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.media_device* }
%struct.media_device = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_pipeline_pm_use(%struct.media_entity* %0, i32 %1) #0 {
  %3 = alloca %struct.media_entity*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.media_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.media_entity* %0, %struct.media_entity** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.media_entity*, %struct.media_entity** %3, align 8
  %9 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.media_device*, %struct.media_device** %10, align 8
  store %struct.media_device* %11, %struct.media_device** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 1, i32 -1
  store i32 %15, i32* %6, align 4
  %16 = load %struct.media_device*, %struct.media_device** %5, align 8
  %17 = getelementptr inbounds %struct.media_device, %struct.media_device* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = load %struct.media_entity*, %struct.media_entity** %3, align 8
  %22 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, %20
  store i64 %24, i64* %22, align 8
  %25 = load %struct.media_entity*, %struct.media_entity** %3, align 8
  %26 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load %struct.media_entity*, %struct.media_entity** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.media_device*, %struct.media_device** %5, align 8
  %34 = getelementptr inbounds %struct.media_device, %struct.media_device* %33, i32 0, i32 1
  %35 = call i32 @pipeline_pm_power(%struct.media_entity* %31, i32 %32, i32* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %2
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = load %struct.media_entity*, %struct.media_entity** %3, align 8
  %42 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %43, %40
  store i64 %44, i64* %42, align 8
  br label %45

45:                                               ; preds = %38, %2
  %46 = load %struct.media_device*, %struct.media_device** %5, align 8
  %47 = getelementptr inbounds %struct.media_device, %struct.media_device* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pipeline_pm_power(%struct.media_entity*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
