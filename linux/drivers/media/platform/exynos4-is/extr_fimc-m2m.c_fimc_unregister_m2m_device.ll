; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-m2m.c_fimc_unregister_m2m_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-m2m.c_fimc_unregister_m2m_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fimc_unregister_m2m_device(%struct.fimc_dev* %0) #0 {
  %2 = alloca %struct.fimc_dev*, align 8
  store %struct.fimc_dev* %0, %struct.fimc_dev** %2, align 8
  %3 = load %struct.fimc_dev*, %struct.fimc_dev** %2, align 8
  %4 = icmp ne %struct.fimc_dev* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %34

6:                                                ; preds = %1
  %7 = load %struct.fimc_dev*, %struct.fimc_dev** %2, align 8
  %8 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = load %struct.fimc_dev*, %struct.fimc_dev** %2, align 8
  %14 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @v4l2_m2m_release(i64 %16)
  br label %18

18:                                               ; preds = %12, %6
  %19 = load %struct.fimc_dev*, %struct.fimc_dev** %2, align 8
  %20 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i64 @video_is_registered(%struct.TYPE_5__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load %struct.fimc_dev*, %struct.fimc_dev** %2, align 8
  %26 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @video_unregister_device(%struct.TYPE_5__* %27)
  %29 = load %struct.fimc_dev*, %struct.fimc_dev** %2, align 8
  %30 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = call i32 @media_entity_cleanup(i32* %32)
  br label %34

34:                                               ; preds = %5, %24, %18
  ret void
}

declare dso_local i32 @v4l2_m2m_release(i64) #1

declare dso_local i64 @video_is_registered(%struct.TYPE_5__*) #1

declare dso_local i32 @video_unregister_device(%struct.TYPE_5__*) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
