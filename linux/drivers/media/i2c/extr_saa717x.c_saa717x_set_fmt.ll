; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa717x.c_saa717x_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa717x.c_saa717x_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, i64, %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i64, i32, i32, i32, i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"decoder set size\0A\00", align 1
@MEDIA_BUS_FMT_FIXED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@SAA717X_NTSC_WIDTH = common dso_local global i32 0, align 4
@SAA717X_NTSC_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @saa717x_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa717x_set_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %12 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %12, i32 0, i32 2
  store %struct.v4l2_mbus_framefmt* %13, %struct.v4l2_mbus_framefmt** %8, align 8
  %14 = load i32, i32* @debug, align 4
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %16 = call i32 @v4l2_dbg(i32 1, i32 %14, %struct.v4l2_subdev* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %23 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MEDIA_BUS_FMT_FIXED, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21, %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %175

30:                                               ; preds = %21
  %31 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %32 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %37 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %38, 1440
  br i1 %39, label %40, label %43

40:                                               ; preds = %35, %30
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %175

43:                                               ; preds = %35
  %44 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %45 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %50 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %51, 960
  br i1 %52, label %53, label %56

53:                                               ; preds = %48, %43
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %175

56:                                               ; preds = %48
  %57 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %58 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %59 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %61 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %62 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %175

69:                                               ; preds = %56
  %70 = load i32, i32* @SAA717X_NTSC_WIDTH, align 4
  %71 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %72 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = sdiv i32 %70, %73
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  store i32 1, i32* %9, align 4
  br label %78

78:                                               ; preds = %77, %69
  %79 = load i32, i32* @SAA717X_NTSC_WIDTH, align 4
  %80 = mul nsw i32 1024, %79
  %81 = load i32, i32* %9, align 4
  %82 = sdiv i32 %80, %81
  %83 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %84 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = sdiv i32 %82, %85
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* @SAA717X_NTSC_HEIGHT, align 4
  %88 = mul nsw i32 1024, %87
  %89 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %90 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = sdiv i32 %88, %91
  store i32 %92, i32* %11, align 4
  %93 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @set_h_prescale(%struct.v4l2_subdev* %93, i32 0, i32 %94)
  %96 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @set_h_prescale(%struct.v4l2_subdev* %96, i32 1, i32 %97)
  %99 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %100 = load i32, i32* %10, align 4
  %101 = and i32 %100, 255
  %102 = call i32 @saa717x_write(%struct.v4l2_subdev* %99, i32 108, i32 %101)
  %103 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %104 = load i32, i32* %10, align 4
  %105 = ashr i32 %104, 8
  %106 = and i32 %105, 255
  %107 = call i32 @saa717x_write(%struct.v4l2_subdev* %103, i32 109, i32 %106)
  %108 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %109 = load i32, i32* %10, align 4
  %110 = and i32 %109, 255
  %111 = call i32 @saa717x_write(%struct.v4l2_subdev* %108, i32 172, i32 %110)
  %112 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %113 = load i32, i32* %10, align 4
  %114 = ashr i32 %113, 8
  %115 = and i32 %114, 255
  %116 = call i32 @saa717x_write(%struct.v4l2_subdev* %112, i32 173, i32 %115)
  %117 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @set_v_scale(%struct.v4l2_subdev* %117, i32 0, i32 %118)
  %120 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @set_v_scale(%struct.v4l2_subdev* %120, i32 1, i32 %121)
  %123 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %124 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %125 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %126, 255
  %128 = call i32 @saa717x_write(%struct.v4l2_subdev* %123, i32 92, i32 %127)
  %129 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %130 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %131 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = ashr i32 %132, 8
  %134 = and i32 %133, 255
  %135 = call i32 @saa717x_write(%struct.v4l2_subdev* %129, i32 93, i32 %134)
  %136 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %137 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %138 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = and i32 %139, 255
  %141 = call i32 @saa717x_write(%struct.v4l2_subdev* %136, i32 156, i32 %140)
  %142 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %143 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %144 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = ashr i32 %145, 8
  %147 = and i32 %146, 255
  %148 = call i32 @saa717x_write(%struct.v4l2_subdev* %142, i32 157, i32 %147)
  %149 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %150 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %151 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 255
  %154 = call i32 @saa717x_write(%struct.v4l2_subdev* %149, i32 94, i32 %153)
  %155 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %156 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %157 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = ashr i32 %158, 8
  %160 = and i32 %159, 255
  %161 = call i32 @saa717x_write(%struct.v4l2_subdev* %155, i32 95, i32 %160)
  %162 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %163 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %164 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, 255
  %167 = call i32 @saa717x_write(%struct.v4l2_subdev* %162, i32 158, i32 %166)
  %168 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %169 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %170 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = ashr i32 %171, 8
  %173 = and i32 %172, 255
  %174 = call i32 @saa717x_write(%struct.v4l2_subdev* %168, i32 159, i32 %173)
  store i32 0, i32* %4, align 4
  br label %175

175:                                              ; preds = %78, %68, %53, %40, %27
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @set_h_prescale(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @saa717x_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @set_v_scale(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
