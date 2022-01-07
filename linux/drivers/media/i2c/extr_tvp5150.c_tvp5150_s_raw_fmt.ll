; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_s_raw_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_s_raw_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_vbi_format = type { i64, i32* }
%struct.tvp5150 = type { i32 }

@V4L2_PIX_FMT_GREY = common dso_local global i64 0, align 8
@TVP5150_LUMA_PROC_CTL_1 = common dso_local global i32 0, align 4
@TVP5150_VERT_BLANKING_START = common dso_local global i32 0, align 4
@TVP5150_VERT_BLANKING_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_vbi_format*)* @tvp5150_s_raw_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp5150_s_raw_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_vbi_format* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_vbi_format*, align 8
  %5 = alloca %struct.tvp5150*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_vbi_format* %1, %struct.v4l2_vbi_format** %4, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call %struct.tvp5150* @to_tvp5150(%struct.v4l2_subdev* %6)
  store %struct.tvp5150* %7, %struct.tvp5150** %5, align 8
  %8 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %4, align 8
  %9 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @V4L2_PIX_FMT_GREY, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.tvp5150*, %struct.tvp5150** %5, align 8
  %15 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TVP5150_LUMA_PROC_CTL_1, align 4
  %18 = call i32 @regmap_write(i32 %16, i32 %17, i32 112)
  br label %19

19:                                               ; preds = %13, %2
  %20 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %4, align 8
  %21 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 18
  br i1 %25, label %26, label %44

26:                                               ; preds = %19
  %27 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %4, align 8
  %28 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 18
  br i1 %32, label %33, label %44

33:                                               ; preds = %26
  %34 = load %struct.tvp5150*, %struct.tvp5150** %5, align 8
  %35 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @TVP5150_VERT_BLANKING_START, align 4
  %38 = call i32 @regmap_write(i32 %36, i32 %37, i32 0)
  %39 = load %struct.tvp5150*, %struct.tvp5150** %5, align 8
  %40 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @TVP5150_VERT_BLANKING_STOP, align 4
  %43 = call i32 @regmap_write(i32 %41, i32 %42, i32 1)
  br label %44

44:                                               ; preds = %33, %26, %19
  ret i32 0
}

declare dso_local %struct.tvp5150* @to_tvp5150(%struct.v4l2_subdev*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
