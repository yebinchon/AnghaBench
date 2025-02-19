; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_to_coda_video_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_to_coda_video_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_video_device = type { i32 }
%struct.video_device = type { i32 }
%struct.coda_dev = type { %struct.TYPE_2__*, %struct.video_device* }
%struct.TYPE_2__ = type { i32, %struct.coda_video_device** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.coda_video_device* (%struct.video_device*)* @to_coda_video_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.coda_video_device* @to_coda_video_device(%struct.video_device* %0) #0 {
  %2 = alloca %struct.coda_video_device*, align 8
  %3 = alloca %struct.video_device*, align 8
  %4 = alloca %struct.coda_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.video_device* %0, %struct.video_device** %3, align 8
  %6 = load %struct.video_device*, %struct.video_device** %3, align 8
  %7 = call %struct.coda_dev* @video_get_drvdata(%struct.video_device* %6)
  store %struct.coda_dev* %7, %struct.coda_dev** %4, align 8
  %8 = load %struct.video_device*, %struct.video_device** %3, align 8
  %9 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %10 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %9, i32 0, i32 1
  %11 = load %struct.video_device*, %struct.video_device** %10, align 8
  %12 = ptrtoint %struct.video_device* %8 to i64
  %13 = ptrtoint %struct.video_device* %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 4
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %19 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp uge i32 %17, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store %struct.coda_video_device* null, %struct.coda_video_device** %2, align 8
  br label %35

25:                                               ; preds = %1
  %26 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %27 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load %struct.coda_video_device**, %struct.coda_video_device*** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.coda_video_device*, %struct.coda_video_device** %30, i64 %32
  %34 = load %struct.coda_video_device*, %struct.coda_video_device** %33, align 8
  store %struct.coda_video_device* %34, %struct.coda_video_device** %2, align 8
  br label %35

35:                                               ; preds = %25, %24
  %36 = load %struct.coda_video_device*, %struct.coda_video_device** %2, align 8
  ret %struct.coda_video_device* %36
}

declare dso_local %struct.coda_dev* @video_get_drvdata(%struct.video_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
