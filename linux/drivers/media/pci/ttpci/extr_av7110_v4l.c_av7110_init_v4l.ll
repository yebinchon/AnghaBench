; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_v4l.c_av7110_init_v4l.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_v4l.c_av7110_init_v4l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_ext_vv = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32*, i8*, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i32*, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.av7110 = type { i32, i32, i32, i64, %struct.saa7146_dev* }
%struct.saa7146_dev = type { i32 }

@av7110_vv_data_c = common dso_local global %struct.saa7146_ext_vv zeroinitializer, align 8
@av7110_vv_data_st = common dso_local global %struct.saa7146_ext_vv zeroinitializer, align 8
@.str = private unnamed_addr constant [38 x i8] c"cannot init capture device. skipping\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@vidioc_enum_input = common dso_local global i32 0, align 4
@vidioc_g_input = common dso_local global i32 0, align 4
@vidioc_s_input = common dso_local global i32 0, align 4
@vidioc_g_tuner = common dso_local global i8* null, align 8
@vidioc_s_tuner = common dso_local global i8* null, align 8
@vidioc_g_frequency = common dso_local global i8* null, align 8
@vidioc_s_frequency = common dso_local global i8* null, align 8
@vidioc_enumaudio = common dso_local global i32 0, align 4
@vidioc_g_audio = common dso_local global i32 0, align 4
@vidioc_s_audio = common dso_local global i32 0, align 4
@vidioc_g_sliced_vbi_cap = common dso_local global i32 0, align 4
@vidioc_g_fmt_sliced_vbi_out = common dso_local global i32 0, align 4
@vidioc_s_fmt_sliced_vbi_out = common dso_local global i32 0, align 4
@V4L2_CAP_SLICED_VBI_OUTPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"av7110\00", align 1
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"cannot register capture device. skipping\0A\00", align 1
@VFL_TYPE_VBI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"cannot register vbi v4l2 device. skipping\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av7110_init_v4l(%struct.av7110* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.av7110*, align 8
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca %struct.saa7146_ext_vv*, align 8
  %6 = alloca i32, align 4
  store %struct.av7110* %0, %struct.av7110** %3, align 8
  %7 = load %struct.av7110*, %struct.av7110** %3, align 8
  %8 = getelementptr inbounds %struct.av7110, %struct.av7110* %7, i32 0, i32 4
  %9 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  store %struct.saa7146_dev* %9, %struct.saa7146_dev** %4, align 8
  %10 = load %struct.av7110*, %struct.av7110** %3, align 8
  %11 = getelementptr inbounds %struct.av7110, %struct.av7110* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.saa7146_ext_vv* @av7110_vv_data_c, %struct.saa7146_ext_vv** %5, align 8
  br label %16

15:                                               ; preds = %1
  store %struct.saa7146_ext_vv* @av7110_vv_data_st, %struct.saa7146_ext_vv** %5, align 8
  br label %16

16:                                               ; preds = %15, %14
  %17 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %18 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %19 = call i32 @saa7146_vv_init(%struct.saa7146_dev* %17, %struct.saa7146_ext_vv* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = call i32 @ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %143

26:                                               ; preds = %16
  %27 = load i32, i32* @vidioc_enum_input, align 4
  %28 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %29 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 10
  store i32 %27, i32* %30, align 8
  %31 = load i32, i32* @vidioc_g_input, align 4
  %32 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %33 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 9
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @vidioc_s_input, align 4
  %36 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %37 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 8
  store i32 %35, i32* %38, align 8
  %39 = load i8*, i8** @vidioc_g_tuner, align 8
  %40 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %41 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 7
  store i8* %39, i8** %42, align 8
  %43 = load i8*, i8** @vidioc_s_tuner, align 8
  %44 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %45 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 6
  store i8* %43, i8** %46, align 8
  %47 = load i8*, i8** @vidioc_g_frequency, align 8
  %48 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %49 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 5
  store i8* %47, i8** %50, align 8
  %51 = load i8*, i8** @vidioc_s_frequency, align 8
  %52 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %53 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 4
  store i8* %51, i8** %54, align 8
  %55 = load i32, i32* @vidioc_enumaudio, align 4
  %56 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %57 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  store i32 %55, i32* %58, align 8
  %59 = load i32, i32* @vidioc_g_audio, align 4
  %60 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %61 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @vidioc_s_audio, align 4
  %64 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %65 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 8
  %67 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %68 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i32* null, i32** %69, align 8
  %70 = load i8*, i8** @vidioc_g_tuner, align 8
  %71 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %72 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 7
  store i8* %70, i8** %73, align 8
  %74 = load i8*, i8** @vidioc_s_tuner, align 8
  %75 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %76 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 6
  store i8* %74, i8** %77, align 8
  %78 = load i8*, i8** @vidioc_g_frequency, align 8
  %79 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %80 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 5
  store i8* %78, i8** %81, align 8
  %82 = load i8*, i8** @vidioc_s_frequency, align 8
  %83 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %84 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 4
  store i8* %82, i8** %85, align 8
  %86 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %87 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 3
  store i32* null, i32** %88, align 8
  %89 = load i32, i32* @vidioc_g_sliced_vbi_cap, align 4
  %90 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %91 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  store i32 %89, i32* %92, align 8
  %93 = load i32, i32* @vidioc_g_fmt_sliced_vbi_out, align 4
  %94 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %95 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  store i32 %93, i32* %96, align 4
  %97 = load i32, i32* @vidioc_s_fmt_sliced_vbi_out, align 4
  %98 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %99 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 8
  %101 = load %struct.av7110*, %struct.av7110** %3, align 8
  %102 = getelementptr inbounds %struct.av7110, %struct.av7110* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @FW_VERSION(i32 %103)
  %105 = icmp slt i32 %104, 9763
  br i1 %105, label %106, label %113

106:                                              ; preds = %26
  %107 = load i32, i32* @V4L2_CAP_SLICED_VBI_OUTPUT, align 4
  %108 = xor i32 %107, -1
  %109 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %110 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = and i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %106, %26
  %114 = load %struct.av7110*, %struct.av7110** %3, align 8
  %115 = getelementptr inbounds %struct.av7110, %struct.av7110* %114, i32 0, i32 2
  %116 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %117 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %118 = call i64 @saa7146_register_device(i32* %115, %struct.saa7146_dev* %116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %113
  %121 = call i32 @ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %122 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %123 = call i32 @saa7146_vv_release(%struct.saa7146_dev* %122)
  %124 = load i32, i32* @ENODEV, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %2, align 4
  br label %143

126:                                              ; preds = %113
  %127 = load %struct.av7110*, %struct.av7110** %3, align 8
  %128 = getelementptr inbounds %struct.av7110, %struct.av7110* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @FW_VERSION(i32 %129)
  %131 = icmp sge i32 %130, 9763
  br i1 %131, label %132, label %142

132:                                              ; preds = %126
  %133 = load %struct.av7110*, %struct.av7110** %3, align 8
  %134 = getelementptr inbounds %struct.av7110, %struct.av7110* %133, i32 0, i32 0
  %135 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %136 = load i32, i32* @VFL_TYPE_VBI, align 4
  %137 = call i64 @saa7146_register_device(i32* %134, %struct.saa7146_dev* %135, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %132
  %140 = call i32 @ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %141

141:                                              ; preds = %139, %132
  br label %142

142:                                              ; preds = %141, %126
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %142, %120, %22
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32 @saa7146_vv_init(%struct.saa7146_dev*, %struct.saa7146_ext_vv*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @FW_VERSION(i32) #1

declare dso_local i64 @saa7146_register_device(i32*, %struct.saa7146_dev*, i8*, i32) #1

declare dso_local i32 @saa7146_vv_release(%struct.saa7146_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
