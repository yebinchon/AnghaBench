; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-si476x.c_si476x_radio_s_hw_freq_seek.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-si476x.c_si476x_radio_s_hw_freq_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_hw_freq_seek = type { i64, i64, i64, i64, i64, i32, i32 }
%struct.si476x_radio = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*, i32, i32)* }

@O_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@V4L2_TUNER_RADIO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SI476X_PROP_SEEK_BAND_BOTTOM = common dso_local global i32 0, align 4
@SI476X_PROP_SEEK_BAND_TOP = common dso_local global i32 0, align 4
@SI476X_BAND_FM = common dso_local global i32 0, align 4
@SI476X_FUNC_FM_RECEIVER = common dso_local global i32 0, align 4
@SI476X_BAND_AM = common dso_local global i32 0, align 4
@SI476X_FUNC_AM_RECEIVER = common dso_local global i32 0, align 4
@SI476X_PROP_SEEK_FREQUENCY_SPACING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_hw_freq_seek*)* @si476x_radio_s_hw_freq_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si476x_radio_s_hw_freq_seek(%struct.file* %0, i8* %1, %struct.v4l2_hw_freq_seek* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_hw_freq_seek*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.si476x_radio*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_hw_freq_seek* %2, %struct.v4l2_hw_freq_seek** %7, align 8
  %13 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %10, align 8
  %16 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %11, align 8
  %19 = load %struct.file*, %struct.file** %5, align 8
  %20 = call %struct.si476x_radio* @video_drvdata(%struct.file* %19)
  store %struct.si476x_radio* %20, %struct.si476x_radio** %12, align 8
  %21 = load %struct.file*, %struct.file** %5, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @O_NONBLOCK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EAGAIN, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %222

30:                                               ; preds = %3
  %31 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @V4L2_TUNER_RADIO, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35, %30
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %222

44:                                               ; preds = %35
  %45 = load %struct.si476x_radio*, %struct.si476x_radio** %12, align 8
  %46 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %45, i32 0, i32 0
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = call i32 @si476x_core_lock(%struct.TYPE_9__* %47)
  %49 = load i64, i64* %10, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %68, label %51

51:                                               ; preds = %44
  %52 = load %struct.si476x_radio*, %struct.si476x_radio** %12, align 8
  %53 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %52, i32 0, i32 0
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SI476X_PROP_SEEK_BAND_BOTTOM, align 4
  %58 = call i32 @regmap_read(i32 %56, i32 %57, i64* %10)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %216

62:                                               ; preds = %51
  %63 = load %struct.si476x_radio*, %struct.si476x_radio** %12, align 8
  %64 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %63, i32 0, i32 0
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = load i64, i64* %10, align 8
  %67 = call i64 @si476x_to_v4l2(%struct.TYPE_9__* %65, i64 %66)
  store i64 %67, i64* %10, align 8
  br label %68

68:                                               ; preds = %62, %44
  %69 = load i64, i64* %11, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %88, label %71

71:                                               ; preds = %68
  %72 = load %struct.si476x_radio*, %struct.si476x_radio** %12, align 8
  %73 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %72, i32 0, i32 0
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @SI476X_PROP_SEEK_BAND_TOP, align 4
  %78 = call i32 @regmap_read(i32 %76, i32 %77, i64* %11)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  br label %216

82:                                               ; preds = %71
  %83 = load %struct.si476x_radio*, %struct.si476x_radio** %12, align 8
  %84 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %83, i32 0, i32 0
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = load i64, i64* %11, align 8
  %87 = call i64 @si476x_to_v4l2(%struct.TYPE_9__* %85, i64 %86)
  store i64 %87, i64* %11, align 8
  br label %88

88:                                               ; preds = %82, %68
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* %11, align 8
  %91 = icmp sgt i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %8, align 4
  br label %216

95:                                               ; preds = %88
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* %11, align 8
  %98 = load i32, i32* @SI476X_BAND_FM, align 4
  %99 = call i64 @si476x_radio_range_is_inside_of_the_band(i64 %96, i64 %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* @SI476X_FUNC_FM_RECEIVER, align 4
  store i32 %102, i32* %9, align 4
  br label %121

103:                                              ; preds = %95
  %104 = load %struct.si476x_radio*, %struct.si476x_radio** %12, align 8
  %105 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %104, i32 0, i32 0
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = call i64 @si476x_core_has_am(%struct.TYPE_9__* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %103
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* %11, align 8
  %112 = load i32, i32* @SI476X_BAND_AM, align 4
  %113 = call i64 @si476x_radio_range_is_inside_of_the_band(i64 %110, i64 %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i32, i32* @SI476X_FUNC_AM_RECEIVER, align 4
  store i32 %116, i32* %9, align 4
  br label %120

117:                                              ; preds = %109, %103
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %8, align 4
  br label %216

120:                                              ; preds = %115
  br label %121

121:                                              ; preds = %120, %101
  %122 = load %struct.si476x_radio*, %struct.si476x_radio** %12, align 8
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @si476x_radio_change_func(%struct.si476x_radio* %122, i32 %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  br label %216

128:                                              ; preds = %121
  %129 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %130 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %152

133:                                              ; preds = %128
  %134 = load %struct.si476x_radio*, %struct.si476x_radio** %12, align 8
  %135 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %134, i32 0, i32 0
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @SI476X_PROP_SEEK_BAND_TOP, align 4
  %140 = load %struct.si476x_radio*, %struct.si476x_radio** %12, align 8
  %141 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %140, i32 0, i32 0
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %144 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @v4l2_to_si476x(%struct.TYPE_9__* %142, i64 %145)
  %147 = call i32 @regmap_write(i32 %138, i32 %139, i32 %146)
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %133
  br label %216

151:                                              ; preds = %133
  br label %152

152:                                              ; preds = %151, %128
  %153 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %154 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %176

157:                                              ; preds = %152
  %158 = load %struct.si476x_radio*, %struct.si476x_radio** %12, align 8
  %159 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %158, i32 0, i32 0
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @SI476X_PROP_SEEK_BAND_BOTTOM, align 4
  %164 = load %struct.si476x_radio*, %struct.si476x_radio** %12, align 8
  %165 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %164, i32 0, i32 0
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %168 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @v4l2_to_si476x(%struct.TYPE_9__* %166, i64 %169)
  %171 = call i32 @regmap_write(i32 %162, i32 %163, i32 %170)
  store i32 %171, i32* %8, align 4
  %172 = load i32, i32* %8, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %157
  br label %216

175:                                              ; preds = %157
  br label %176

176:                                              ; preds = %175, %152
  %177 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %178 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %177, i32 0, i32 4
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %200

181:                                              ; preds = %176
  %182 = load %struct.si476x_radio*, %struct.si476x_radio** %12, align 8
  %183 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %182, i32 0, i32 0
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @SI476X_PROP_SEEK_FREQUENCY_SPACING, align 4
  %188 = load %struct.si476x_radio*, %struct.si476x_radio** %12, align 8
  %189 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %188, i32 0, i32 0
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %189, align 8
  %191 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %192 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @v4l2_to_si476x(%struct.TYPE_9__* %190, i64 %193)
  %195 = call i32 @regmap_write(i32 %186, i32 %187, i32 %194)
  store i32 %195, i32* %8, align 4
  %196 = load i32, i32* %8, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %181
  br label %216

199:                                              ; preds = %181
  br label %200

200:                                              ; preds = %199, %176
  %201 = load %struct.si476x_radio*, %struct.si476x_radio** %12, align 8
  %202 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %201, i32 0, i32 1
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  %205 = load i32 (%struct.TYPE_9__*, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32)** %204, align 8
  %206 = load %struct.si476x_radio*, %struct.si476x_radio** %12, align 8
  %207 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %206, i32 0, i32 0
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %207, align 8
  %209 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %210 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %209, i32 0, i32 6
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %213 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 8
  %215 = call i32 %205(%struct.TYPE_9__* %208, i32 %211, i32 %214)
  store i32 %215, i32* %8, align 4
  br label %216

216:                                              ; preds = %200, %198, %174, %150, %127, %117, %92, %81, %61
  %217 = load %struct.si476x_radio*, %struct.si476x_radio** %12, align 8
  %218 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %217, i32 0, i32 0
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %218, align 8
  %220 = call i32 @si476x_core_unlock(%struct.TYPE_9__* %219)
  %221 = load i32, i32* %8, align 4
  store i32 %221, i32* %4, align 4
  br label %222

222:                                              ; preds = %216, %41, %27
  %223 = load i32, i32* %4, align 4
  ret i32 %223
}

declare dso_local %struct.si476x_radio* @video_drvdata(%struct.file*) #1

declare dso_local i32 @si476x_core_lock(%struct.TYPE_9__*) #1

declare dso_local i32 @regmap_read(i32, i32, i64*) #1

declare dso_local i64 @si476x_to_v4l2(%struct.TYPE_9__*, i64) #1

declare dso_local i64 @si476x_radio_range_is_inside_of_the_band(i64, i64, i32) #1

declare dso_local i64 @si476x_core_has_am(%struct.TYPE_9__*) #1

declare dso_local i32 @si476x_radio_change_func(%struct.si476x_radio*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @v4l2_to_si476x(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @si476x_core_unlock(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
