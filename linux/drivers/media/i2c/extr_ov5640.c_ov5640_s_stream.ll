; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.ov5640_dev = type { i32, i32, i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@V4L2_MBUS_CSI2_DPHY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ov5640_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5640_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ov5640_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.ov5640_dev* @to_ov5640_dev(%struct.v4l2_subdev* %7)
  store %struct.ov5640_dev* %8, %struct.ov5640_dev** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.ov5640_dev*, %struct.ov5640_dev** %5, align 8
  %10 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %9, i32 0, i32 2
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.ov5640_dev*, %struct.ov5640_dev** %5, align 8
  %13 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = icmp eq i32 %14, %18
  br i1 %19, label %20, label %77

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load %struct.ov5640_dev*, %struct.ov5640_dev** %5, align 8
  %25 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.ov5640_dev*, %struct.ov5640_dev** %5, align 8
  %30 = call i32 @ov5640_set_mode(%struct.ov5640_dev* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %78

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %23, %20
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %35
  %39 = load %struct.ov5640_dev*, %struct.ov5640_dev** %5, align 8
  %40 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load %struct.ov5640_dev*, %struct.ov5640_dev** %5, align 8
  %45 = load %struct.ov5640_dev*, %struct.ov5640_dev** %5, align 8
  %46 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %45, i32 0, i32 4
  %47 = call i32 @ov5640_set_framefmt(%struct.ov5640_dev* %44, i32* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %78

51:                                               ; preds = %43
  %52 = load %struct.ov5640_dev*, %struct.ov5640_dev** %5, align 8
  %53 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %52, i32 0, i32 1
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %38, %35
  %55 = load %struct.ov5640_dev*, %struct.ov5640_dev** %5, align 8
  %56 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @V4L2_MBUS_CSI2_DPHY, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load %struct.ov5640_dev*, %struct.ov5640_dev** %5, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @ov5640_set_stream_mipi(%struct.ov5640_dev* %62, i32 %63)
  store i32 %64, i32* %6, align 4
  br label %69

65:                                               ; preds = %54
  %66 = load %struct.ov5640_dev*, %struct.ov5640_dev** %5, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @ov5640_set_stream_dvp(%struct.ov5640_dev* %66, i32 %67)
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %4, align 4
  %74 = load %struct.ov5640_dev*, %struct.ov5640_dev** %5, align 8
  %75 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %72, %69
  br label %77

77:                                               ; preds = %76, %2
  br label %78

78:                                               ; preds = %77, %50, %33
  %79 = load %struct.ov5640_dev*, %struct.ov5640_dev** %5, align 8
  %80 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %79, i32 0, i32 2
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local %struct.ov5640_dev* @to_ov5640_dev(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ov5640_set_mode(%struct.ov5640_dev*) #1

declare dso_local i32 @ov5640_set_framefmt(%struct.ov5640_dev*, i32*) #1

declare dso_local i32 @ov5640_set_stream_mipi(%struct.ov5640_dev*, i32) #1

declare dso_local i32 @ov5640_set_stream_dvp(%struct.ov5640_dev*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
