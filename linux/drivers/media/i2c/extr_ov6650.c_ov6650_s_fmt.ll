; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov6650.c_ov6650_s_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov6650.c_ov6650_s_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32 }
%struct.i2c_client = type { i32 }
%struct.ov6650 = type { i32, i32, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_selection = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@V4L2_SEL_TGT_CROP = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"pixel format GREY8_1X8\0A\00", align 1
@COMA_RGB = common dso_local global i32 0, align 4
@COMA_WORD_SWAP = common dso_local global i32 0, align 4
@COMA_BYTE_SWAP = common dso_local global i32 0, align 4
@COMA_BW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"pixel format YUYV8_2X8_LE\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"pixel format YVYU8_2X8_LE (untested)\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"pixel format YUYV8_2X8_BE\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"pixel format YVYU8_2X8_BE (untested)\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"pixel format SBGGR8_1X8 (untested)\0A\00", align 1
@COMA_RAW_RGB = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"Pixel format not handled: 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@COML_ONE_CHANNEL = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_JPEG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"max resolution: QCIF\0A\00", align 1
@COMA_QCIF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"max resolution: CIF\0A\00", align 1
@CLKRC_12MHz = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"using 12MHz input clock\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"pixel clock divider: %ld.%ld\0A\00", align 1
@REG_COMA = common dso_local global i32 0, align 4
@REG_CLKRC = common dso_local global i32 0, align 4
@REG_COML = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_mbus_framefmt*)* @ov6650_s_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov6650_s_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_mbus_framefmt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.ov6650*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_subdev_selection, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %5, align 8
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %20 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %19)
  store %struct.i2c_client* %20, %struct.i2c_client** %6, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %22 = call %struct.ov6650* @to_ov6650(%struct.i2c_client* %21)
  store %struct.ov6650* %22, %struct.ov6650** %7, align 8
  %23 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ov6650*, %struct.ov6650** %7, align 8
  %30 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %29, i32 0, i32 4
  %31 = call i32 @is_unscaled_ok(i32 %25, i32 %28, %struct.TYPE_4__* %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %9, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %38 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = shl i32 %39, %40
  store i32 %41, i32* %36, align 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %43 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %44 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = shl i32 %45, %46
  store i32 %47, i32* %42, align 4
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %49 = load %struct.ov6650*, %struct.ov6650** %7, align 8
  %50 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ov6650*, %struct.ov6650** %7, align 8
  %54 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 1
  %58 = add nsw i32 %52, %57
  %59 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %60 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %8, align 4
  %63 = sub nsw i32 1, %62
  %64 = ashr i32 %61, %63
  %65 = sub nsw i32 %58, %64
  store i32 %65, i32* %48, align 4
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %67 = load %struct.ov6650*, %struct.ov6650** %7, align 8
  %68 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ov6650*, %struct.ov6650** %7, align 8
  %72 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %74, 1
  %76 = add nsw i32 %70, %75
  %77 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %78 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %8, align 4
  %81 = sub nsw i32 1, %80
  %82 = ashr i32 %79, %81
  %83 = sub nsw i32 %76, %82
  store i32 %83, i32* %66, align 4
  %84 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %9, i32 0, i32 1
  %85 = load i32, i32* @V4L2_SEL_TGT_CROP, align 4
  store i32 %85, i32* %84, align 4
  %86 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %9, i32 0, i32 2
  %87 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %87, i32* %86, align 4
  %88 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %89 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %10, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %91 = load i32, i32* %10, align 4
  switch i32 %91, label %207 [
    i32 130, label %92
    i32 129, label %106
    i32 128, label %120
    i32 132, label %133
    i32 131, label %162
    i32 133, label %191
  ]

92:                                               ; preds = %2
  %93 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 0
  %95 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %96 = load i32, i32* @COMA_RGB, align 4
  %97 = load i32, i32* @COMA_WORD_SWAP, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @COMA_BYTE_SWAP, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* %14, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* @COMA_BW, align 4
  %104 = load i32, i32* %13, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %13, align 4
  br label %214

106:                                              ; preds = %2
  %107 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %108 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %107, i32 0, i32 0
  %109 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %108, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %110 = load i32, i32* @COMA_RGB, align 4
  %111 = load i32, i32* @COMA_BW, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @COMA_BYTE_SWAP, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* %14, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* @COMA_WORD_SWAP, align 4
  %118 = load i32, i32* %13, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %13, align 4
  br label %214

120:                                              ; preds = %2
  %121 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %122 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %121, i32 0, i32 0
  %123 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %122, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %124 = load i32, i32* @COMA_RGB, align 4
  %125 = load i32, i32* @COMA_BW, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @COMA_WORD_SWAP, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @COMA_BYTE_SWAP, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* %14, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %14, align 4
  br label %214

133:                                              ; preds = %2
  %134 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %135 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %134, i32 0, i32 0
  %136 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %135, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %137 = load i32, i32* %8, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %133
  %140 = load i32, i32* @COMA_RGB, align 4
  %141 = load i32, i32* @COMA_BW, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @COMA_WORD_SWAP, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* %14, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %14, align 4
  %147 = load i32, i32* @COMA_BYTE_SWAP, align 4
  %148 = load i32, i32* %13, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %13, align 4
  br label %161

150:                                              ; preds = %133
  %151 = load i32, i32* @COMA_RGB, align 4
  %152 = load i32, i32* @COMA_BW, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* %14, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %14, align 4
  %156 = load i32, i32* @COMA_BYTE_SWAP, align 4
  %157 = load i32, i32* @COMA_WORD_SWAP, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* %13, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %13, align 4
  br label %161

161:                                              ; preds = %150, %139
  br label %214

162:                                              ; preds = %2
  %163 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %164 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %163, i32 0, i32 0
  %165 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %164, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %179

168:                                              ; preds = %162
  %169 = load i32, i32* @COMA_RGB, align 4
  %170 = load i32, i32* @COMA_BW, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* %14, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %14, align 4
  %174 = load i32, i32* @COMA_BYTE_SWAP, align 4
  %175 = load i32, i32* @COMA_WORD_SWAP, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* %13, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %13, align 4
  br label %190

179:                                              ; preds = %162
  %180 = load i32, i32* @COMA_RGB, align 4
  %181 = load i32, i32* @COMA_BW, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @COMA_WORD_SWAP, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* %14, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %14, align 4
  %187 = load i32, i32* @COMA_BYTE_SWAP, align 4
  %188 = load i32, i32* %13, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %13, align 4
  br label %190

190:                                              ; preds = %179, %168
  br label %214

191:                                              ; preds = %2
  %192 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %193 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %192, i32 0, i32 0
  %194 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %193, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %195 = load i32, i32* @COMA_BW, align 4
  %196 = load i32, i32* @COMA_BYTE_SWAP, align 4
  %197 = or i32 %195, %196
  %198 = load i32, i32* @COMA_WORD_SWAP, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* %14, align 4
  %201 = or i32 %200, %199
  store i32 %201, i32* %14, align 4
  %202 = load i32, i32* @COMA_RAW_RGB, align 4
  %203 = load i32, i32* @COMA_RGB, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* %13, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %13, align 4
  br label %214

207:                                              ; preds = %2
  %208 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %209 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %208, i32 0, i32 0
  %210 = load i32, i32* %10, align 4
  %211 = call i32 @dev_err(i32* %209, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %210)
  %212 = load i32, i32* @EINVAL, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %3, align 4
  br label %361

214:                                              ; preds = %191, %190, %161, %120, %106, %92
  %215 = load i32, i32* %10, align 4
  %216 = load %struct.ov6650*, %struct.ov6650** %7, align 8
  %217 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 4
  %218 = load i32, i32* %10, align 4
  %219 = icmp eq i32 %218, 130
  br i1 %219, label %223, label %220

220:                                              ; preds = %214
  %221 = load i32, i32* %10, align 4
  %222 = icmp eq i32 %221, 133
  br i1 %222, label %223, label %227

223:                                              ; preds = %220, %214
  %224 = load i32, i32* @COML_ONE_CHANNEL, align 4
  store i32 %224, i32* %16, align 4
  store i32 0, i32* %15, align 4
  %225 = load %struct.ov6650*, %struct.ov6650** %7, align 8
  %226 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %225, i32 0, i32 1
  store i32 4000000, i32* %226, align 4
  br label %231

227:                                              ; preds = %220
  store i32 0, i32* %16, align 4
  %228 = load i32, i32* @COML_ONE_CHANNEL, align 4
  store i32 %228, i32* %15, align 4
  %229 = load %struct.ov6650*, %struct.ov6650** %7, align 8
  %230 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %229, i32 0, i32 1
  store i32 8000000, i32* %230, align 4
  br label %231

231:                                              ; preds = %227, %223
  %232 = load i32, i32* %10, align 4
  %233 = icmp eq i32 %232, 133
  br i1 %233, label %234, label %238

234:                                              ; preds = %231
  %235 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %236 = load %struct.ov6650*, %struct.ov6650** %7, align 8
  %237 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %236, i32 0, i32 5
  store i32 %235, i32* %237, align 4
  br label %246

238:                                              ; preds = %231
  %239 = load i32, i32* %10, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %238
  %242 = load i32, i32* @V4L2_COLORSPACE_JPEG, align 4
  %243 = load %struct.ov6650*, %struct.ov6650** %7, align 8
  %244 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %243, i32 0, i32 5
  store i32 %242, i32* %244, align 4
  br label %245

245:                                              ; preds = %241, %238
  br label %246

246:                                              ; preds = %245, %234
  %247 = load i32, i32* %8, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %260

249:                                              ; preds = %246
  %250 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %251 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %250, i32 0, i32 0
  %252 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %251, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %253 = load i32, i32* @COMA_QCIF, align 4
  %254 = load i32, i32* %13, align 4
  %255 = or i32 %254, %253
  store i32 %255, i32* %13, align 4
  %256 = load %struct.ov6650*, %struct.ov6650** %7, align 8
  %257 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = sdiv i32 %258, 2
  store i32 %259, i32* %257, align 4
  br label %267

260:                                              ; preds = %246
  %261 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %262 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %261, i32 0, i32 0
  %263 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %262, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %264 = load i32, i32* @COMA_QCIF, align 4
  %265 = load i32, i32* %14, align 4
  %266 = or i32 %265, %264
  store i32 %266, i32* %14, align 4
  br label %267

267:                                              ; preds = %260, %249
  %268 = load i32, i32* %8, align 4
  %269 = load %struct.ov6650*, %struct.ov6650** %7, align 8
  %270 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %269, i32 0, i32 2
  store i32 %268, i32* %270, align 4
  %271 = load i32, i32* @CLKRC_12MHz, align 4
  store i32 %271, i32* %17, align 4
  store i64 12000000, i64* %11, align 8
  %272 = load %struct.ov6650*, %struct.ov6650** %7, align 8
  %273 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %272, i32 0, i32 3
  store i32 1334000, i32* %273, align 4
  %274 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %275 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %274, i32 0, i32 0
  %276 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %275, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %277 = load %struct.ov6650*, %struct.ov6650** %7, align 8
  %278 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %277, i32 0, i32 6
  %279 = load %struct.ov6650*, %struct.ov6650** %7, align 8
  %280 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.ov6650*, %struct.ov6650** %7, align 8
  %283 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @to_clkrc(i32* %278, i32 %281, i32 %284)
  %286 = load i32, i32* %17, align 4
  %287 = or i32 %286, %285
  store i32 %287, i32* %17, align 4
  %288 = load %struct.ov6650*, %struct.ov6650** %7, align 8
  %289 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = sext i32 %290 to i64
  %292 = load i32, i32* %17, align 4
  %293 = call i64 @GET_CLKRC_DIV(i32 %292)
  %294 = udiv i64 %291, %293
  store i64 %294, i64* %12, align 8
  %295 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %296 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %295, i32 0, i32 0
  %297 = load i64, i64* %11, align 8
  %298 = load i64, i64* %12, align 8
  %299 = udiv i64 %297, %298
  %300 = load i64, i64* %11, align 8
  %301 = mul i64 10, %300
  %302 = load i64, i64* %12, align 8
  %303 = urem i64 %301, %302
  %304 = load i64, i64* %12, align 8
  %305 = udiv i64 %303, %304
  %306 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %296, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i64 %299, i64 %305)
  %307 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %308 = call i32 @ov6650_set_selection(%struct.v4l2_subdev* %307, i32* null, %struct.v4l2_subdev_selection* %9)
  store i32 %308, i32* %18, align 4
  %309 = load i32, i32* %18, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %317, label %311

311:                                              ; preds = %267
  %312 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %313 = load i32, i32* @REG_COMA, align 4
  %314 = load i32, i32* %13, align 4
  %315 = load i32, i32* %14, align 4
  %316 = call i32 @ov6650_reg_rmw(%struct.i2c_client* %312, i32 %313, i32 %314, i32 %315)
  store i32 %316, i32* %18, align 4
  br label %317

317:                                              ; preds = %311, %267
  %318 = load i32, i32* %18, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %325, label %320

320:                                              ; preds = %317
  %321 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %322 = load i32, i32* @REG_CLKRC, align 4
  %323 = load i32, i32* %17, align 4
  %324 = call i32 @ov6650_reg_write(%struct.i2c_client* %321, i32 %322, i32 %323)
  store i32 %324, i32* %18, align 4
  br label %325

325:                                              ; preds = %320, %317
  %326 = load i32, i32* %18, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %334, label %328

328:                                              ; preds = %325
  %329 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %330 = load i32, i32* @REG_COML, align 4
  %331 = load i32, i32* %15, align 4
  %332 = load i32, i32* %16, align 4
  %333 = call i32 @ov6650_reg_rmw(%struct.i2c_client* %329, i32 %330, i32 %331, i32 %332)
  store i32 %333, i32* %18, align 4
  br label %334

334:                                              ; preds = %328, %325
  %335 = load i32, i32* %18, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %359, label %337

337:                                              ; preds = %334
  %338 = load %struct.ov6650*, %struct.ov6650** %7, align 8
  %339 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %338, i32 0, i32 5
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %342 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %341, i32 0, i32 3
  store i32 %340, i32* %342, align 4
  %343 = load %struct.ov6650*, %struct.ov6650** %7, align 8
  %344 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %343, i32 0, i32 4
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = load i32, i32* %8, align 4
  %348 = ashr i32 %346, %347
  %349 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %350 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %349, i32 0, i32 0
  store i32 %348, i32* %350, align 4
  %351 = load %struct.ov6650*, %struct.ov6650** %7, align 8
  %352 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %351, i32 0, i32 4
  %353 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = load i32, i32* %8, align 4
  %356 = ashr i32 %354, %355
  %357 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %358 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %357, i32 0, i32 1
  store i32 %356, i32* %358, align 4
  br label %359

359:                                              ; preds = %337, %334
  %360 = load i32, i32* %18, align 4
  store i32 %360, i32* %3, align 4
  br label %361

361:                                              ; preds = %359, %207
  %362 = load i32, i32* %3, align 4
  ret i32 %362
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.ov6650* @to_ov6650(%struct.i2c_client*) #1

declare dso_local i32 @is_unscaled_ok(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @to_clkrc(i32*, i32, i32) #1

declare dso_local i64 @GET_CLKRC_DIV(i32) #1

declare dso_local i32 @ov6650_set_selection(%struct.v4l2_subdev*, i32*, %struct.v4l2_subdev_selection*) #1

declare dso_local i32 @ov6650_reg_rmw(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @ov6650_reg_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
