; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_sd_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_sd_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.gspca_dev = type { i8*, i8*, %struct.TYPE_3__, %struct.v4l2_ctrl_handler }
%struct.TYPE_3__ = type { %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.sd = type { i64, i64, i8*, i8*, i8*, i8*, i8*, i8* }

@valid_controls = common dso_local global %struct.TYPE_4__* null, align 8
@sd_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@SEN_OV7660 = common dso_local global i64 0, align 8
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@SEN_OV6630 = common dso_local global i64 0, align 8
@SEN_OV66308AF = common dso_local global i64 0, align 8
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@V4L2_CID_AUTOBRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_AUTOGAIN = common dso_local global i32 0, align 4
@SEN_OV7670 = common dso_local global i64 0, align 8
@V4L2_CID_POWER_LINE_FREQUENCY = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY_AUTO = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY_60HZ = common dso_local global i32 0, align 4
@BRIDGE_W9968CF = common dso_local global i64 0, align 8
@V4L2_CID_JPEG_COMPRESSION_QUALITY = common dso_local global i32 0, align 4
@QUALITY_MIN = common dso_local global i32 0, align 4
@QUALITY_MAX = common dso_local global i32 0, align 4
@QUALITY_DEF = common dso_local global i32 0, align 4
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
  %9 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %8, i32 0, i32 3
  store %struct.v4l2_ctrl_handler* %9, %struct.v4l2_ctrl_handler** %5, align 8
  %10 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %10, %struct.v4l2_ctrl_handler** %13, align 8
  %14 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %15 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %14, i32 10)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @valid_controls, align 8
  %17 = load %struct.sd*, %struct.sd** %4, align 8
  %18 = getelementptr inbounds %struct.sd, %struct.sd* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %1
  %25 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %26 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %27 = load %struct.sd*, %struct.sd** %4, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SEN_OV7660, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 6, i32 255
  %34 = load %struct.sd*, %struct.sd** %4, align 8
  %35 = getelementptr inbounds %struct.sd, %struct.sd* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SEN_OV7660, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 3, i32 127
  %41 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %25, i32* @sd_ctrl_ops, i32 %26, i32 0, i32 %33, i32 1, i32 %40)
  %42 = load %struct.sd*, %struct.sd** %4, align 8
  %43 = getelementptr inbounds %struct.sd, %struct.sd* %42, i32 0, i32 7
  store i8* %41, i8** %43, align 8
  br label %44

44:                                               ; preds = %24, %1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @valid_controls, align 8
  %46 = load %struct.sd*, %struct.sd** %4, align 8
  %47 = getelementptr inbounds %struct.sd, %struct.sd* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 6
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %83

53:                                               ; preds = %44
  %54 = load %struct.sd*, %struct.sd** %4, align 8
  %55 = getelementptr inbounds %struct.sd, %struct.sd* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SEN_OV7660, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %61 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %62 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %60, i32* @sd_ctrl_ops, i32 %61, i32 0, i32 6, i32 1, i32 3)
  br label %82

63:                                               ; preds = %53
  %64 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %65 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %66 = load %struct.sd*, %struct.sd** %4, align 8
  %67 = getelementptr inbounds %struct.sd, %struct.sd* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SEN_OV6630, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %63
  %72 = load %struct.sd*, %struct.sd** %4, align 8
  %73 = getelementptr inbounds %struct.sd, %struct.sd* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @SEN_OV66308AF, align 8
  %76 = icmp eq i64 %74, %75
  br label %77

77:                                               ; preds = %71, %63
  %78 = phi i1 [ true, %63 ], [ %76, %71 ]
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 200, i32 127
  %81 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %64, i32* @sd_ctrl_ops, i32 %65, i32 0, i32 255, i32 1, i32 %80)
  br label %82

82:                                               ; preds = %77, %59
  br label %83

83:                                               ; preds = %82, %44
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** @valid_controls, align 8
  %85 = load %struct.sd*, %struct.sd** %4, align 8
  %86 = getelementptr inbounds %struct.sd, %struct.sd* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %110

92:                                               ; preds = %83
  %93 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %94 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %95 = load %struct.sd*, %struct.sd** %4, align 8
  %96 = getelementptr inbounds %struct.sd, %struct.sd* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @SEN_OV7660, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 4, i32 255
  %102 = load %struct.sd*, %struct.sd** %4, align 8
  %103 = getelementptr inbounds %struct.sd, %struct.sd* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @SEN_OV7660, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 2, i32 127
  %109 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %93, i32* @sd_ctrl_ops, i32 %94, i32 0, i32 %101, i32 1, i32 %108)
  br label %110

110:                                              ; preds = %92, %83
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** @valid_controls, align 8
  %112 = load %struct.sd*, %struct.sd** %4, align 8
  %113 = getelementptr inbounds %struct.sd, %struct.sd* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %110
  %120 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %121 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %122 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %120, i32* @sd_ctrl_ops, i32 %121, i32 0, i32 255, i32 1, i32 127)
  %123 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %124 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %123, i32 0, i32 1
  store i8* %122, i8** %124, align 8
  br label %125

125:                                              ; preds = %119, %110
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** @valid_controls, align 8
  %127 = load %struct.sd*, %struct.sd** %4, align 8
  %128 = getelementptr inbounds %struct.sd, %struct.sd* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %145

134:                                              ; preds = %125
  %135 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %136 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %137 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %135, i32* @sd_ctrl_ops, i32 %136, i32 0, i32 1, i32 1, i32 0)
  %138 = load %struct.sd*, %struct.sd** %4, align 8
  %139 = getelementptr inbounds %struct.sd, %struct.sd* %138, i32 0, i32 2
  store i8* %137, i8** %139, align 8
  %140 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %141 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %142 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %140, i32* @sd_ctrl_ops, i32 %141, i32 0, i32 1, i32 1, i32 0)
  %143 = load %struct.sd*, %struct.sd** %4, align 8
  %144 = getelementptr inbounds %struct.sd, %struct.sd* %143, i32 0, i32 6
  store i8* %142, i8** %144, align 8
  br label %145

145:                                              ; preds = %134, %125
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** @valid_controls, align 8
  %147 = load %struct.sd*, %struct.sd** %4, align 8
  %148 = getelementptr inbounds %struct.sd, %struct.sd* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %145
  %155 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %156 = load i32, i32* @V4L2_CID_AUTOBRIGHTNESS, align 4
  %157 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %155, i32* @sd_ctrl_ops, i32 %156, i32 0, i32 1, i32 1, i32 1)
  %158 = load %struct.sd*, %struct.sd** %4, align 8
  %159 = getelementptr inbounds %struct.sd, %struct.sd* %158, i32 0, i32 3
  store i8* %157, i8** %159, align 8
  br label %160

160:                                              ; preds = %154, %145
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** @valid_controls, align 8
  %162 = load %struct.sd*, %struct.sd** %4, align 8
  %163 = getelementptr inbounds %struct.sd, %struct.sd* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %160
  %170 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %171 = load i32, i32* @V4L2_CID_AUTOGAIN, align 4
  %172 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %170, i32* @sd_ctrl_ops, i32 %171, i32 0, i32 1, i32 1, i32 1)
  %173 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %174 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %173, i32 0, i32 0
  store i8* %172, i8** %174, align 8
  br label %175

175:                                              ; preds = %169, %160
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** @valid_controls, align 8
  %177 = load %struct.sd*, %struct.sd** %4, align 8
  %178 = getelementptr inbounds %struct.sd, %struct.sd* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %206

184:                                              ; preds = %175
  %185 = load %struct.sd*, %struct.sd** %4, align 8
  %186 = getelementptr inbounds %struct.sd, %struct.sd* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @SEN_OV7670, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %198

190:                                              ; preds = %184
  %191 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %192 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY, align 4
  %193 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY_AUTO, align 4
  %194 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY_AUTO, align 4
  %195 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %191, i32* @sd_ctrl_ops, i32 %192, i32 %193, i32 0, i32 %194)
  %196 = load %struct.sd*, %struct.sd** %4, align 8
  %197 = getelementptr inbounds %struct.sd, %struct.sd* %196, i32 0, i32 5
  store i8* %195, i8** %197, align 8
  br label %205

198:                                              ; preds = %184
  %199 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %200 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY, align 4
  %201 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY_60HZ, align 4
  %202 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %199, i32* @sd_ctrl_ops, i32 %200, i32 %201, i32 0, i32 0)
  %203 = load %struct.sd*, %struct.sd** %4, align 8
  %204 = getelementptr inbounds %struct.sd, %struct.sd* %203, i32 0, i32 5
  store i8* %202, i8** %204, align 8
  br label %205

205:                                              ; preds = %198, %190
  br label %206

206:                                              ; preds = %205, %175
  %207 = load %struct.sd*, %struct.sd** %4, align 8
  %208 = getelementptr inbounds %struct.sd, %struct.sd* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @BRIDGE_W9968CF, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %221

212:                                              ; preds = %206
  %213 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %214 = load i32, i32* @V4L2_CID_JPEG_COMPRESSION_QUALITY, align 4
  %215 = load i32, i32* @QUALITY_MIN, align 4
  %216 = load i32, i32* @QUALITY_MAX, align 4
  %217 = load i32, i32* @QUALITY_DEF, align 4
  %218 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %213, i32* @sd_ctrl_ops, i32 %214, i32 %215, i32 %216, i32 1, i32 %217)
  %219 = load %struct.sd*, %struct.sd** %4, align 8
  %220 = getelementptr inbounds %struct.sd, %struct.sd* %219, i32 0, i32 4
  store i8* %218, i8** %220, align 8
  br label %221

221:                                              ; preds = %212, %206
  %222 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %223 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %221
  %227 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %228 = call i32 @gspca_err(%struct.gspca_dev* %227, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %229 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %230 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  store i32 %231, i32* %2, align 4
  br label %260

232:                                              ; preds = %221
  %233 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %234 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %233, i32 0, i32 0
  %235 = load i8*, i8** %234, align 8
  %236 = icmp ne i8* %235, null
  br i1 %236, label %237, label %241

237:                                              ; preds = %232
  %238 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %239 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %238, i32 0, i32 0
  %240 = call i32 @v4l2_ctrl_auto_cluster(i32 3, i8** %239, i32 0, i32 1)
  br label %241

241:                                              ; preds = %237, %232
  %242 = load %struct.sd*, %struct.sd** %4, align 8
  %243 = getelementptr inbounds %struct.sd, %struct.sd* %242, i32 0, i32 3
  %244 = load i8*, i8** %243, align 8
  %245 = icmp ne i8* %244, null
  br i1 %245, label %246, label %250

246:                                              ; preds = %241
  %247 = load %struct.sd*, %struct.sd** %4, align 8
  %248 = getelementptr inbounds %struct.sd, %struct.sd* %247, i32 0, i32 3
  %249 = call i32 @v4l2_ctrl_auto_cluster(i32 2, i8** %248, i32 0, i32 0)
  br label %250

250:                                              ; preds = %246, %241
  %251 = load %struct.sd*, %struct.sd** %4, align 8
  %252 = getelementptr inbounds %struct.sd, %struct.sd* %251, i32 0, i32 2
  %253 = load i8*, i8** %252, align 8
  %254 = icmp ne i8* %253, null
  br i1 %254, label %255, label %259

255:                                              ; preds = %250
  %256 = load %struct.sd*, %struct.sd** %4, align 8
  %257 = getelementptr inbounds %struct.sd, %struct.sd* %256, i32 0, i32 2
  %258 = call i32 @v4l2_ctrl_cluster(i32 2, i8** %257)
  br label %259

259:                                              ; preds = %255, %250
  store i32 0, i32* %2, align 4
  br label %260

260:                                              ; preds = %259, %226
  %261 = load i32, i32* %2, align 4
  ret i32 %261
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*) #1

declare dso_local i32 @v4l2_ctrl_auto_cluster(i32, i8**, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_cluster(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
