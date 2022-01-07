; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_subdev_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_subdev_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.fimc_lite = type { i32, i32, i32, i32, i32, i32 }

@FIMC_IO_ISP = common dso_local global i64 0, align 8
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@ST_FLITE_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"s_stream(0) timeout\0A\00", align 1
@ST_FLITE_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @fimc_lite_subdev_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_lite_subdev_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fimc_lite*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.fimc_lite* @v4l2_get_subdevdata(%struct.v4l2_subdev* %9)
  store %struct.fimc_lite* %10, %struct.fimc_lite** %6, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %11, i32 0, i32 0
  %13 = call i32 @fimc_find_remote_sensor(i32* %12)
  %14 = load %struct.fimc_lite*, %struct.fimc_lite** %6, align 8
  %15 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 4
  %16 = load %struct.fimc_lite*, %struct.fimc_lite** %6, align 8
  %17 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %16, i32 0, i32 4
  %18 = call i64 @atomic_read(i32* %17)
  %19 = load i64, i64* @FIMC_IO_ISP, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOIOCTLCMD, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %91

24:                                               ; preds = %2
  %25 = load %struct.fimc_lite*, %struct.fimc_lite** %6, align 8
  %26 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %24
  %31 = load %struct.fimc_lite*, %struct.fimc_lite** %6, align 8
  %32 = call i32 @flite_hw_reset(%struct.fimc_lite* %31)
  %33 = load %struct.fimc_lite*, %struct.fimc_lite** %6, align 8
  %34 = call i32 @fimc_lite_hw_init(%struct.fimc_lite* %33, i32 1)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %30
  %38 = load %struct.fimc_lite*, %struct.fimc_lite** %6, align 8
  %39 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %38, i32 0, i32 3
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.fimc_lite*, %struct.fimc_lite** %6, align 8
  %43 = call i32 @flite_hw_capture_start(%struct.fimc_lite* %42)
  %44 = load %struct.fimc_lite*, %struct.fimc_lite** %6, align 8
  %45 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %44, i32 0, i32 3
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  br label %48

48:                                               ; preds = %37, %30
  br label %86

49:                                               ; preds = %24
  %50 = load i32, i32* @ST_FLITE_OFF, align 4
  %51 = load %struct.fimc_lite*, %struct.fimc_lite** %6, align 8
  %52 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %51, i32 0, i32 1
  %53 = call i32 @set_bit(i32 %50, i32* %52)
  %54 = load %struct.fimc_lite*, %struct.fimc_lite** %6, align 8
  %55 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %54, i32 0, i32 3
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  %58 = load %struct.fimc_lite*, %struct.fimc_lite** %6, align 8
  %59 = call i32 @flite_hw_capture_stop(%struct.fimc_lite* %58)
  %60 = load %struct.fimc_lite*, %struct.fimc_lite** %6, align 8
  %61 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %60, i32 0, i32 3
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load %struct.fimc_lite*, %struct.fimc_lite** %6, align 8
  %65 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @ST_FLITE_OFF, align 4
  %68 = load %struct.fimc_lite*, %struct.fimc_lite** %6, align 8
  %69 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %68, i32 0, i32 1
  %70 = call i32 @test_bit(i32 %67, i32* %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i32 @msecs_to_jiffies(i32 200)
  %75 = call i32 @wait_event_timeout(i32 %66, i32 %73, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %49
  %79 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %80 = call i32 @v4l2_err(%struct.v4l2_subdev* %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %49
  %82 = load i32, i32* @ST_FLITE_RUN, align 4
  %83 = load %struct.fimc_lite*, %struct.fimc_lite** %6, align 8
  %84 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %83, i32 0, i32 1
  %85 = call i32 @clear_bit(i32 %82, i32* %84)
  br label %86

86:                                               ; preds = %81, %48
  %87 = load %struct.fimc_lite*, %struct.fimc_lite** %6, align 8
  %88 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %87, i32 0, i32 0
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %86, %21
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.fimc_lite* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @fimc_find_remote_sensor(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @flite_hw_reset(%struct.fimc_lite*) #1

declare dso_local i32 @fimc_lite_hw_init(%struct.fimc_lite*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @flite_hw_capture_start(%struct.fimc_lite*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @flite_hw_capture_stop(%struct.fimc_lite*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
