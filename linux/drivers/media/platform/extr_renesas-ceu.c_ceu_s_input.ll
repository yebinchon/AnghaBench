; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_renesas-ceu.c_ceu_s_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_renesas-ceu.c_ceu_s_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.ceu_device = type { i32, i32, %struct.ceu_subdev*, %struct.ceu_subdev*, i32 }
%struct.ceu_subdev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@s_power = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @ceu_s_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceu_s_input(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ceu_device*, align 8
  %9 = alloca %struct.ceu_subdev*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.ceu_device* @video_drvdata(%struct.file* %11)
  store %struct.ceu_device* %12, %struct.ceu_device** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.ceu_device*, %struct.ceu_device** %8, align 8
  %15 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp uge i32 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %87

21:                                               ; preds = %3
  %22 = load %struct.ceu_device*, %struct.ceu_device** %8, align 8
  %23 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %22, i32 0, i32 4
  %24 = call i64 @vb2_is_streaming(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %87

29:                                               ; preds = %21
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.ceu_device*, %struct.ceu_device** %8, align 8
  %32 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %87

36:                                               ; preds = %29
  %37 = load %struct.ceu_device*, %struct.ceu_device** %8, align 8
  %38 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %37, i32 0, i32 2
  %39 = load %struct.ceu_subdev*, %struct.ceu_subdev** %38, align 8
  store %struct.ceu_subdev* %39, %struct.ceu_subdev** %9, align 8
  %40 = load %struct.ceu_device*, %struct.ceu_device** %8, align 8
  %41 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %40, i32 0, i32 3
  %42 = load %struct.ceu_subdev*, %struct.ceu_subdev** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.ceu_subdev, %struct.ceu_subdev* %42, i64 %44
  %46 = load %struct.ceu_device*, %struct.ceu_device** %8, align 8
  %47 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %46, i32 0, i32 2
  store %struct.ceu_subdev* %45, %struct.ceu_subdev** %47, align 8
  %48 = load %struct.ceu_device*, %struct.ceu_device** %8, align 8
  %49 = call i32 @ceu_init_mbus_fmt(%struct.ceu_device* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %36
  %53 = load %struct.ceu_subdev*, %struct.ceu_subdev** %9, align 8
  %54 = load %struct.ceu_device*, %struct.ceu_device** %8, align 8
  %55 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %54, i32 0, i32 2
  store %struct.ceu_subdev* %53, %struct.ceu_subdev** %55, align 8
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %87

58:                                               ; preds = %36
  %59 = load %struct.ceu_device*, %struct.ceu_device** %8, align 8
  %60 = call i32 @ceu_set_default_fmt(%struct.ceu_device* %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.ceu_subdev*, %struct.ceu_subdev** %9, align 8
  %65 = load %struct.ceu_device*, %struct.ceu_device** %8, align 8
  %66 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %65, i32 0, i32 2
  store %struct.ceu_subdev* %64, %struct.ceu_subdev** %66, align 8
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %87

69:                                               ; preds = %58
  %70 = load %struct.ceu_subdev*, %struct.ceu_subdev** %9, align 8
  %71 = getelementptr inbounds %struct.ceu_subdev, %struct.ceu_subdev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @core, align 4
  %74 = load i32, i32* @s_power, align 4
  %75 = call i32 @v4l2_subdev_call(i32 %72, i32 %73, i32 %74, i32 0)
  %76 = load %struct.ceu_device*, %struct.ceu_device** %8, align 8
  %77 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %76, i32 0, i32 2
  %78 = load %struct.ceu_subdev*, %struct.ceu_subdev** %77, align 8
  %79 = getelementptr inbounds %struct.ceu_subdev, %struct.ceu_subdev* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @core, align 4
  %82 = load i32, i32* @s_power, align 4
  %83 = call i32 @v4l2_subdev_call(i32 %80, i32 %81, i32 %82, i32 1)
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.ceu_device*, %struct.ceu_device** %8, align 8
  %86 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %69, %63, %52, %35, %26, %18
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.ceu_device* @video_drvdata(%struct.file*) #1

declare dso_local i64 @vb2_is_streaming(i32*) #1

declare dso_local i32 @ceu_init_mbus_fmt(%struct.ceu_device*) #1

declare dso_local i32 @ceu_set_default_fmt(%struct.ceu_device*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
