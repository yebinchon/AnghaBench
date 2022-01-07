; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-av-core.c_cx18_av_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-av-core.c_cx18_av_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, i64, %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i64, i32, i32, i32, i32 }
%struct.cx18_av_state = type { i32 }
%struct.cx18 = type { i32 }

@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_FIXED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%dx%d is not a valid size!\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"decoder set size %dx%d -> scale  %ux%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @cx18_av_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_av_set_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %9 = alloca %struct.cx18_av_state*, align 8
  %10 = alloca %struct.cx18*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %18 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %18, i32 0, i32 2
  store %struct.v4l2_mbus_framefmt* %19, %struct.v4l2_mbus_framefmt** %8, align 8
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %21 = call %struct.cx18_av_state* @to_cx18_av_state(%struct.v4l2_subdev* %20)
  store %struct.cx18_av_state* %21, %struct.cx18_av_state** %9, align 8
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %23 = call %struct.cx18* @v4l2_get_subdevdata(%struct.v4l2_subdev* %22)
  store %struct.cx18* %23, %struct.cx18** %10, align 8
  %24 = load %struct.cx18_av_state*, %struct.cx18_av_state** %9, align 8
  %25 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @V4L2_STD_525_60, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %17, align 4
  %32 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %3
  %37 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %38 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MEDIA_BUS_FMT_FIXED, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36, %3
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %191

45:                                               ; preds = %36
  %46 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %47 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %48 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %50 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %51 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.cx18*, %struct.cx18** %10, align 8
  %53 = call i32 @cx18_av_read(%struct.cx18* %52, i32 1142)
  %54 = and i32 %53, 63
  %55 = shl i32 %54, 4
  store i32 %55, i32* %13, align 4
  %56 = load %struct.cx18*, %struct.cx18** %10, align 8
  %57 = call i32 @cx18_av_read(%struct.cx18* %56, i32 1141)
  %58 = and i32 %57, 240
  %59 = ashr i32 %58, 4
  %60 = load i32, i32* %13, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %13, align 4
  %62 = load %struct.cx18*, %struct.cx18** %10, align 8
  %63 = call i32 @cx18_av_read(%struct.cx18* %62, i32 1138)
  %64 = and i32 %63, 63
  %65 = shl i32 %64, 4
  store i32 %65, i32* %14, align 4
  %66 = load %struct.cx18*, %struct.cx18** %10, align 8
  %67 = call i32 @cx18_av_read(%struct.cx18* %66, i32 1137)
  %68 = and i32 %67, 240
  %69 = ashr i32 %68, 4
  %70 = load i32, i32* %14, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %14, align 4
  %72 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %73 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %17, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 3, i32 1
  %79 = add nsw i32 %74, %78
  store i32 %79, i32* %16, align 4
  %80 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %81 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %82, 16
  %84 = load i32, i32* %14, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %101, label %86

86:                                               ; preds = %45
  %87 = load i32, i32* %14, align 4
  %88 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %89 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %101, label %92

92:                                               ; preds = %86
  %93 = load i32, i32* %16, align 4
  %94 = mul nsw i32 %93, 8
  %95 = load i32, i32* %13, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %16, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %97, %92, %86, %45
  %102 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %103 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %104 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %107 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @CX18_ERR_DEV(%struct.v4l2_subdev* %102, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %105, i32 %108)
  %110 = load i32, i32* @ERANGE, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %191

112:                                              ; preds = %97
  %113 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %114 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  store i32 0, i32* %4, align 4
  br label %191

119:                                              ; preds = %112
  %120 = load i32, i32* %14, align 4
  %121 = mul nsw i32 %120, 1048576
  %122 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %123 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = sdiv i32 %121, %124
  %126 = sub nsw i32 %125, 1048576
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %13, align 4
  %128 = mul nsw i32 %127, 512
  %129 = load i32, i32* %16, align 4
  %130 = sdiv i32 %128, %129
  %131 = sub nsw i32 %130, 512
  %132 = sub nsw i32 65536, %131
  store i32 %132, i32* %12, align 4
  %133 = load i32, i32* %12, align 4
  %134 = and i32 %133, 8191
  store i32 %134, i32* %12, align 4
  %135 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %136 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = icmp sge i32 %137, 385
  br i1 %138, label %139, label %140

139:                                              ; preds = %119
  store i32 0, i32* %15, align 4
  br label %155

140:                                              ; preds = %119
  %141 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %142 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = icmp sgt i32 %143, 192
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  store i32 1, i32* %15, align 4
  br label %154

146:                                              ; preds = %140
  %147 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %148 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = icmp sgt i32 %149, 96
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  store i32 2, i32* %15, align 4
  br label %153

152:                                              ; preds = %146
  store i32 3, i32* %15, align 4
  br label %153

153:                                              ; preds = %152, %151
  br label %154

154:                                              ; preds = %153, %145
  br label %155

155:                                              ; preds = %154, %139
  %156 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %157 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %158 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %161 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* %12, align 4
  %165 = call i32 @CX18_DEBUG_INFO_DEV(%struct.v4l2_subdev* %156, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %159, i32 %162, i32 %163, i32 %164)
  %166 = load %struct.cx18*, %struct.cx18** %10, align 8
  %167 = load i32, i32* %11, align 4
  %168 = and i32 %167, 255
  %169 = call i32 @cx18_av_write(%struct.cx18* %166, i32 1048, i32 %168)
  %170 = load %struct.cx18*, %struct.cx18** %10, align 8
  %171 = load i32, i32* %11, align 4
  %172 = ashr i32 %171, 8
  %173 = and i32 %172, 255
  %174 = call i32 @cx18_av_write(%struct.cx18* %170, i32 1049, i32 %173)
  %175 = load %struct.cx18*, %struct.cx18** %10, align 8
  %176 = load i32, i32* %11, align 4
  %177 = ashr i32 %176, 16
  %178 = call i32 @cx18_av_write(%struct.cx18* %175, i32 1050, i32 %177)
  %179 = load %struct.cx18*, %struct.cx18** %10, align 8
  %180 = load i32, i32* %12, align 4
  %181 = and i32 %180, 255
  %182 = call i32 @cx18_av_write(%struct.cx18* %179, i32 1052, i32 %181)
  %183 = load %struct.cx18*, %struct.cx18** %10, align 8
  %184 = load i32, i32* %12, align 4
  %185 = ashr i32 %184, 8
  %186 = call i32 @cx18_av_write(%struct.cx18* %183, i32 1053, i32 %185)
  %187 = load %struct.cx18*, %struct.cx18** %10, align 8
  %188 = load i32, i32* %15, align 4
  %189 = or i32 8, %188
  %190 = call i32 @cx18_av_write(%struct.cx18* %187, i32 1054, i32 %189)
  store i32 0, i32* %4, align 4
  br label %191

191:                                              ; preds = %155, %118, %101, %42
  %192 = load i32, i32* %4, align 4
  ret i32 %192
}

declare dso_local %struct.cx18_av_state* @to_cx18_av_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.cx18* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @cx18_av_read(%struct.cx18*, i32) #1

declare dso_local i32 @CX18_ERR_DEV(%struct.v4l2_subdev*, i8*, i32, i32) #1

declare dso_local i32 @CX18_DEBUG_INFO_DEV(%struct.v4l2_subdev*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @cx18_av_write(%struct.cx18*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
