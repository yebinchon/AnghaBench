; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_read_frame_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_read_frame_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smiapp_sensor = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_client = type { i32 }

@SMIAPP_REG_U8_FRAME_FORMAT_MODEL_TYPE = common dso_local global i32 0, align 4
@SMIAPP_REG_U8_FRAME_FORMAT_MODEL_SUBTYPE = common dso_local global i32 0, align 4
@SMIAPP_FRAME_FORMAT_MODEL_SUBTYPE_NCOLS_MASK = common dso_local global i32 0, align 4
@SMIAPP_FRAME_FORMAT_MODEL_SUBTYPE_NCOLS_SHIFT = common dso_local global i32 0, align 4
@SMIAPP_FRAME_FORMAT_MODEL_SUBTYPE_NROWS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"format_model_type %s\0A\00", align 1
@SMIAPP_FRAME_FORMAT_MODEL_TYPE_2BYTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"2 byte\00", align 1
@SMIAPP_FRAME_FORMAT_MODEL_TYPE_4BYTE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"4 byte\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"is simply bad\00", align 1
@SMIAPP_FRAME_FORMAT_DESC_2_PIXELCODE_MASK = common dso_local global i32 0, align 4
@SMIAPP_FRAME_FORMAT_DESC_2_PIXELCODE_SHIFT = common dso_local global i32 0, align 4
@SMIAPP_FRAME_FORMAT_DESC_2_PIXELS_MASK = common dso_local global i32 0, align 4
@SMIAPP_FRAME_FORMAT_DESC_4_PIXELCODE_MASK = common dso_local global i32 0, align 4
@SMIAPP_FRAME_FORMAT_DESC_4_PIXELCODE_SHIFT = common dso_local global i32 0, align 4
@SMIAPP_FRAME_FORMAT_DESC_4_PIXELS_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"invalid frame format model type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"columns\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"rows\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"embedded\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"dark\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"0x%8.8x %s pixels: %d %s (pixelcode %u)\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"adjusting image start line to %u (was %u)\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"embedded data from lines %d to %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"image data starts at line %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smiapp_sensor*)* @smiapp_read_frame_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smiapp_read_frame_fmt(%struct.smiapp_sensor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smiapp_sensor*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.smiapp_sensor* %0, %struct.smiapp_sensor** %3, align 8
  %19 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %20 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %19, i32 0, i32 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %22)
  store %struct.i2c_client* %23, %struct.i2c_client** %4, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %24 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %25 = load i32, i32* @SMIAPP_REG_U8_FRAME_FORMAT_MODEL_TYPE, align 4
  %26 = call i32 @smiapp_read(%struct.smiapp_sensor* %24, i32 %25, i32* %5)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %2, align 4
  br label %227

31:                                               ; preds = %1
  %32 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %33 = load i32, i32* @SMIAPP_REG_U8_FRAME_FORMAT_MODEL_SUBTYPE, align 4
  %34 = call i32 @smiapp_read(%struct.smiapp_sensor* %32, i32 %33, i32* %6)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %2, align 4
  br label %227

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @SMIAPP_FRAME_FORMAT_MODEL_SUBTYPE_NCOLS_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @SMIAPP_FRAME_FORMAT_MODEL_SUBTYPE_NCOLS_SHIFT, align 4
  %44 = lshr i32 %42, %43
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @SMIAPP_FRAME_FORMAT_MODEL_SUBTYPE_NROWS_MASK, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %8, align 4
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 0
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @SMIAPP_FRAME_FORMAT_MODEL_TYPE_2BYTE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %39
  br label %60

54:                                               ; preds = %39
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @SMIAPP_FRAME_FORMAT_MODEL_TYPE_4BYTE, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0)
  br label %60

60:                                               ; preds = %54, %53
  %61 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %53 ], [ %59, %54 ]
  %62 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %61)
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %185, %60
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = add i32 %65, %66
  %68 = icmp ult i32 %64, %67
  br i1 %68, label %69, label %188

69:                                               ; preds = %63
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @SMIAPP_FRAME_FORMAT_MODEL_TYPE_2BYTE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %92

73:                                               ; preds = %69
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @SMIAPP_REG_U16_FRAME_FORMAT_DESCRIPTOR_2(i32 %74)
  store i32 %75, i32* %18, align 4
  %76 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %77 = load i32, i32* %18, align 4
  %78 = call i32 @smiapp_read(%struct.smiapp_sensor* %76, i32 %77, i32* %13)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %2, align 4
  br label %227

83:                                               ; preds = %73
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* @SMIAPP_FRAME_FORMAT_DESC_2_PIXELCODE_MASK, align 4
  %86 = and i32 %84, %85
  %87 = load i32, i32* @SMIAPP_FRAME_FORMAT_DESC_2_PIXELCODE_SHIFT, align 4
  %88 = lshr i32 %86, %87
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* @SMIAPP_FRAME_FORMAT_DESC_2_PIXELS_MASK, align 4
  %91 = and i32 %89, %90
  store i32 %91, i32* %15, align 4
  br label %123

92:                                               ; preds = %69
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @SMIAPP_FRAME_FORMAT_MODEL_TYPE_4BYTE, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %115

96:                                               ; preds = %92
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @SMIAPP_REG_U32_FRAME_FORMAT_DESCRIPTOR_4(i32 %97)
  store i32 %98, i32* %18, align 4
  %99 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %100 = load i32, i32* %18, align 4
  %101 = call i32 @smiapp_read(%struct.smiapp_sensor* %99, i32 %100, i32* %13)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %96
  %105 = load i32, i32* %12, align 4
  store i32 %105, i32* %2, align 4
  br label %227

106:                                              ; preds = %96
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @SMIAPP_FRAME_FORMAT_DESC_4_PIXELCODE_MASK, align 4
  %109 = and i32 %107, %108
  %110 = load i32, i32* @SMIAPP_FRAME_FORMAT_DESC_4_PIXELCODE_SHIFT, align 4
  %111 = lshr i32 %109, %110
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* @SMIAPP_FRAME_FORMAT_DESC_4_PIXELS_MASK, align 4
  %114 = and i32 %112, %113
  store i32 %114, i32* %15, align 4
  br label %122

115:                                              ; preds = %92
  %116 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %117 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %116, i32 0, i32 0
  %118 = load i32, i32* %5, align 4
  %119 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %117, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %2, align 4
  br label %227

122:                                              ; preds = %106
  br label %123

123:                                              ; preds = %122, %83
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp ult i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %16, align 8
  br label %129

128:                                              ; preds = %123
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %16, align 8
  br label %129

129:                                              ; preds = %128, %127
  %130 = load i32, i32* %14, align 4
  switch i32 %130, label %136 [
    i32 129, label %131
    i32 130, label %132
    i32 132, label %133
    i32 131, label %134
    i32 128, label %135
  ]

131:                                              ; preds = %129
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %17, align 8
  br label %137

132:                                              ; preds = %129
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %17, align 8
  br label %137

133:                                              ; preds = %129
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8** %17, align 8
  br label %137

134:                                              ; preds = %129
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %17, align 8
  br label %137

135:                                              ; preds = %129
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8** %17, align 8
  br label %137

136:                                              ; preds = %129
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8** %17, align 8
  br label %137

137:                                              ; preds = %136, %135, %134, %133, %132, %131
  %138 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %139 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %138, i32 0, i32 0
  %140 = load i32, i32* %18, align 4
  %141 = load i8*, i8** %17, align 8
  %142 = load i32, i32* %15, align 4
  %143 = load i8*, i8** %16, align 8
  %144 = load i32, i32* %14, align 4
  %145 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %139, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i32 %140, i8* %141, i32 %142, i8* %143, i32 %144)
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp ult i32 %146, %147
  br i1 %148, label %149, label %160

149:                                              ; preds = %137
  %150 = load i32, i32* %14, align 4
  %151 = icmp eq i32 %150, 128
  br i1 %151, label %152, label %156

152:                                              ; preds = %149
  %153 = load i32, i32* %10, align 4
  %154 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %155 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  br label %156

156:                                              ; preds = %152, %149
  %157 = load i32, i32* %15, align 4
  %158 = load i32, i32* %10, align 4
  %159 = add i32 %158, %157
  store i32 %159, i32* %10, align 4
  br label %185

160:                                              ; preds = %137
  %161 = load i32, i32* %14, align 4
  switch i32 %161, label %181 [
    i32 129, label %162
    i32 128, label %177
  ]

162:                                              ; preds = %160
  %163 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %164 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  br label %181

168:                                              ; preds = %162
  %169 = load i32, i32* %11, align 4
  %170 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %171 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %170, i32 0, i32 3
  store i32 %169, i32* %171, align 4
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* %15, align 4
  %174 = add i32 %172, %173
  %175 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %176 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  br label %181

177:                                              ; preds = %160
  %178 = load i32, i32* %11, align 4
  %179 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %180 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 8
  br label %181

181:                                              ; preds = %160, %177, %168, %167
  %182 = load i32, i32* %15, align 4
  %183 = load i32, i32* %11, align 4
  %184 = add i32 %183, %182
  store i32 %184, i32* %11, align 4
  br label %185

185:                                              ; preds = %181, %156
  %186 = load i32, i32* %9, align 4
  %187 = add i32 %186, 1
  store i32 %187, i32* %9, align 4
  br label %63

188:                                              ; preds = %63
  %189 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %190 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %193 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = icmp sgt i32 %191, %194
  br i1 %195, label %196, label %211

196:                                              ; preds = %188
  %197 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %198 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %197, i32 0, i32 0
  %199 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %200 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %203 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %198, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i32 %201, i32 %204)
  %206 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %207 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %210 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %209, i32 0, i32 2
  store i32 %208, i32* %210, align 8
  br label %211

211:                                              ; preds = %196, %188
  %212 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %213 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %212, i32 0, i32 0
  %214 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %215 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %218 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %213, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i32 %216, i32 %219)
  %221 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %222 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %221, i32 0, i32 0
  %223 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %224 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %222, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), i32 %225)
  store i32 0, i32* %2, align 4
  br label %227

227:                                              ; preds = %211, %115, %104, %81, %37, %29
  %228 = load i32, i32* %2, align 4
  ret i32 %228
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @smiapp_read(%struct.smiapp_sensor*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @SMIAPP_REG_U16_FRAME_FORMAT_DESCRIPTOR_2(i32) #1

declare dso_local i32 @SMIAPP_REG_U32_FRAME_FORMAT_DESCRIPTOR_4(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
