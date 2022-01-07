; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov6650.c_ov6650_s_frame_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov6650.c_ov6650_s_frame_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_frame_interval = type { %struct.v4l2_fract }
%struct.v4l2_fract = type { i32, i32 }
%struct.i2c_client = type { i32 }
%struct.ov6650 = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@FRAME_RATE_MAX = common dso_local global i32 0, align 4
@CLKRC_DIV_MASK = common dso_local global i32 0, align 4
@REG_CLKRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_frame_interval*)* @ov6650_s_frame_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov6650_s_frame_interval(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_frame_interval* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_subdev_frame_interval*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.ov6650*, align 8
  %7 = alloca %struct.v4l2_fract*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_subdev_frame_interval* %1, %struct.v4l2_subdev_frame_interval** %4, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %12 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %14 = call %struct.ov6650* @to_ov6650(%struct.i2c_client* %13)
  store %struct.ov6650* %14, %struct.ov6650** %6, align 8
  %15 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %4, align 8
  %16 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %15, i32 0, i32 0
  store %struct.v4l2_fract* %16, %struct.v4l2_fract** %7, align 8
  %17 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %2
  store i32 1, i32* %8, align 4
  br label %37

27:                                               ; preds = %21
  %28 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @FRAME_RATE_MAX, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %32, %35
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %27, %26
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 1, i32* %8, align 4
  br label %50

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @CLKRC_DIV_MASK, align 4
  %44 = call i32 @GET_CLKRC_DIV(i32 %43)
  %45 = icmp sgt i32 %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @CLKRC_DIV_MASK, align 4
  %48 = call i32 @GET_CLKRC_DIV(i32 %47)
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %46, %41
  br label %50

50:                                               ; preds = %49, %40
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %53 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @FRAME_RATE_MAX, align 4
  %56 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %57 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %60 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %59, i32 0, i32 2
  %61 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %62 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %65 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @to_clkrc(%struct.TYPE_2__* %60, i32 %63, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %69 = load i32, i32* @REG_CLKRC, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @CLKRC_DIV_MASK, align 4
  %72 = call i32 @ov6650_reg_rmw(%struct.i2c_client* %68, i32 %69, i32 %70, i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %50
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @GET_CLKRC_DIV(i32 %76)
  %78 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %79 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @FRAME_RATE_MAX, align 4
  %81 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %82 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %75, %50
  %84 = load i32, i32* %9, align 4
  ret i32 %84
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.ov6650* @to_ov6650(%struct.i2c_client*) #1

declare dso_local i32 @GET_CLKRC_DIV(i32) #1

declare dso_local i32 @to_clkrc(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @ov6650_reg_rmw(%struct.i2c_client*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
