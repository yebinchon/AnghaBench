; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixj.c_sd_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixj.c_sd_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i8*, i8*, i8*, %struct.TYPE_2__, %struct.v4l2_ctrl_handler }
%struct.TYPE_2__ = type { %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.sd = type { i64, i32, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@sd_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_RED_BALANCE = common dso_local global i32 0, align 4
@V4L2_CID_BLUE_BALANCE = common dso_local global i32 0, align 4
@V4L2_CID_GAMMA = common dso_local global i32 0, align 4
@SENSOR_OM6802 = common dso_local global i64 0, align 8
@V4L2_CID_SHARPNESS = common dso_local global i32 0, align 4
@F_ILLUM = common dso_local global i32 0, align 4
@V4L2_CID_ILLUMINATORS_1 = common dso_local global i32 0, align 4
@SENSOR_PO2030N = common dso_local global i64 0, align 8
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@SENSOR_ADCM1700 = common dso_local global i64 0, align 8
@SENSOR_OV7660 = common dso_local global i64 0, align 8
@SENSOR_PO1030 = common dso_local global i64 0, align 8
@SENSOR_SOI768 = common dso_local global i64 0, align 8
@SENSOR_SP80708 = common dso_local global i64 0, align 8
@V4L2_CID_AUTOGAIN = common dso_local global i32 0, align 4
@SENSOR_HV7131R = common dso_local global i64 0, align 8
@SENSOR_OV7630 = common dso_local global i64 0, align 8
@SENSOR_OV7648 = common dso_local global i64 0, align 8
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY_60HZ = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY_50HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not initialize controls\0A\00", align 1
@COLORS_DEF = common dso_local global i32 0, align 4
@CONTRAST_MAX = common dso_local global i32 0, align 4
@GAMMA_DEF = common dso_local global i32 0, align 4
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
  %9 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %8, i32 0, i32 4
  store %struct.v4l2_ctrl_handler* %9, %struct.v4l2_ctrl_handler** %5, align 8
  %10 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %10, %struct.v4l2_ctrl_handler** %13, align 8
  %14 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %15 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %14, i32 14)
  %16 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %17 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %18 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %16, i32* @sd_ctrl_ops, i32 %17, i32 0, i32 255, i32 1, i32 128)
  %19 = load %struct.sd*, %struct.sd** %4, align 8
  %20 = getelementptr inbounds %struct.sd, %struct.sd* %19, i32 0, i32 12
  store i8* %18, i8** %20, align 8
  %21 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %22 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %23 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %21, i32* @sd_ctrl_ops, i32 %22, i32 0, i32 127, i32 1, i32 20)
  %24 = load %struct.sd*, %struct.sd** %4, align 8
  %25 = getelementptr inbounds %struct.sd, %struct.sd* %24, i32 0, i32 11
  store i8* %23, i8** %25, align 8
  %26 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %27 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %28 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %26, i32* @sd_ctrl_ops, i32 %27, i32 0, i32 40, i32 1, i32 25)
  %29 = load %struct.sd*, %struct.sd** %4, align 8
  %30 = getelementptr inbounds %struct.sd, %struct.sd* %29, i32 0, i32 10
  store i8* %28, i8** %30, align 8
  %31 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %32 = load i32, i32* @V4L2_CID_RED_BALANCE, align 4
  %33 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %31, i32* @sd_ctrl_ops, i32 %32, i32 24, i32 40, i32 1, i32 32)
  %34 = load %struct.sd*, %struct.sd** %4, align 8
  %35 = getelementptr inbounds %struct.sd, %struct.sd* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %37 = load i32, i32* @V4L2_CID_BLUE_BALANCE, align 4
  %38 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %36, i32* @sd_ctrl_ops, i32 %37, i32 24, i32 40, i32 1, i32 32)
  %39 = load %struct.sd*, %struct.sd** %4, align 8
  %40 = getelementptr inbounds %struct.sd, %struct.sd* %39, i32 0, i32 9
  store i8* %38, i8** %40, align 8
  %41 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %42 = load i32, i32* @V4L2_CID_GAMMA, align 4
  %43 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %41, i32* @sd_ctrl_ops, i32 %42, i32 0, i32 40, i32 1, i32 20)
  %44 = load %struct.sd*, %struct.sd** %4, align 8
  %45 = getelementptr inbounds %struct.sd, %struct.sd* %44, i32 0, i32 8
  store i8* %43, i8** %45, align 8
  %46 = load %struct.sd*, %struct.sd** %4, align 8
  %47 = getelementptr inbounds %struct.sd, %struct.sd* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SENSOR_OM6802, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %1
  %52 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %53 = load i32, i32* @V4L2_CID_SHARPNESS, align 4
  %54 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %52, i32* @sd_ctrl_ops, i32 %53, i32 0, i32 255, i32 1, i32 16)
  %55 = load %struct.sd*, %struct.sd** %4, align 8
  %56 = getelementptr inbounds %struct.sd, %struct.sd* %55, i32 0, i32 7
  store i8* %54, i8** %56, align 8
  br label %63

57:                                               ; preds = %1
  %58 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %59 = load i32, i32* @V4L2_CID_SHARPNESS, align 4
  %60 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %58, i32* @sd_ctrl_ops, i32 %59, i32 0, i32 255, i32 1, i32 90)
  %61 = load %struct.sd*, %struct.sd** %4, align 8
  %62 = getelementptr inbounds %struct.sd, %struct.sd* %61, i32 0, i32 7
  store i8* %60, i8** %62, align 8
  br label %63

63:                                               ; preds = %57, %51
  %64 = load %struct.sd*, %struct.sd** %4, align 8
  %65 = getelementptr inbounds %struct.sd, %struct.sd* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @F_ILLUM, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %72 = load i32, i32* @V4L2_CID_ILLUMINATORS_1, align 4
  %73 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %71, i32* @sd_ctrl_ops, i32 %72, i32 0, i32 1, i32 1, i32 0)
  %74 = load %struct.sd*, %struct.sd** %4, align 8
  %75 = getelementptr inbounds %struct.sd, %struct.sd* %74, i32 0, i32 6
  store i8* %73, i8** %75, align 8
  br label %76

76:                                               ; preds = %70, %63
  %77 = load %struct.sd*, %struct.sd** %4, align 8
  %78 = getelementptr inbounds %struct.sd, %struct.sd* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @SENSOR_PO2030N, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %76
  %83 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %84 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %85 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %83, i32* @sd_ctrl_ops, i32 %84, i32 500, i32 1500, i32 1, i32 1024)
  %86 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %87 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %86, i32 0, i32 2
  store i8* %85, i8** %87, align 8
  %88 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %89 = load i32, i32* @V4L2_CID_GAIN, align 4
  %90 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %88, i32* @sd_ctrl_ops, i32 %89, i32 4, i32 49, i32 1, i32 15)
  %91 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %92 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %94 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %95 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %93, i32* @sd_ctrl_ops, i32 %94, i32 0, i32 1, i32 1, i32 0)
  %96 = load %struct.sd*, %struct.sd** %4, align 8
  %97 = getelementptr inbounds %struct.sd, %struct.sd* %96, i32 0, i32 5
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %82, %76
  %99 = load %struct.sd*, %struct.sd** %4, align 8
  %100 = getelementptr inbounds %struct.sd, %struct.sd* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @SENSOR_ADCM1700, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %134

104:                                              ; preds = %98
  %105 = load %struct.sd*, %struct.sd** %4, align 8
  %106 = getelementptr inbounds %struct.sd, %struct.sd* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @SENSOR_OV7660, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %134

110:                                              ; preds = %104
  %111 = load %struct.sd*, %struct.sd** %4, align 8
  %112 = getelementptr inbounds %struct.sd, %struct.sd* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @SENSOR_PO1030, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %134

116:                                              ; preds = %110
  %117 = load %struct.sd*, %struct.sd** %4, align 8
  %118 = getelementptr inbounds %struct.sd, %struct.sd* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @SENSOR_SOI768, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %134

122:                                              ; preds = %116
  %123 = load %struct.sd*, %struct.sd** %4, align 8
  %124 = getelementptr inbounds %struct.sd, %struct.sd* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @SENSOR_SP80708, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %122
  %129 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %130 = load i32, i32* @V4L2_CID_AUTOGAIN, align 4
  %131 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %129, i32* @sd_ctrl_ops, i32 %130, i32 0, i32 1, i32 1, i32 1)
  %132 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %133 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %132, i32 0, i32 0
  store i8* %131, i8** %133, align 8
  br label %134

134:                                              ; preds = %128, %122, %116, %110, %104, %98
  %135 = load %struct.sd*, %struct.sd** %4, align 8
  %136 = getelementptr inbounds %struct.sd, %struct.sd* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @SENSOR_HV7131R, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %158, label %140

140:                                              ; preds = %134
  %141 = load %struct.sd*, %struct.sd** %4, align 8
  %142 = getelementptr inbounds %struct.sd, %struct.sd* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @SENSOR_OV7630, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %158, label %146

146:                                              ; preds = %140
  %147 = load %struct.sd*, %struct.sd** %4, align 8
  %148 = getelementptr inbounds %struct.sd, %struct.sd* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @SENSOR_OV7648, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %158, label %152

152:                                              ; preds = %146
  %153 = load %struct.sd*, %struct.sd** %4, align 8
  %154 = getelementptr inbounds %struct.sd, %struct.sd* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @SENSOR_PO2030N, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %164

158:                                              ; preds = %152, %146, %140, %134
  %159 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %160 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %161 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %159, i32* @sd_ctrl_ops, i32 %160, i32 0, i32 1, i32 1, i32 0)
  %162 = load %struct.sd*, %struct.sd** %4, align 8
  %163 = getelementptr inbounds %struct.sd, %struct.sd* %162, i32 0, i32 2
  store i8* %161, i8** %163, align 8
  br label %164

164:                                              ; preds = %158, %152
  %165 = load %struct.sd*, %struct.sd** %4, align 8
  %166 = getelementptr inbounds %struct.sd, %struct.sd* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @SENSOR_OV7630, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %182, label %170

170:                                              ; preds = %164
  %171 = load %struct.sd*, %struct.sd** %4, align 8
  %172 = getelementptr inbounds %struct.sd, %struct.sd* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @SENSOR_OV7648, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %182, label %176

176:                                              ; preds = %170
  %177 = load %struct.sd*, %struct.sd** %4, align 8
  %178 = getelementptr inbounds %struct.sd, %struct.sd* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @SENSOR_OV7660, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %190

182:                                              ; preds = %176, %170, %164
  %183 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %184 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY, align 4
  %185 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY_60HZ, align 4
  %186 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY_50HZ, align 4
  %187 = call i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %183, i32* @sd_ctrl_ops, i32 %184, i32 %185, i32 0, i32 %186)
  %188 = load %struct.sd*, %struct.sd** %4, align 8
  %189 = getelementptr inbounds %struct.sd, %struct.sd* %188, i32 0, i32 4
  store i32 %187, i32* %189, align 8
  br label %190

190:                                              ; preds = %182, %176
  %191 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %192 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %190
  %196 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %197 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %198 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  store i32 %199, i32* %2, align 4
  br label %217

200:                                              ; preds = %190
  %201 = load %struct.sd*, %struct.sd** %4, align 8
  %202 = getelementptr inbounds %struct.sd, %struct.sd* %201, i32 0, i32 3
  %203 = call i32 @v4l2_ctrl_cluster(i32 2, i8** %202)
  %204 = load %struct.sd*, %struct.sd** %4, align 8
  %205 = getelementptr inbounds %struct.sd, %struct.sd* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @SENSOR_PO2030N, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %216

209:                                              ; preds = %200
  %210 = load %struct.sd*, %struct.sd** %4, align 8
  %211 = getelementptr inbounds %struct.sd, %struct.sd* %210, i32 0, i32 2
  %212 = call i32 @v4l2_ctrl_cluster(i32 2, i8** %211)
  %213 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %214 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %213, i32 0, i32 0
  %215 = call i32 @v4l2_ctrl_auto_cluster(i32 3, i8** %214, i32 0, i32 0)
  br label %216

216:                                              ; preds = %209, %200
  store i32 0, i32* %2, align 4
  br label %217

217:                                              ; preds = %216, %195
  %218 = load i32, i32* %2, align 4
  ret i32 %218
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @v4l2_ctrl_cluster(i32, i8**) #1

declare dso_local i32 @v4l2_ctrl_auto_cluster(i32, i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
