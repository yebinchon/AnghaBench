; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v111.c_mt9v111_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v111.c_mt9v111_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.mt9v111_dev = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @mt9v111_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9v111_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt9v111_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.mt9v111_dev* @sd_to_mt9v111(%struct.v4l2_subdev* %8)
  store %struct.mt9v111_dev* %9, %struct.mt9v111_dev** %6, align 8
  %10 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %6, align 8
  %11 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %10, i32 0, i32 2
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %6, align 8
  %14 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %6, align 8
  %20 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %19, i32 0, i32 2
  %21 = call i32 @mutex_unlock(i32* %20)
  store i32 0, i32* %3, align 4
  br label %61

22:                                               ; preds = %2
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @mt9v111_s_power(%struct.v4l2_subdev* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %56

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %29
  %33 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %6, align 8
  %34 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %6, align 8
  %39 = call i32 @mt9v111_hw_config(%struct.mt9v111_dev* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %56

43:                                               ; preds = %37
  %44 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %6, align 8
  %45 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %32, %29
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 1, i32 0
  %51 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %6, align 8
  %52 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %6, align 8
  %54 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %53, i32 0, i32 2
  %55 = call i32 @mutex_unlock(i32* %54)
  store i32 0, i32* %3, align 4
  br label %61

56:                                               ; preds = %42, %28
  %57 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %6, align 8
  %58 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %57, i32 0, i32 2
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %56, %46, %18
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.mt9v111_dev* @sd_to_mt9v111(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mt9v111_s_power(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @mt9v111_hw_config(%struct.mt9v111_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
