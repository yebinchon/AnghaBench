; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c20x.c_sd_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c20x.c_sd_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_2__, %struct.v4l2_ctrl_handler }
%struct.TYPE_2__ = type { %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.sd = type { i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@sd_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_HUE = common dso_local global i32 0, align 4
@V4L2_CID_GAMMA = common dso_local global i32 0, align 4
@V4L2_CID_BLUE_BALANCE = common dso_local global i32 0, align 4
@V4L2_CID_RED_BALANCE = common dso_local global i32 0, align 4
@SENSOR_OV9655 = common dso_local global i64 0, align 8
@SENSOR_SOI968 = common dso_local global i64 0, align 8
@SENSOR_OV7670 = common dso_local global i64 0, align 8
@SENSOR_MT9M001 = common dso_local global i64 0, align 8
@SENSOR_MT9VPRB = common dso_local global i64 0, align 8
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@SENSOR_MT9M112 = common dso_local global i64 0, align 8
@SENSOR_MT9M111 = common dso_local global i64 0, align 8
@SENSOR_MT9V111 = common dso_local global i64 0, align 8
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@V4L2_CID_AUTOGAIN = common dso_local global i32 0, align 4
@V4L2_CID_JPEG_COMPRESSION_QUALITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not initialize controls\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_init_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_init_controls(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca %struct.v4l2_ctrl_handler*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %4, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %8, i32 0, i32 1
  store %struct.v4l2_ctrl_handler* %9, %struct.v4l2_ctrl_handler** %5, align 8
  %10 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %10, %struct.v4l2_ctrl_handler** %13, align 8
  %14 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %15 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %14, i32 13)
  %16 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %17 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %18 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %16, i32* @sd_ctrl_ops, i32 %17, i32 0, i32 255, i32 1, i32 127)
  %19 = load %struct.sd*, %struct.sd** %4, align 8
  %20 = getelementptr inbounds %struct.sd, %struct.sd* %19, i32 0, i32 4
  store i8* %18, i8** %20, align 8
  %21 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %22 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %23 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %21, i32* @sd_ctrl_ops, i32 %22, i32 0, i32 255, i32 1, i32 127)
  %24 = load %struct.sd*, %struct.sd** %4, align 8
  %25 = getelementptr inbounds %struct.sd, %struct.sd* %24, i32 0, i32 13
  store i8* %23, i8** %25, align 8
  %26 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %27 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %28 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %26, i32* @sd_ctrl_ops, i32 %27, i32 0, i32 255, i32 1, i32 127)
  %29 = load %struct.sd*, %struct.sd** %4, align 8
  %30 = getelementptr inbounds %struct.sd, %struct.sd* %29, i32 0, i32 12
  store i8* %28, i8** %30, align 8
  %31 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %32 = load i32, i32* @V4L2_CID_HUE, align 4
  %33 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %31, i32* @sd_ctrl_ops, i32 %32, i32 -180, i32 180, i32 1, i32 0)
  %34 = load %struct.sd*, %struct.sd** %4, align 8
  %35 = getelementptr inbounds %struct.sd, %struct.sd* %34, i32 0, i32 11
  store i8* %33, i8** %35, align 8
  %36 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %37 = load i32, i32* @V4L2_CID_GAMMA, align 4
  %38 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %36, i32* @sd_ctrl_ops, i32 %37, i32 0, i32 255, i32 1, i32 16)
  %39 = load %struct.sd*, %struct.sd** %4, align 8
  %40 = getelementptr inbounds %struct.sd, %struct.sd* %39, i32 0, i32 10
  store i8* %38, i8** %40, align 8
  %41 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %42 = load i32, i32* @V4L2_CID_BLUE_BALANCE, align 4
  %43 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %41, i32* @sd_ctrl_ops, i32 %42, i32 0, i32 127, i32 1, i32 40)
  %44 = load %struct.sd*, %struct.sd** %4, align 8
  %45 = getelementptr inbounds %struct.sd, %struct.sd* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %47 = load i32, i32* @V4L2_CID_RED_BALANCE, align 4
  %48 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %46, i32* @sd_ctrl_ops, i32 %47, i32 0, i32 127, i32 1, i32 40)
  %49 = load %struct.sd*, %struct.sd** %4, align 8
  %50 = getelementptr inbounds %struct.sd, %struct.sd* %49, i32 0, i32 9
  store i8* %48, i8** %50, align 8
  %51 = load %struct.sd*, %struct.sd** %4, align 8
  %52 = getelementptr inbounds %struct.sd, %struct.sd* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SENSOR_OV9655, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %91

56:                                               ; preds = %1
  %57 = load %struct.sd*, %struct.sd** %4, align 8
  %58 = getelementptr inbounds %struct.sd, %struct.sd* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SENSOR_SOI968, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %91

62:                                               ; preds = %56
  %63 = load %struct.sd*, %struct.sd** %4, align 8
  %64 = getelementptr inbounds %struct.sd, %struct.sd* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SENSOR_OV7670, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %91

68:                                               ; preds = %62
  %69 = load %struct.sd*, %struct.sd** %4, align 8
  %70 = getelementptr inbounds %struct.sd, %struct.sd* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SENSOR_MT9M001, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %68
  %75 = load %struct.sd*, %struct.sd** %4, align 8
  %76 = getelementptr inbounds %struct.sd, %struct.sd* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SENSOR_MT9VPRB, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %74
  %81 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %82 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %83 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %81, i32* @sd_ctrl_ops, i32 %82, i32 0, i32 1, i32 1, i32 0)
  %84 = load %struct.sd*, %struct.sd** %4, align 8
  %85 = getelementptr inbounds %struct.sd, %struct.sd* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %87 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %88 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %86, i32* @sd_ctrl_ops, i32 %87, i32 0, i32 1, i32 1, i32 0)
  %89 = load %struct.sd*, %struct.sd** %4, align 8
  %90 = getelementptr inbounds %struct.sd, %struct.sd* %89, i32 0, i32 8
  store i8* %88, i8** %90, align 8
  br label %91

91:                                               ; preds = %80, %74, %68, %62, %56, %1
  %92 = load %struct.sd*, %struct.sd** %4, align 8
  %93 = getelementptr inbounds %struct.sd, %struct.sd* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @SENSOR_SOI968, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %127

97:                                               ; preds = %91
  %98 = load %struct.sd*, %struct.sd** %4, align 8
  %99 = getelementptr inbounds %struct.sd, %struct.sd* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @SENSOR_MT9VPRB, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %127

103:                                              ; preds = %97
  %104 = load %struct.sd*, %struct.sd** %4, align 8
  %105 = getelementptr inbounds %struct.sd, %struct.sd* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @SENSOR_MT9M112, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %127

109:                                              ; preds = %103
  %110 = load %struct.sd*, %struct.sd** %4, align 8
  %111 = getelementptr inbounds %struct.sd, %struct.sd* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @SENSOR_MT9M111, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %127

115:                                              ; preds = %109
  %116 = load %struct.sd*, %struct.sd** %4, align 8
  %117 = getelementptr inbounds %struct.sd, %struct.sd* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @SENSOR_MT9V111, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %115
  %122 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %123 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %124 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %122, i32* @sd_ctrl_ops, i32 %123, i32 0, i32 6016, i32 1, i32 51)
  %125 = load %struct.sd*, %struct.sd** %4, align 8
  %126 = getelementptr inbounds %struct.sd, %struct.sd* %125, i32 0, i32 7
  store i8* %124, i8** %126, align 8
  br label %127

127:                                              ; preds = %121, %115, %109, %103, %97, %91
  %128 = load %struct.sd*, %struct.sd** %4, align 8
  %129 = getelementptr inbounds %struct.sd, %struct.sd* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @SENSOR_MT9VPRB, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %162

133:                                              ; preds = %127
  %134 = load %struct.sd*, %struct.sd** %4, align 8
  %135 = getelementptr inbounds %struct.sd, %struct.sd* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @SENSOR_MT9M112, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %162

139:                                              ; preds = %133
  %140 = load %struct.sd*, %struct.sd** %4, align 8
  %141 = getelementptr inbounds %struct.sd, %struct.sd* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @SENSOR_MT9M111, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %162

145:                                              ; preds = %139
  %146 = load %struct.sd*, %struct.sd** %4, align 8
  %147 = getelementptr inbounds %struct.sd, %struct.sd* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @SENSOR_MT9V111, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %162

151:                                              ; preds = %145
  %152 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %153 = load i32, i32* @V4L2_CID_GAIN, align 4
  %154 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %152, i32* @sd_ctrl_ops, i32 %153, i32 0, i32 28, i32 1, i32 0)
  %155 = load %struct.sd*, %struct.sd** %4, align 8
  %156 = getelementptr inbounds %struct.sd, %struct.sd* %155, i32 0, i32 6
  store i8* %154, i8** %156, align 8
  %157 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %158 = load i32, i32* @V4L2_CID_AUTOGAIN, align 4
  %159 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %157, i32* @sd_ctrl_ops, i32 %158, i32 0, i32 1, i32 1, i32 1)
  %160 = load %struct.sd*, %struct.sd** %4, align 8
  %161 = getelementptr inbounds %struct.sd, %struct.sd* %160, i32 0, i32 1
  store i8* %159, i8** %161, align 8
  br label %162

162:                                              ; preds = %151, %145, %139, %133, %127
  %163 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %164 = load i32, i32* @V4L2_CID_JPEG_COMPRESSION_QUALITY, align 4
  %165 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %163, i32* @sd_ctrl_ops, i32 %164, i32 50, i32 90, i32 1, i32 80)
  %166 = load %struct.sd*, %struct.sd** %4, align 8
  %167 = getelementptr inbounds %struct.sd, %struct.sd* %166, i32 0, i32 5
  store i8* %165, i8** %167, align 8
  %168 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %169 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %162
  %173 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %174 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %175 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %2, align 4
  br label %213

177:                                              ; preds = %162
  %178 = load %struct.sd*, %struct.sd** %4, align 8
  %179 = getelementptr inbounds %struct.sd, %struct.sd* %178, i32 0, i32 4
  %180 = call i32 @v4l2_ctrl_cluster(i32 4, i8** %179)
  %181 = load %struct.sd*, %struct.sd** %4, align 8
  %182 = getelementptr inbounds %struct.sd, %struct.sd* %181, i32 0, i32 3
  %183 = call i32 @v4l2_ctrl_cluster(i32 2, i8** %182)
  %184 = load %struct.sd*, %struct.sd** %4, align 8
  %185 = getelementptr inbounds %struct.sd, %struct.sd* %184, i32 0, i32 2
  %186 = load i8*, i8** %185, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %188, label %192

188:                                              ; preds = %177
  %189 = load %struct.sd*, %struct.sd** %4, align 8
  %190 = getelementptr inbounds %struct.sd, %struct.sd* %189, i32 0, i32 2
  %191 = call i32 @v4l2_ctrl_cluster(i32 2, i8** %190)
  br label %192

192:                                              ; preds = %188, %177
  %193 = load %struct.sd*, %struct.sd** %4, align 8
  %194 = getelementptr inbounds %struct.sd, %struct.sd* %193, i32 0, i32 1
  %195 = load i8*, i8** %194, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %197, label %212

197:                                              ; preds = %192
  %198 = load %struct.sd*, %struct.sd** %4, align 8
  %199 = getelementptr inbounds %struct.sd, %struct.sd* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @SENSOR_SOI968, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %197
  %204 = load %struct.sd*, %struct.sd** %4, align 8
  %205 = getelementptr inbounds %struct.sd, %struct.sd* %204, i32 0, i32 1
  %206 = call i32 @v4l2_ctrl_auto_cluster(i32 3, i8** %205, i32 0, i32 0)
  br label %211

207:                                              ; preds = %197
  %208 = load %struct.sd*, %struct.sd** %4, align 8
  %209 = getelementptr inbounds %struct.sd, %struct.sd* %208, i32 0, i32 1
  %210 = call i32 @v4l2_ctrl_auto_cluster(i32 2, i8** %209, i32 0, i32 0)
  br label %211

211:                                              ; preds = %207, %203
  br label %212

212:                                              ; preds = %211, %192
  store i32 0, i32* %2, align 4
  br label %213

213:                                              ; preds = %212, %172
  %214 = load i32, i32* %2, align 4
  ret i32 %214
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @v4l2_ctrl_cluster(i32, i8**) #1

declare dso_local i32 @v4l2_ctrl_auto_cluster(i32, i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
