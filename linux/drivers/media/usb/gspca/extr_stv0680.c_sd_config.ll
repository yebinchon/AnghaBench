; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_stv0680.c_sd_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_stv0680.c_sd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32*, %struct.cam }
%struct.cam = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_device_id = type { i32 }
%struct.sd = type { i32, i32, i32, %struct.TYPE_2__ }

@.str = private unnamed_addr constant [30 x i8] c"STV(e): camera ping failed!!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not get descriptor 0200\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Camera supports neither CIF nor QVGA mode\0A\00", align 1
@D_PROBE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Camera supports CIF mode\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Camera supports VGA mode\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Camera supports QCIF mode\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Camera supports QVGA mode\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Firmware rev is %i.%i\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"ASIC rev is %i.%i\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Sensor ID is %i\00", align 1
@EIO = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_STV0680 = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"Could not get descriptor 0100\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.usb_device_id*)* @sd_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_config(%struct.gspca_dev* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sd*, align 8
  %8 = alloca %struct.cam*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %10 = bitcast %struct.gspca_dev* %9 to %struct.sd*
  store %struct.sd* %10, %struct.sd** %7, align 8
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 1
  store %struct.cam* %12, %struct.cam** %8, align 8
  %13 = call i32 @msleep(i32 1000)
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %15 = call i32 @stv_sndctrl(%struct.gspca_dev* %14, i32 0, i32 136, i32 22136, i32 2)
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %31, label %17

17:                                               ; preds = %2
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %19 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 86
  br i1 %23, label %31, label %24

24:                                               ; preds = %17
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %26 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 120
  br i1 %30, label %31, label %38

31:                                               ; preds = %24, %17, %2
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %33 = call i32 @gspca_err(%struct.gspca_dev* %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  %37 = call i32 @stv0680_handle_error(%struct.gspca_dev* %34, i32 %36)
  store i32 %37, i32* %3, align 4
  br label %375

38:                                               ; preds = %24
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %40 = call i32 @stv_sndctrl(%struct.gspca_dev* %39, i32 2, i32 6, i32 512, i32 9)
  %41 = icmp ne i32 %40, 9
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  %46 = call i32 @stv0680_handle_error(%struct.gspca_dev* %43, i32 %45)
  store i32 %46, i32* %3, align 4
  br label %375

47:                                               ; preds = %38
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %49 = call i32 @stv_sndctrl(%struct.gspca_dev* %48, i32 2, i32 6, i32 512, i32 34)
  %50 = icmp ne i32 %49, 34
  br i1 %50, label %65, label %51

51:                                               ; preds = %47
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %53 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 7
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 160
  br i1 %57, label %65, label %58

58:                                               ; preds = %51
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %60 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 35
  br i1 %64, label %65, label %72

65:                                               ; preds = %58, %51, %47
  %66 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %67 = call i32 @gspca_err(%struct.gspca_dev* %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  %71 = call i32 @stv0680_handle_error(%struct.gspca_dev* %68, i32 %70)
  store i32 %71, i32* %3, align 4
  br label %375

72:                                               ; preds = %58
  %73 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %74 = call i32 @stv_sndctrl(%struct.gspca_dev* %73, i32 0, i32 138, i32 0, i32 2)
  %75 = icmp ne i32 %74, 2
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  %80 = call i32 @stv0680_handle_error(%struct.gspca_dev* %77, i32 %79)
  store i32 %80, i32* %3, align 4
  br label %375

81:                                               ; preds = %72
  %82 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %83 = call i32 @stv_sndctrl(%struct.gspca_dev* %82, i32 0, i32 139, i32 0, i32 36)
  %84 = icmp ne i32 %83, 36
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %87 = load i32, i32* @ENODEV, align 4
  %88 = sub nsw i32 0, %87
  %89 = call i32 @stv0680_handle_error(%struct.gspca_dev* %86, i32 %88)
  store i32 %89, i32* %3, align 4
  br label %375

90:                                               ; preds = %81
  %91 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %92 = call i32 @stv_sndctrl(%struct.gspca_dev* %91, i32 0, i32 133, i32 0, i32 16)
  %93 = icmp ne i32 %92, 16
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %96 = load i32, i32* @ENODEV, align 4
  %97 = sub nsw i32 0, %96
  %98 = call i32 @stv0680_handle_error(%struct.gspca_dev* %95, i32 %97)
  store i32 %98, i32* %3, align 4
  br label %375

99:                                               ; preds = %90
  %100 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %101 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 7
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 9
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %99
  %108 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %109 = call i32 @gspca_err(%struct.gspca_dev* %108, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %110 = load i32, i32* @ENODEV, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %375

112:                                              ; preds = %99
  %113 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %114 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 7
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, 1
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %112
  %121 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %122 = load i32, i32* @D_PROBE, align 4
  %123 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %121, i32 %122, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %124

124:                                              ; preds = %120, %112
  %125 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %126 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 7
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, 2
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %124
  %133 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %134 = load i32, i32* @D_PROBE, align 4
  %135 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %133, i32 %134, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %136

136:                                              ; preds = %132, %124
  %137 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %138 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 7
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %136
  %145 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %146 = load i32, i32* @D_PROBE, align 4
  %147 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %145, i32 %146, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %148

148:                                              ; preds = %144, %136
  %149 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %150 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 7
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %148
  %157 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %158 = load i32, i32* @D_PROBE, align 4
  %159 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %157, i32 %158, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %160

160:                                              ; preds = %156, %148
  %161 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %162 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 7
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, 1
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %160
  %169 = load %struct.sd*, %struct.sd** %7, align 8
  %170 = getelementptr inbounds %struct.sd, %struct.sd* %169, i32 0, i32 0
  store i32 0, i32* %170, align 4
  br label %174

171:                                              ; preds = %160
  %172 = load %struct.sd*, %struct.sd** %7, align 8
  %173 = getelementptr inbounds %struct.sd, %struct.sd* %172, i32 0, i32 0
  store i32 3, i32* %173, align 4
  br label %174

174:                                              ; preds = %171, %168
  %175 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %176 = load i32, i32* @D_PROBE, align 4
  %177 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %178 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %183 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %175, i32 %176, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %181, i32 %186)
  %188 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %189 = load i32, i32* @D_PROBE, align 4
  %190 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %191 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 2
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %196 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 3
  %199 = load i32, i32* %198, align 4
  %200 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %188, i32 %189, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %194, i32 %199)
  %201 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %202 = load i32, i32* @D_PROBE, align 4
  %203 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %204 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 4
  %207 = load i32, i32* %206, align 4
  %208 = mul nsw i32 %207, 16
  %209 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %210 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 5
  %213 = load i32, i32* %212, align 4
  %214 = ashr i32 %213, 4
  %215 = add nsw i32 %208, %214
  %216 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %201, i32 %202, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %215)
  %217 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %218 = call i32 @stv0680_get_video_mode(%struct.gspca_dev* %217)
  store i32 %218, i32* %6, align 4
  %219 = load i32, i32* %6, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %174
  %222 = load i32, i32* %6, align 4
  store i32 %222, i32* %3, align 4
  br label %375

223:                                              ; preds = %174
  %224 = load i32, i32* %6, align 4
  %225 = load %struct.sd*, %struct.sd** %7, align 8
  %226 = getelementptr inbounds %struct.sd, %struct.sd* %225, i32 0, i32 2
  store i32 %224, i32* %226, align 4
  %227 = load %struct.sd*, %struct.sd** %7, align 8
  %228 = getelementptr inbounds %struct.sd, %struct.sd* %227, i32 0, i32 1
  store i32 %224, i32* %228, align 4
  %229 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %230 = load %struct.sd*, %struct.sd** %7, align 8
  %231 = getelementptr inbounds %struct.sd, %struct.sd* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @stv0680_set_video_mode(%struct.gspca_dev* %229, i32 %232)
  store i32 %233, i32* %6, align 4
  %234 = load i32, i32* %6, align 4
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %223
  %237 = load i32, i32* %6, align 4
  store i32 %237, i32* %3, align 4
  br label %375

238:                                              ; preds = %223
  %239 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %240 = call i32 @stv_sndctrl(%struct.gspca_dev* %239, i32 0, i32 143, i32 0, i32 16)
  %241 = icmp ne i32 %240, 16
  br i1 %241, label %242, label %247

242:                                              ; preds = %238
  %243 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %244 = load i32, i32* @EIO, align 4
  %245 = sub nsw i32 0, %244
  %246 = call i32 @stv0680_handle_error(%struct.gspca_dev* %243, i32 %245)
  store i32 %246, i32* %3, align 4
  br label %375

247:                                              ; preds = %238
  %248 = load %struct.cam*, %struct.cam** %8, align 8
  %249 = getelementptr inbounds %struct.cam, %struct.cam* %248, i32 0, i32 0
  store i32 1, i32* %249, align 8
  %250 = load %struct.cam*, %struct.cam** %8, align 8
  %251 = getelementptr inbounds %struct.cam, %struct.cam* %250, i32 0, i32 1
  store i32 1, i32* %251, align 4
  %252 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %253 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 0
  %256 = load i32, i32* %255, align 4
  %257 = shl i32 %256, 24
  %258 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %259 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 1
  %262 = load i32, i32* %261, align 4
  %263 = shl i32 %262, 16
  %264 = or i32 %257, %263
  %265 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %266 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %265, i32 0, i32 0
  %267 = load i32*, i32** %266, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 2
  %269 = load i32, i32* %268, align 4
  %270 = shl i32 %269, 8
  %271 = or i32 %264, %270
  %272 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %273 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %272, i32 0, i32 0
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 3
  %276 = load i32, i32* %275, align 4
  %277 = or i32 %271, %276
  %278 = load %struct.cam*, %struct.cam** %8, align 8
  %279 = getelementptr inbounds %struct.cam, %struct.cam* %278, i32 0, i32 2
  store i32 %277, i32* %279, align 8
  %280 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %281 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %280, i32 0, i32 0
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 4
  %284 = load i32, i32* %283, align 4
  %285 = shl i32 %284, 8
  %286 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %287 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 5
  %290 = load i32, i32* %289, align 4
  %291 = or i32 %285, %290
  %292 = load %struct.sd*, %struct.sd** %7, align 8
  %293 = getelementptr inbounds %struct.sd, %struct.sd* %292, i32 0, i32 3
  %294 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %293, i32 0, i32 0
  store i32 %291, i32* %294, align 4
  %295 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %296 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %295, i32 0, i32 0
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 6
  %299 = load i32, i32* %298, align 4
  %300 = shl i32 %299, 8
  %301 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %302 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %301, i32 0, i32 0
  %303 = load i32*, i32** %302, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 7
  %305 = load i32, i32* %304, align 4
  %306 = or i32 %300, %305
  %307 = load %struct.sd*, %struct.sd** %7, align 8
  %308 = getelementptr inbounds %struct.sd, %struct.sd* %307, i32 0, i32 3
  %309 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %308, i32 0, i32 1
  store i32 %306, i32* %309, align 4
  %310 = load i32, i32* @V4L2_PIX_FMT_STV0680, align 4
  %311 = load %struct.sd*, %struct.sd** %7, align 8
  %312 = getelementptr inbounds %struct.sd, %struct.sd* %311, i32 0, i32 3
  %313 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %312, i32 0, i32 6
  store i32 %310, i32* %313, align 4
  %314 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %315 = load %struct.sd*, %struct.sd** %7, align 8
  %316 = getelementptr inbounds %struct.sd, %struct.sd* %315, i32 0, i32 3
  %317 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %316, i32 0, i32 5
  store i32 %314, i32* %317, align 4
  %318 = load %struct.sd*, %struct.sd** %7, align 8
  %319 = getelementptr inbounds %struct.sd, %struct.sd* %318, i32 0, i32 3
  %320 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.sd*, %struct.sd** %7, align 8
  %323 = getelementptr inbounds %struct.sd, %struct.sd* %322, i32 0, i32 3
  %324 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %323, i32 0, i32 2
  store i32 %321, i32* %324, align 4
  %325 = load %struct.cam*, %struct.cam** %8, align 8
  %326 = getelementptr inbounds %struct.cam, %struct.cam* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = load %struct.sd*, %struct.sd** %7, align 8
  %329 = getelementptr inbounds %struct.sd, %struct.sd* %328, i32 0, i32 3
  %330 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %329, i32 0, i32 3
  store i32 %327, i32* %330, align 4
  %331 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %332 = load %struct.sd*, %struct.sd** %7, align 8
  %333 = getelementptr inbounds %struct.sd, %struct.sd* %332, i32 0, i32 3
  %334 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %333, i32 0, i32 4
  store i32 %331, i32* %334, align 4
  %335 = load %struct.sd*, %struct.sd** %7, align 8
  %336 = getelementptr inbounds %struct.sd, %struct.sd* %335, i32 0, i32 3
  %337 = load %struct.cam*, %struct.cam** %8, align 8
  %338 = getelementptr inbounds %struct.cam, %struct.cam* %337, i32 0, i32 4
  store %struct.TYPE_2__* %336, %struct.TYPE_2__** %338, align 8
  %339 = load %struct.cam*, %struct.cam** %8, align 8
  %340 = getelementptr inbounds %struct.cam, %struct.cam* %339, i32 0, i32 3
  store i32 1, i32* %340, align 4
  %341 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %342 = load %struct.sd*, %struct.sd** %7, align 8
  %343 = getelementptr inbounds %struct.sd, %struct.sd* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 4
  %345 = call i32 @stv0680_set_video_mode(%struct.gspca_dev* %341, i32 %344)
  store i32 %345, i32* %6, align 4
  %346 = load i32, i32* %6, align 4
  %347 = icmp slt i32 %346, 0
  br i1 %347, label %348, label %350

348:                                              ; preds = %247
  %349 = load i32, i32* %6, align 4
  store i32 %349, i32* %3, align 4
  br label %375

350:                                              ; preds = %247
  %351 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %352 = call i32 @stv_sndctrl(%struct.gspca_dev* %351, i32 2, i32 6, i32 256, i32 18)
  %353 = icmp ne i32 %352, 18
  br i1 %353, label %368, label %354

354:                                              ; preds = %350
  %355 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %356 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %355, i32 0, i32 0
  %357 = load i32*, i32** %356, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 8
  %359 = load i32, i32* %358, align 4
  %360 = icmp ne i32 %359, 83
  br i1 %360, label %368, label %361

361:                                              ; preds = %354
  %362 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %363 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %362, i32 0, i32 0
  %364 = load i32*, i32** %363, align 8
  %365 = getelementptr inbounds i32, i32* %364, i64 9
  %366 = load i32, i32* %365, align 4
  %367 = icmp ne i32 %366, 5
  br i1 %367, label %368, label %374

368:                                              ; preds = %361, %354, %350
  %369 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %370 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %371 = load i32, i32* @EIO, align 4
  %372 = sub nsw i32 0, %371
  %373 = call i32 @stv0680_handle_error(%struct.gspca_dev* %370, i32 %372)
  store i32 %373, i32* %3, align 4
  br label %375

374:                                              ; preds = %361
  store i32 0, i32* %3, align 4
  br label %375

375:                                              ; preds = %374, %368, %348, %242, %236, %221, %107, %94, %85, %76, %65, %42, %31
  %376 = load i32, i32* %3, align 4
  ret i32 %376
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @stv_sndctrl(%struct.gspca_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*) #1

declare dso_local i32 @stv0680_handle_error(%struct.gspca_dev*, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, ...) #1

declare dso_local i32 @stv0680_get_video_mode(%struct.gspca_dev*) #1

declare dso_local i32 @stv0680_set_video_mode(%struct.gspca_dev*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
