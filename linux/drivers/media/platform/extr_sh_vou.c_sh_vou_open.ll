; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_vou.c_sh_vou_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_vou.c_sh_vou_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.sh_vou_device = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@SH_VOU_INITIALISING = common dso_local global i64 0, align 8
@SH_VOU_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @sh_vou_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_vou_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.sh_vou_device*, align 8
  %5 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = call %struct.sh_vou_device* @video_drvdata(%struct.file* %6)
  store %struct.sh_vou_device* %7, %struct.sh_vou_device** %4, align 8
  %8 = load %struct.sh_vou_device*, %struct.sh_vou_device** %4, align 8
  %9 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %8, i32 0, i32 1
  %10 = call i64 @mutex_lock_interruptible(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ERESTARTSYS, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %60

15:                                               ; preds = %1
  %16 = load %struct.file*, %struct.file** %3, align 8
  %17 = call i32 @v4l2_fh_open(%struct.file* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %55

21:                                               ; preds = %15
  %22 = load %struct.file*, %struct.file** %3, align 8
  %23 = call i64 @v4l2_fh_is_singular_file(%struct.file* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %54

25:                                               ; preds = %21
  %26 = load %struct.sh_vou_device*, %struct.sh_vou_device** %4, align 8
  %27 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SH_VOU_INITIALISING, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %25
  %32 = load %struct.sh_vou_device*, %struct.sh_vou_device** %4, align 8
  %33 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pm_runtime_get_sync(i32 %35)
  %37 = load %struct.sh_vou_device*, %struct.sh_vou_device** %4, align 8
  %38 = call i32 @sh_vou_hw_init(%struct.sh_vou_device* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %31
  %42 = load %struct.sh_vou_device*, %struct.sh_vou_device** %4, align 8
  %43 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pm_runtime_put(i32 %45)
  %47 = load %struct.file*, %struct.file** %3, align 8
  %48 = call i32 @v4l2_fh_release(%struct.file* %47)
  br label %53

49:                                               ; preds = %31
  %50 = load i64, i64* @SH_VOU_IDLE, align 8
  %51 = load %struct.sh_vou_device*, %struct.sh_vou_device** %4, align 8
  %52 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %49, %41
  br label %54

54:                                               ; preds = %53, %25, %21
  br label %55

55:                                               ; preds = %54, %20
  %56 = load %struct.sh_vou_device*, %struct.sh_vou_device** %4, align 8
  %57 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %55, %12
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.sh_vou_device* @video_drvdata(%struct.file*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @v4l2_fh_open(%struct.file*) #1

declare dso_local i64 @v4l2_fh_is_singular_file(%struct.file*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @sh_vou_hw_init(%struct.sh_vou_device*) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @v4l2_fh_release(%struct.file*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
