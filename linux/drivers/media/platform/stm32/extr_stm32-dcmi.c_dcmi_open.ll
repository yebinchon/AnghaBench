; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.stm32_dcmi = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_subdev* }
%struct.v4l2_subdev = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@s_power = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @dcmi_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcmi_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.stm32_dcmi*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.stm32_dcmi* @video_drvdata(%struct.file* %7)
  store %struct.stm32_dcmi* %8, %struct.stm32_dcmi** %4, align 8
  %9 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %10 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %11, align 8
  store %struct.v4l2_subdev* %12, %struct.v4l2_subdev** %5, align 8
  %13 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %14 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %13, i32 0, i32 0
  %15 = call i64 @mutex_lock_interruptible(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ERESTARTSYS, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %69

20:                                               ; preds = %1
  %21 = load %struct.file*, %struct.file** %3, align 8
  %22 = call i32 @v4l2_fh_open(%struct.file* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %64

26:                                               ; preds = %20
  %27 = load %struct.file*, %struct.file** %3, align 8
  %28 = call i32 @v4l2_fh_is_singular_file(%struct.file* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %57

31:                                               ; preds = %26
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %33 = load i32, i32* @core, align 4
  %34 = load i32, i32* @s_power, align 4
  %35 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %32, i32 %33, i32 %34, i32 1)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @ENOIOCTLCMD, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp ne i32 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %57

44:                                               ; preds = %38, %31
  %45 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %46 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %47 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %46, i32 0, i32 1
  %48 = call i32 @dcmi_set_fmt(%struct.stm32_dcmi* %45, i32* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %53 = load i32, i32* @core, align 4
  %54 = load i32, i32* @s_power, align 4
  %55 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %52, i32 %53, i32 %54, i32 0)
  br label %56

56:                                               ; preds = %51, %44
  br label %57

57:                                               ; preds = %56, %43, %30
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load %struct.file*, %struct.file** %3, align 8
  %62 = call i32 @v4l2_fh_release(%struct.file* %61)
  br label %63

63:                                               ; preds = %60, %57
  br label %64

64:                                               ; preds = %63, %25
  %65 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %66 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %64, %17
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.stm32_dcmi* @video_drvdata(%struct.file*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @v4l2_fh_open(%struct.file*) #1

declare dso_local i32 @v4l2_fh_is_singular_file(%struct.file*) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32) #1

declare dso_local i32 @dcmi_set_fmt(%struct.stm32_dcmi*, i32*) #1

declare dso_local i32 @v4l2_fh_release(%struct.file*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
