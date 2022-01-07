; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-video.c_cx231xx_s_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-video.c_cx231xx_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i32, i64, i32 }
%struct.cx231xx_fh = type { %struct.cx231xx* }
%struct.cx231xx = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"Enter vidioc_s_frequency()f->frequency=%d;f->type=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@s_frequency = common dso_local global i32 0, align 4
@g_frequency = common dso_local global i32 0, align 4
@TUNER_NXP_TDA18271 = common dso_local global i64 0, align 8
@V4L2_STD_MN = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_443 = common dso_local global i32 0, align 4
@V4L2_STD_B = common dso_local global i32 0, align 4
@V4L2_STD_PAL_DK = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_DK = common dso_local global i32 0, align 4
@V4L2_STD_GH = common dso_local global i32 0, align 4
@V4L2_STD_PAL_I = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_L = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_LC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"if_frequency is set to %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Set New FREQUENCY to %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_s_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency*, align 8
  %8 = alloca %struct.cx231xx_fh*, align 8
  %9 = alloca %struct.cx231xx*, align 8
  %10 = alloca %struct.v4l2_frequency, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.cx231xx_fh*
  store %struct.cx231xx_fh* %14, %struct.cx231xx_fh** %8, align 8
  %15 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %16 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %15, i32 0, i32 0
  %17 = load %struct.cx231xx*, %struct.cx231xx** %16, align 8
  store %struct.cx231xx* %17, %struct.cx231xx** %9, align 8
  %18 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %19 = bitcast %struct.v4l2_frequency* %10 to i8*
  %20 = bitcast %struct.v4l2_frequency* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 24, i1 false)
  store i32 5400000, i32* %12, align 4
  %21 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %22 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %23, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29)
  %31 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %32 = call i32 @check_dev(%struct.cx231xx* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %4, align 4
  br label %154

37:                                               ; preds = %3
  %38 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 0, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %154

45:                                               ; preds = %37
  %46 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %47 = call i32 @cx231xx_tuner_pre_channel_change(%struct.cx231xx* %46)
  store i32 %47, i32* %11, align 4
  %48 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %49 = load i32, i32* @tuner, align 4
  %50 = load i32, i32* @s_frequency, align 4
  %51 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %52 = call i32 @call_all(%struct.cx231xx* %48, i32 %49, i32 %50, %struct.v4l2_frequency* %51)
  %53 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %54 = load i32, i32* @tuner, align 4
  %55 = load i32, i32* @g_frequency, align 4
  %56 = call i32 @call_all(%struct.cx231xx* %53, i32 %54, i32 %55, %struct.v4l2_frequency* %10)
  %57 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %10, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %60 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %62 = call i32 @cx231xx_tuner_post_channel_change(%struct.cx231xx* %61)
  store i32 %62, i32* %11, align 4
  %63 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %64 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @TUNER_NXP_TDA18271, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %145

68:                                               ; preds = %45
  %69 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %70 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @V4L2_STD_MN, align 4
  %73 = load i32, i32* @V4L2_STD_NTSC_443, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %71, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  store i32 5400000, i32* %12, align 4
  br label %134

78:                                               ; preds = %68
  %79 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %80 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @V4L2_STD_B, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  store i32 6000000, i32* %12, align 4
  br label %133

86:                                               ; preds = %78
  %87 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %88 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @V4L2_STD_PAL_DK, align 4
  %91 = load i32, i32* @V4L2_STD_SECAM_DK, align 4
  %92 = or i32 %90, %91
  %93 = and i32 %89, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  store i32 6900000, i32* %12, align 4
  br label %132

96:                                               ; preds = %86
  %97 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %98 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @V4L2_STD_GH, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  store i32 7100000, i32* %12, align 4
  br label %131

104:                                              ; preds = %96
  %105 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %106 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @V4L2_STD_PAL_I, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  store i32 7250000, i32* %12, align 4
  br label %130

112:                                              ; preds = %104
  %113 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %114 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @V4L2_STD_SECAM_L, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  store i32 6900000, i32* %12, align 4
  br label %129

120:                                              ; preds = %112
  %121 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %122 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @V4L2_STD_SECAM_LC, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  store i32 1250000, i32* %12, align 4
  br label %128

128:                                              ; preds = %127, %120
  br label %129

129:                                              ; preds = %128, %119
  br label %130

130:                                              ; preds = %129, %111
  br label %131

131:                                              ; preds = %130, %103
  br label %132

132:                                              ; preds = %131, %95
  br label %133

133:                                              ; preds = %132, %85
  br label %134

134:                                              ; preds = %133, %77
  %135 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %136 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %12, align 4
  %139 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %137, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %138)
  %140 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @cx231xx_set_Colibri_For_LowIF(%struct.cx231xx* %140, i32 %141, i32 1, i32 1)
  %143 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %144 = call i32 @update_HH_register_after_set_DIF(%struct.cx231xx* %143)
  br label %145

145:                                              ; preds = %134, %45
  %146 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %147 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %150 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %148, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* %11, align 4
  store i32 %153, i32* %4, align 4
  br label %154

154:                                              ; preds = %145, %42, %35
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #2

declare dso_local i32 @check_dev(%struct.cx231xx*) #2

declare dso_local i32 @cx231xx_tuner_pre_channel_change(%struct.cx231xx*) #2

declare dso_local i32 @call_all(%struct.cx231xx*, i32, i32, %struct.v4l2_frequency*) #2

declare dso_local i32 @cx231xx_tuner_post_channel_change(%struct.cx231xx*) #2

declare dso_local i32 @cx231xx_set_Colibri_For_LowIF(%struct.cx231xx*, i32, i32, i32) #2

declare dso_local i32 @update_HH_register_after_set_DIF(%struct.cx231xx*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
