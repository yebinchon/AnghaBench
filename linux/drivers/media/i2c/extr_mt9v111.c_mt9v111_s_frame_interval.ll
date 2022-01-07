; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v111.c_mt9v111_s_frame_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v111.c_mt9v111_s_frame_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_frame_interval = type { %struct.v4l2_fract }
%struct.v4l2_fract = type { i32, i32 }
%struct.mt9v111_dev = type { i32, i64, i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@EBUSY = common dso_local global i32 0, align 4
@QVGA_WIDTH = common dso_local global i64 0, align 8
@QVGA_HEIGHT = common dso_local global i64 0, align 8
@CIF_WIDTH = common dso_local global i64 0, align 8
@CIF_HEIGHT = common dso_local global i64 0, align 8
@MT9V111_MAX_CLKIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_frame_interval*)* @mt9v111_s_frame_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9v111_s_frame_interval(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_frame_interval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_frame_interval*, align 8
  %6 = alloca %struct.mt9v111_dev*, align 8
  %7 = alloca %struct.v4l2_fract*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_subdev_frame_interval* %1, %struct.v4l2_subdev_frame_interval** %5, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.mt9v111_dev* @sd_to_mt9v111(%struct.v4l2_subdev* %10)
  store %struct.mt9v111_dev* %11, %struct.mt9v111_dev** %6, align 8
  %12 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %12, i32 0, i32 0
  store %struct.v4l2_fract* %13, %struct.v4l2_fract** %7, align 8
  %14 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = udiv i32 %21, %24
  br label %30

26:                                               ; preds = %2
  %27 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  br label %30

30:                                               ; preds = %26, %18
  %31 = phi i32 [ %25, %18 ], [ %29, %26 ]
  store i32 %31, i32* %8, align 4
  %32 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %30
  %40 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %6, align 8
  %41 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %40, i32 0, i32 3
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %6, align 8
  %44 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %6, align 8
  %49 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %48, i32 0, i32 3
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %125

53:                                               ; preds = %39
  %54 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %6, align 8
  %55 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %6, align 8
  %61 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %60, i32 0, i32 3
  %62 = call i32 @mutex_unlock(i32* %61)
  store i32 0, i32* %3, align 4
  br label %125

63:                                               ; preds = %53
  %64 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %6, align 8
  %65 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @QVGA_WIDTH, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %63
  %71 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %6, align 8
  %72 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @QVGA_HEIGHT, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  store i32 90, i32* %9, align 4
  br label %103

78:                                               ; preds = %70, %63
  %79 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %6, align 8
  %80 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @CIF_WIDTH, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %78
  %86 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %6, align 8
  %87 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @CIF_HEIGHT, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  store i32 60, i32* %9, align 4
  br label %102

93:                                               ; preds = %85, %78
  %94 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %6, align 8
  %95 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* @MT9V111_MAX_CLKIN, align 4
  %98 = call i64 @DIV_ROUND_CLOSEST(i32 %97, i32 2)
  %99 = icmp slt i64 %96, %98
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 15, i32 30
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %93, %92
  br label %103

103:                                              ; preds = %102, %77
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp ugt i32 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %103
  %108 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %6, align 8
  %109 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %108, i32 0, i32 3
  %110 = call i32 @mutex_unlock(i32* %109)
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %125

113:                                              ; preds = %103
  %114 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %6, align 8
  %115 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %116 = call i32 @mt9v111_calc_frame_rate(%struct.mt9v111_dev* %114, %struct.v4l2_fract* %115)
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %6, align 8
  %119 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %6, align 8
  %121 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %120, i32 0, i32 2
  store i32 1, i32* %121, align 8
  %122 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %6, align 8
  %123 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %122, i32 0, i32 3
  %124 = call i32 @mutex_unlock(i32* %123)
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %113, %107, %59, %47
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.mt9v111_dev* @sd_to_mt9v111(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @mt9v111_calc_frame_rate(%struct.mt9v111_dev*, %struct.v4l2_fract*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
