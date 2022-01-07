; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-radio-rx.c_vivid_radio_rx_g_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-radio-rx.c_vivid_radio_rx_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_tuner = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vivid_dev = type { i32, i32, i64, i32, i32, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"AM/FM/SW Receiver\00", align 1
@V4L2_TUNER_CAP_LOW = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_FREQ_BANDS = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_RDS = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_RDS_CONTROLS = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_RDS_BLOCK_IO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_HWSEEK_PROG_LIM = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_HWSEEK_BOUNDED = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_HWSEEK_WRAP = common dso_local global i32 0, align 4
@AM_FREQ_RANGE_LOW = common dso_local global i32 0, align 4
@FM_FREQ_RANGE_HIGH = common dso_local global i32 0, align 4
@FM_FREQ_RANGE_LOW = common dso_local global i64 0, align 8
@V4L2_TUNER_SUB_MONO = common dso_local global i8* null, align 8
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_RDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vivid_radio_rx_g_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.vivid_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.vivid_dev* @video_drvdata(%struct.file* %11)
  store %struct.vivid_dev* %12, %struct.vivid_dev** %8, align 8
  store i32 800, i32* %9, align 4
  %13 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %208

20:                                               ; preds = %3
  %21 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @strscpy(i32 %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 4)
  %25 = load i32, i32* @V4L2_TUNER_CAP_LOW, align 4
  %26 = load i32, i32* @V4L2_TUNER_CAP_STEREO, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @V4L2_TUNER_CAP_FREQ_BANDS, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @V4L2_TUNER_CAP_RDS, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %33 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %20
  %37 = load i32, i32* @V4L2_TUNER_CAP_RDS_CONTROLS, align 4
  br label %40

38:                                               ; preds = %20
  %39 = load i32, i32* @V4L2_TUNER_CAP_RDS_BLOCK_IO, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = or i32 %31, %41
  %43 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %44 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %43, i32 0, i32 8
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @V4L2_TUNER_CAP_HWSEEK_PROG_LIM, align 4
  br label %50

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  %52 = or i32 %42, %51
  %53 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %56 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %78 [
    i32 129, label %58
    i32 128, label %64
    i32 130, label %70
  ]

58:                                               ; preds = %50
  %59 = load i32, i32* @V4L2_TUNER_CAP_HWSEEK_BOUNDED, align 4
  %60 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %61 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %78

64:                                               ; preds = %50
  %65 = load i32, i32* @V4L2_TUNER_CAP_HWSEEK_WRAP, align 4
  %66 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %78

70:                                               ; preds = %50
  %71 = load i32, i32* @V4L2_TUNER_CAP_HWSEEK_WRAP, align 4
  %72 = load i32, i32* @V4L2_TUNER_CAP_HWSEEK_BOUNDED, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %75 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %50, %70, %64, %58
  %79 = load i32, i32* @AM_FREQ_RANGE_LOW, align 4
  %80 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %81 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %80, i32 0, i32 7
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* @FM_FREQ_RANGE_HIGH, align 4
  %83 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %84 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 4
  %85 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %86 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @abs(i32 %88) #3
  %90 = load i32, i32* %9, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %78
  br label %100

93:                                               ; preds = %78
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @abs(i32 %94) #3
  %96 = mul i32 %95, 65535
  %97 = load i32, i32* %9, align 4
  %98 = udiv i32 %96, %97
  %99 = sub i32 65535, %98
  br label %100

100:                                              ; preds = %93, %92
  %101 = phi i32 [ 0, %92 ], [ %99, %93 ]
  %102 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %103 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %110

108:                                              ; preds = %100
  %109 = load i32, i32* %10, align 4
  br label %110

110:                                              ; preds = %108, %107
  %111 = phi i32 [ 0, %107 ], [ %109, %108 ]
  %112 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %113 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @abs(i32 %114) #3
  %116 = load i32, i32* %9, align 4
  %117 = icmp sgt i32 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %110
  %119 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %120 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %119, i32 0, i32 4
  store i32 0, i32* %120, align 4
  br label %160

121:                                              ; preds = %110
  %122 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %123 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @FM_FREQ_RANGE_LOW, align 8
  %126 = icmp slt i64 %124, %125
  br i1 %126, label %132, label %127

127:                                              ; preds = %121
  %128 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %129 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = icmp slt i32 %130, 32768
  br i1 %131, label %132, label %137

132:                                              ; preds = %127, %121
  %133 = load i8*, i8** @V4L2_TUNER_SUB_MONO, align 8
  %134 = ptrtoint i8* %133 to i32
  %135 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %136 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 4
  br label %159

137:                                              ; preds = %127
  %138 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %139 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %138, i32 0, i32 6
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %154

142:                                              ; preds = %137
  %143 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %144 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %142
  %150 = load i8*, i8** @V4L2_TUNER_SUB_MONO, align 8
  %151 = ptrtoint i8* %150 to i32
  %152 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %153 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %152, i32 0, i32 4
  store i32 %151, i32* %153, align 4
  br label %158

154:                                              ; preds = %142, %137
  %155 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %156 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %157 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %156, i32 0, i32 4
  store i32 %155, i32* %157, align 4
  br label %158

158:                                              ; preds = %154, %149
  br label %159

159:                                              ; preds = %158, %132
  br label %160

160:                                              ; preds = %159, %118
  %161 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %162 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %161, i32 0, i32 7
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %194

165:                                              ; preds = %160
  %166 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %167 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %166, i32 0, i32 6
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %165
  %171 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %172 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @V4L2_TUNER_SUB_RDS, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %194

177:                                              ; preds = %170, %165
  %178 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %179 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @FM_FREQ_RANGE_LOW, align 8
  %182 = icmp sge i64 %180, %181
  br i1 %182, label %183, label %194

183:                                              ; preds = %177
  %184 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %185 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = icmp sge i32 %186, 49152
  br i1 %187, label %188, label %194

188:                                              ; preds = %183
  %189 = load i32, i32* @V4L2_TUNER_SUB_RDS, align 4
  %190 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %191 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 4
  br label %194

194:                                              ; preds = %188, %183, %177, %170, %160
  %195 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %196 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %195, i32 0, i32 5
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %194
  %200 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %201 = call i32 @vivid_radio_rds_init(%struct.vivid_dev* %200)
  br label %202

202:                                              ; preds = %199, %194
  %203 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %204 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %207 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %206, i32 0, i32 5
  store i32 %205, i32* %207, align 8
  store i32 0, i32* %4, align 4
  br label %208

208:                                              ; preds = %202, %17
  %209 = load i32, i32* %4, align 4
  ret i32 %209
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @vivid_radio_rds_init(%struct.vivid_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
