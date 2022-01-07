; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_enable_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_enable_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_line = type { i32, %struct.TYPE_8__, %struct.TYPE_9__, %struct.vfe_output }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.vfe_output = type { i32, i32*, i32, i32, i32, i64, i64, i64, i32** }
%struct.vfe_device = type { i32, %struct.TYPE_10__*, i32, %struct.vfe_hw_ops* }
%struct.TYPE_10__ = type { i32 }
%struct.vfe_hw_ops = type { i32 (i32)*, i32 (%struct.vfe_device.0*, i32)*, i32 (%struct.vfe_device.1*, i32)*, i32 (%struct.vfe_device.2*)*, i32 (%struct.vfe_device.3*, %struct.vfe_line*)*, i32 (%struct.vfe_device.4*, %struct.vfe_line*)*, i32 (%struct.vfe_device.5*, %struct.vfe_line*)*, i32 (%struct.vfe_device.6*, %struct.vfe_output*, i32)*, i32 (%struct.vfe_device.7*, %struct.vfe_line*, i32)*, i32 (%struct.vfe_device.8*, %struct.vfe_line*)*, i32 (%struct.vfe_device.9*, i32)*, i32 (%struct.vfe_device.10*, i32, i32, i32)*, i32 (%struct.vfe_device.11*, i32)*, i32 (%struct.vfe_device.12*, i32, i32)*, i32 (%struct.vfe_device.13*, i32, i32*, i32, i32)*, i32 (%struct.vfe_device.14*, i32, i32, i32)*, i32 (%struct.vfe_device.15*, i32)*, i32 (%struct.vfe_device.16*, i32, i32)*, i32 (%struct.vfe_device.17*, i32, i32)*, i32 (%struct.vfe_device.18*, i32, i32)*, i32 (%struct.vfe_device.19*, i32, i32)*, i32 (%struct.vfe_device.20*, i32, i32, i32)*, i32 (%struct.vfe_device.21*, i32)* }
%struct.vfe_device.0 = type opaque
%struct.vfe_device.1 = type opaque
%struct.vfe_device.2 = type opaque
%struct.vfe_device.3 = type opaque
%struct.vfe_device.4 = type opaque
%struct.vfe_device.5 = type opaque
%struct.vfe_device.6 = type opaque
%struct.vfe_device.7 = type opaque
%struct.vfe_device.8 = type opaque
%struct.vfe_device.9 = type opaque
%struct.vfe_device.10 = type opaque
%struct.vfe_device.11 = type opaque
%struct.vfe_device.12 = type opaque
%struct.vfe_device.13 = type opaque
%struct.vfe_device.14 = type opaque
%struct.vfe_device.15 = type opaque
%struct.vfe_device.16 = type opaque
%struct.vfe_device.17 = type opaque
%struct.vfe_device.18 = type opaque
%struct.vfe_device.19 = type opaque
%struct.vfe_device.20 = type opaque
%struct.vfe_device.21 = type opaque
%struct.media_entity = type { i32 }
%struct.v4l2_subdev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@g_skip_frames = common dso_local global i32 0, align 4
@VFE_FRAME_DROP_VAL = common dso_local global i32 0, align 4
@VFE_OUTPUT_RESERVED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Output is not in reserved state %d\0A\00", align 1
@VFE_OUTPUT_IDLE = common dso_local global i32 0, align 4
@VFE_LINE_PIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfe_line*)* @vfe_enable_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfe_enable_output(%struct.vfe_line* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vfe_line*, align 8
  %4 = alloca %struct.vfe_device*, align 8
  %5 = alloca %struct.vfe_output*, align 8
  %6 = alloca %struct.vfe_hw_ops*, align 8
  %7 = alloca %struct.media_entity*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.v4l2_subdev*, align 8
  store %struct.vfe_line* %0, %struct.vfe_line** %3, align 8
  %13 = load %struct.vfe_line*, %struct.vfe_line** %3, align 8
  %14 = call %struct.vfe_device* @to_vfe(%struct.vfe_line* %13)
  store %struct.vfe_device* %14, %struct.vfe_device** %4, align 8
  %15 = load %struct.vfe_line*, %struct.vfe_line** %3, align 8
  %16 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %15, i32 0, i32 3
  store %struct.vfe_output* %16, %struct.vfe_output** %5, align 8
  %17 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %18 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %17, i32 0, i32 3
  %19 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %18, align 8
  store %struct.vfe_hw_ops* %19, %struct.vfe_hw_ops** %6, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %6, align 8
  %21 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %20, i32 0, i32 0
  %22 = load i32 (i32)*, i32 (i32)** %21, align 8
  %23 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %24 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 %22(i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %503

32:                                               ; preds = %1
  %33 = load %struct.vfe_line*, %struct.vfe_line** %3, align 8
  %34 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = call %struct.media_entity* @camss_find_sensor(i32* %35)
  store %struct.media_entity* %36, %struct.media_entity** %7, align 8
  %37 = load %struct.media_entity*, %struct.media_entity** %7, align 8
  %38 = icmp ne %struct.media_entity* %37, null
  br i1 %38, label %39, label %54

39:                                               ; preds = %32
  %40 = load %struct.media_entity*, %struct.media_entity** %7, align 8
  %41 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %40)
  store %struct.v4l2_subdev* %41, %struct.v4l2_subdev** %12, align 8
  %42 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %43 = load %struct.media_entity*, %struct.media_entity** %7, align 8
  %44 = load i32, i32* @g_skip_frames, align 4
  %45 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %42, %struct.media_entity* %43, i32 %44, i32* %9)
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @VFE_FRAME_DROP_VAL, align 4
  %48 = sub nsw i32 %47, 1
  %49 = icmp ugt i32 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load i32, i32* @VFE_FRAME_DROP_VAL, align 4
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %50, %39
  br label %54

54:                                               ; preds = %53, %32
  %55 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %56 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %55, i32 0, i32 0
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @spin_lock_irqsave(i32* %56, i64 %57)
  %59 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %6, align 8
  %60 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %59, i32 0, i32 22
  %61 = load i32 (%struct.vfe_device.21*, i32)*, i32 (%struct.vfe_device.21*, i32)** %60, align 8
  %62 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %63 = bitcast %struct.vfe_device* %62 to %struct.vfe_device.21*
  %64 = load %struct.vfe_line*, %struct.vfe_line** %3, align 8
  %65 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 %61(%struct.vfe_device.21* %63, i32 %66)
  %68 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %69 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @VFE_OUTPUT_RESERVED, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %54
  %74 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %75 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %74, i32 0, i32 1
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %80 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %84 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %83, i32 0, i32 0
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %503

89:                                               ; preds = %54
  %90 = load i32, i32* @VFE_OUTPUT_IDLE, align 4
  %91 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %92 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %94 = call i8* @vfe_buf_get_pending(%struct.vfe_output* %93)
  %95 = bitcast i8* %94 to i32*
  %96 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %97 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %96, i32 0, i32 8
  %98 = load i32**, i32*** %97, align 8
  %99 = getelementptr inbounds i32*, i32** %98, i64 0
  store i32* %95, i32** %99, align 8
  %100 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %101 = call i8* @vfe_buf_get_pending(%struct.vfe_output* %100)
  %102 = bitcast i8* %101 to i32*
  %103 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %104 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %103, i32 0, i32 8
  %105 = load i32**, i32*** %104, align 8
  %106 = getelementptr inbounds i32*, i32** %105, i64 1
  store i32* %102, i32** %106, align 8
  %107 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %108 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %107, i32 0, i32 8
  %109 = load i32**, i32*** %108, align 8
  %110 = getelementptr inbounds i32*, i32** %109, i64 0
  %111 = load i32*, i32** %110, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %134, label %113

113:                                              ; preds = %89
  %114 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %115 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %114, i32 0, i32 8
  %116 = load i32**, i32*** %115, align 8
  %117 = getelementptr inbounds i32*, i32** %116, i64 1
  %118 = load i32*, i32** %117, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %134

120:                                              ; preds = %113
  %121 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %122 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %121, i32 0, i32 8
  %123 = load i32**, i32*** %122, align 8
  %124 = getelementptr inbounds i32*, i32** %123, i64 1
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %127 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %126, i32 0, i32 8
  %128 = load i32**, i32*** %127, align 8
  %129 = getelementptr inbounds i32*, i32** %128, i64 0
  store i32* %125, i32** %129, align 8
  %130 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %131 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %130, i32 0, i32 8
  %132 = load i32**, i32*** %131, align 8
  %133 = getelementptr inbounds i32*, i32** %132, i64 1
  store i32* null, i32** %133, align 8
  br label %134

134:                                              ; preds = %120, %113, %89
  %135 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %136 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %135, i32 0, i32 8
  %137 = load i32**, i32*** %136, align 8
  %138 = getelementptr inbounds i32*, i32** %137, i64 0
  %139 = load i32*, i32** %138, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %134
  %142 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %143 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %142, i32 0, i32 0
  store i32 128, i32* %143, align 8
  br label %144

144:                                              ; preds = %141, %134
  %145 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %146 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %145, i32 0, i32 8
  %147 = load i32**, i32*** %146, align 8
  %148 = getelementptr inbounds i32*, i32** %147, i64 1
  %149 = load i32*, i32** %148, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %154

151:                                              ; preds = %144
  %152 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %153 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %152, i32 0, i32 0
  store i32 129, i32* %153, align 8
  br label %154

154:                                              ; preds = %151, %144
  %155 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %156 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  switch i32 %157, label %170 [
    i32 128, label %158
    i32 129, label %164
  ]

158:                                              ; preds = %154
  %159 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %160 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %161 = load i32, i32* %9, align 4
  %162 = shl i32 1, %161
  %163 = call i32 @vfe_output_frame_drop(%struct.vfe_device* %159, %struct.vfe_output* %160, i32 %162)
  br label %174

164:                                              ; preds = %154
  %165 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %166 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %167 = load i32, i32* %9, align 4
  %168 = shl i32 3, %167
  %169 = call i32 @vfe_output_frame_drop(%struct.vfe_device* %165, %struct.vfe_output* %166, i32 %168)
  br label %174

170:                                              ; preds = %154
  %171 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %172 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %173 = call i32 @vfe_output_frame_drop(%struct.vfe_device* %171, %struct.vfe_output* %172, i32 0)
  br label %174

174:                                              ; preds = %170, %164, %158
  %175 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %176 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %175, i32 0, i32 7
  store i64 0, i64* %176, align 8
  %177 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %178 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %177, i32 0, i32 6
  store i64 0, i64* %178, align 8
  %179 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %180 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %179, i32 0, i32 5
  store i64 0, i64* %180, align 8
  %181 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %182 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %181, i32 0, i32 4
  %183 = call i32 @reinit_completion(i32* %182)
  %184 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %185 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %184, i32 0, i32 3
  %186 = call i32 @reinit_completion(i32* %185)
  %187 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %188 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %189 = call i32 @vfe_output_init_addrs(%struct.vfe_device* %187, %struct.vfe_output* %188, i32 0)
  %190 = load %struct.vfe_line*, %struct.vfe_line** %3, align 8
  %191 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @VFE_LINE_PIX, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %308

195:                                              ; preds = %174
  %196 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %6, align 8
  %197 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %196, i32 0, i32 17
  %198 = load i32 (%struct.vfe_device.16*, i32, i32)*, i32 (%struct.vfe_device.16*, i32, i32)** %197, align 8
  %199 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %200 = bitcast %struct.vfe_device* %199 to %struct.vfe_device.16*
  %201 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %202 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 %198(%struct.vfe_device.16* %200, i32 %205, i32 1)
  %207 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %6, align 8
  %208 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %207, i32 0, i32 21
  %209 = load i32 (%struct.vfe_device.20*, i32, i32, i32)*, i32 (%struct.vfe_device.20*, i32, i32, i32)** %208, align 8
  %210 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %211 = bitcast %struct.vfe_device* %210 to %struct.vfe_device.20*
  %212 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %213 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.vfe_line*, %struct.vfe_line** %3, align 8
  %218 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = call i32 %209(%struct.vfe_device.20* %211, i32 %216, i32 %219, i32 1)
  %221 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %6, align 8
  %222 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %221, i32 0, i32 20
  %223 = load i32 (%struct.vfe_device.19*, i32, i32)*, i32 (%struct.vfe_device.19*, i32, i32)** %222, align 8
  %224 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %225 = bitcast %struct.vfe_device* %224 to %struct.vfe_device.19*
  %226 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %227 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %226, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.vfe_line*, %struct.vfe_line** %3, align 8
  %232 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = call i32 %223(%struct.vfe_device.19* %225, i32 %230, i32 %233)
  %235 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %6, align 8
  %236 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %235, i32 0, i32 16
  %237 = load i32 (%struct.vfe_device.15*, i32)*, i32 (%struct.vfe_device.15*, i32)** %236, align 8
  %238 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %239 = bitcast %struct.vfe_device* %238 to %struct.vfe_device.15*
  %240 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %241 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %240, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 0
  %244 = load i32, i32* %243, align 4
  %245 = call i32 %237(%struct.vfe_device.15* %239, i32 %244)
  %246 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %6, align 8
  %247 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %246, i32 0, i32 19
  %248 = load i32 (%struct.vfe_device.18*, i32, i32)*, i32 (%struct.vfe_device.18*, i32, i32)** %247, align 8
  %249 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %250 = bitcast %struct.vfe_device* %249 to %struct.vfe_device.18*
  %251 = load %struct.vfe_line*, %struct.vfe_line** %3, align 8
  %252 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = call i32 %248(%struct.vfe_device.18* %250, i32 %253, i32 0)
  %255 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %6, align 8
  %256 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %255, i32 0, i32 15
  %257 = load i32 (%struct.vfe_device.14*, i32, i32, i32)*, i32 (%struct.vfe_device.14*, i32, i32, i32)** %256, align 8
  %258 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %259 = bitcast %struct.vfe_device* %258 to %struct.vfe_device.14*
  %260 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %261 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %260, i32 0, i32 1
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 0
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* %11, align 4
  %266 = add nsw i32 %265, 1
  %267 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %268 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %267, i32 0, i32 1
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 0
  %271 = load i32, i32* %270, align 4
  %272 = mul nsw i32 %266, %271
  %273 = load i32, i32* %11, align 4
  %274 = call i32 %257(%struct.vfe_device.14* %259, i32 %264, i32 %272, i32 %273)
  %275 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %6, align 8
  %276 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %275, i32 0, i32 18
  %277 = load i32 (%struct.vfe_device.17*, i32, i32)*, i32 (%struct.vfe_device.17*, i32, i32)** %276, align 8
  %278 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %279 = bitcast %struct.vfe_device* %278 to %struct.vfe_device.17*
  %280 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %281 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %280, i32 0, i32 1
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 0
  %284 = load i32, i32* %283, align 4
  %285 = call i32 %277(%struct.vfe_device.17* %279, i32 %284, i32 1)
  %286 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %6, align 8
  %287 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %286, i32 0, i32 13
  %288 = load i32 (%struct.vfe_device.12*, i32, i32)*, i32 (%struct.vfe_device.12*, i32, i32)** %287, align 8
  %289 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %290 = bitcast %struct.vfe_device* %289 to %struct.vfe_device.12*
  %291 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %292 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %291, i32 0, i32 1
  %293 = load i32*, i32** %292, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 0
  %295 = load i32, i32* %294, align 4
  %296 = call i32 %288(%struct.vfe_device.12* %290, i32 %295, i32 1)
  %297 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %6, align 8
  %298 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %297, i32 0, i32 12
  %299 = load i32 (%struct.vfe_device.11*, i32)*, i32 (%struct.vfe_device.11*, i32)** %298, align 8
  %300 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %301 = bitcast %struct.vfe_device* %300 to %struct.vfe_device.11*
  %302 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %303 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %302, i32 0, i32 1
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 0
  %306 = load i32, i32* %305, align 4
  %307 = call i32 %299(%struct.vfe_device.11* %301, i32 %306)
  br label %489

308:                                              ; preds = %174
  %309 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %310 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* %11, align 4
  %313 = sdiv i32 %312, %311
  store i32 %313, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %314

314:                                              ; preds = %416, %308
  %315 = load i32, i32* %10, align 4
  %316 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %317 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 8
  %319 = icmp ult i32 %315, %318
  br i1 %319, label %320, label %419

320:                                              ; preds = %314
  %321 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %6, align 8
  %322 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %321, i32 0, i32 17
  %323 = load i32 (%struct.vfe_device.16*, i32, i32)*, i32 (%struct.vfe_device.16*, i32, i32)** %322, align 8
  %324 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %325 = bitcast %struct.vfe_device* %324 to %struct.vfe_device.16*
  %326 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %327 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %326, i32 0, i32 1
  %328 = load i32*, i32** %327, align 8
  %329 = load i32, i32* %10, align 4
  %330 = zext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = call i32 %323(%struct.vfe_device.16* %325, i32 %332, i32 1)
  %334 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %6, align 8
  %335 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %334, i32 0, i32 16
  %336 = load i32 (%struct.vfe_device.15*, i32)*, i32 (%struct.vfe_device.15*, i32)** %335, align 8
  %337 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %338 = bitcast %struct.vfe_device* %337 to %struct.vfe_device.15*
  %339 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %340 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %339, i32 0, i32 1
  %341 = load i32*, i32** %340, align 8
  %342 = load i32, i32* %10, align 4
  %343 = zext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %341, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = call i32 %336(%struct.vfe_device.15* %338, i32 %345)
  %347 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %6, align 8
  %348 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %347, i32 0, i32 15
  %349 = load i32 (%struct.vfe_device.14*, i32, i32, i32)*, i32 (%struct.vfe_device.14*, i32, i32, i32)** %348, align 8
  %350 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %351 = bitcast %struct.vfe_device* %350 to %struct.vfe_device.14*
  %352 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %353 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %352, i32 0, i32 1
  %354 = load i32*, i32** %353, align 8
  %355 = load i32, i32* %10, align 4
  %356 = zext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %354, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* %11, align 4
  %360 = add nsw i32 %359, 1
  %361 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %362 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %361, i32 0, i32 1
  %363 = load i32*, i32** %362, align 8
  %364 = load i32, i32* %10, align 4
  %365 = zext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %363, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = mul nsw i32 %360, %367
  %369 = load i32, i32* %11, align 4
  %370 = call i32 %349(%struct.vfe_device.14* %351, i32 %358, i32 %368, i32 %369)
  %371 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %6, align 8
  %372 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %371, i32 0, i32 14
  %373 = load i32 (%struct.vfe_device.13*, i32, i32*, i32, i32)*, i32 (%struct.vfe_device.13*, i32, i32*, i32, i32)** %372, align 8
  %374 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %375 = bitcast %struct.vfe_device* %374 to %struct.vfe_device.13*
  %376 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %377 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %376, i32 0, i32 1
  %378 = load i32*, i32** %377, align 8
  %379 = load i32, i32* %10, align 4
  %380 = zext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %378, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = load %struct.vfe_line*, %struct.vfe_line** %3, align 8
  %384 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %383, i32 0, i32 1
  %385 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %386, i32 0, i32 0
  %388 = load i32, i32* %10, align 4
  %389 = call i32 %373(%struct.vfe_device.13* %375, i32 %382, i32* %387, i32 %388, i32 1)
  %390 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %6, align 8
  %391 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %390, i32 0, i32 13
  %392 = load i32 (%struct.vfe_device.12*, i32, i32)*, i32 (%struct.vfe_device.12*, i32, i32)** %391, align 8
  %393 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %394 = bitcast %struct.vfe_device* %393 to %struct.vfe_device.12*
  %395 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %396 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %395, i32 0, i32 1
  %397 = load i32*, i32** %396, align 8
  %398 = load i32, i32* %10, align 4
  %399 = zext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %397, i64 %399
  %401 = load i32, i32* %400, align 4
  %402 = call i32 %392(%struct.vfe_device.12* %394, i32 %401, i32 1)
  %403 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %6, align 8
  %404 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %403, i32 0, i32 12
  %405 = load i32 (%struct.vfe_device.11*, i32)*, i32 (%struct.vfe_device.11*, i32)** %404, align 8
  %406 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %407 = bitcast %struct.vfe_device* %406 to %struct.vfe_device.11*
  %408 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %409 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %408, i32 0, i32 1
  %410 = load i32*, i32** %409, align 8
  %411 = load i32, i32* %10, align 4
  %412 = zext i32 %411 to i64
  %413 = getelementptr inbounds i32, i32* %410, i64 %412
  %414 = load i32, i32* %413, align 4
  %415 = call i32 %405(%struct.vfe_device.11* %407, i32 %414)
  br label %416

416:                                              ; preds = %320
  %417 = load i32, i32* %10, align 4
  %418 = add i32 %417, 1
  store i32 %418, i32* %10, align 4
  br label %314

419:                                              ; preds = %314
  %420 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %6, align 8
  %421 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %420, i32 0, i32 11
  %422 = load i32 (%struct.vfe_device.10*, i32, i32, i32)*, i32 (%struct.vfe_device.10*, i32, i32, i32)** %421, align 8
  %423 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %424 = bitcast %struct.vfe_device* %423 to %struct.vfe_device.10*
  %425 = load %struct.vfe_line*, %struct.vfe_line** %3, align 8
  %426 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = call i32 %422(%struct.vfe_device.10* %424, i32 0, i32 %427, i32 1)
  %429 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %6, align 8
  %430 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %429, i32 0, i32 10
  %431 = load i32 (%struct.vfe_device.9*, i32)*, i32 (%struct.vfe_device.9*, i32)** %430, align 8
  %432 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %433 = bitcast %struct.vfe_device* %432 to %struct.vfe_device.9*
  %434 = call i32 %431(%struct.vfe_device.9* %433, i32 1)
  %435 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %6, align 8
  %436 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %435, i32 0, i32 9
  %437 = load i32 (%struct.vfe_device.8*, %struct.vfe_line*)*, i32 (%struct.vfe_device.8*, %struct.vfe_line*)** %436, align 8
  %438 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %439 = bitcast %struct.vfe_device* %438 to %struct.vfe_device.8*
  %440 = load %struct.vfe_line*, %struct.vfe_line** %3, align 8
  %441 = call i32 %437(%struct.vfe_device.8* %439, %struct.vfe_line* %440)
  %442 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %6, align 8
  %443 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %442, i32 0, i32 8
  %444 = load i32 (%struct.vfe_device.7*, %struct.vfe_line*, i32)*, i32 (%struct.vfe_device.7*, %struct.vfe_line*, i32)** %443, align 8
  %445 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %446 = bitcast %struct.vfe_device* %445 to %struct.vfe_device.7*
  %447 = load %struct.vfe_line*, %struct.vfe_line** %3, align 8
  %448 = call i32 %444(%struct.vfe_device.7* %446, %struct.vfe_line* %447, i32 1)
  %449 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %6, align 8
  %450 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %449, i32 0, i32 7
  %451 = load i32 (%struct.vfe_device.6*, %struct.vfe_output*, i32)*, i32 (%struct.vfe_device.6*, %struct.vfe_output*, i32)** %450, align 8
  %452 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %453 = bitcast %struct.vfe_device* %452 to %struct.vfe_device.6*
  %454 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %455 = call i32 %451(%struct.vfe_device.6* %453, %struct.vfe_output* %454, i32 1)
  %456 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %6, align 8
  %457 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %456, i32 0, i32 6
  %458 = load i32 (%struct.vfe_device.5*, %struct.vfe_line*)*, i32 (%struct.vfe_device.5*, %struct.vfe_line*)** %457, align 8
  %459 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %460 = bitcast %struct.vfe_device* %459 to %struct.vfe_device.5*
  %461 = load %struct.vfe_line*, %struct.vfe_line** %3, align 8
  %462 = call i32 %458(%struct.vfe_device.5* %460, %struct.vfe_line* %461)
  %463 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %6, align 8
  %464 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %463, i32 0, i32 5
  %465 = load i32 (%struct.vfe_device.4*, %struct.vfe_line*)*, i32 (%struct.vfe_device.4*, %struct.vfe_line*)** %464, align 8
  %466 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %467 = bitcast %struct.vfe_device* %466 to %struct.vfe_device.4*
  %468 = load %struct.vfe_line*, %struct.vfe_line** %3, align 8
  %469 = call i32 %465(%struct.vfe_device.4* %467, %struct.vfe_line* %468)
  %470 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %6, align 8
  %471 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %470, i32 0, i32 4
  %472 = load i32 (%struct.vfe_device.3*, %struct.vfe_line*)*, i32 (%struct.vfe_device.3*, %struct.vfe_line*)** %471, align 8
  %473 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %474 = bitcast %struct.vfe_device* %473 to %struct.vfe_device.3*
  %475 = load %struct.vfe_line*, %struct.vfe_line** %3, align 8
  %476 = call i32 %472(%struct.vfe_device.3* %474, %struct.vfe_line* %475)
  %477 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %6, align 8
  %478 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %477, i32 0, i32 3
  %479 = load i32 (%struct.vfe_device.2*)*, i32 (%struct.vfe_device.2*)** %478, align 8
  %480 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %481 = bitcast %struct.vfe_device* %480 to %struct.vfe_device.2*
  %482 = call i32 %479(%struct.vfe_device.2* %481)
  %483 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %6, align 8
  %484 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %483, i32 0, i32 2
  %485 = load i32 (%struct.vfe_device.1*, i32)*, i32 (%struct.vfe_device.1*, i32)** %484, align 8
  %486 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %487 = bitcast %struct.vfe_device* %486 to %struct.vfe_device.1*
  %488 = call i32 %485(%struct.vfe_device.1* %487, i32 1)
  br label %489

489:                                              ; preds = %419, %195
  %490 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %6, align 8
  %491 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %490, i32 0, i32 1
  %492 = load i32 (%struct.vfe_device.0*, i32)*, i32 (%struct.vfe_device.0*, i32)** %491, align 8
  %493 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %494 = bitcast %struct.vfe_device* %493 to %struct.vfe_device.0*
  %495 = load %struct.vfe_line*, %struct.vfe_line** %3, align 8
  %496 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %495, i32 0, i32 0
  %497 = load i32, i32* %496, align 8
  %498 = call i32 %492(%struct.vfe_device.0* %494, i32 %497)
  %499 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %500 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %499, i32 0, i32 0
  %501 = load i64, i64* %8, align 8
  %502 = call i32 @spin_unlock_irqrestore(i32* %500, i64 %501)
  store i32 0, i32* %2, align 4
  br label %503

503:                                              ; preds = %489, %73, %29
  %504 = load i32, i32* %2, align 4
  ret i32 %504
}

declare dso_local %struct.vfe_device* @to_vfe(%struct.vfe_line*) #1

declare dso_local %struct.media_entity* @camss_find_sensor(i32*) #1

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity*) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, %struct.media_entity*, i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i8* @vfe_buf_get_pending(%struct.vfe_output*) #1

declare dso_local i32 @vfe_output_frame_drop(%struct.vfe_device*, %struct.vfe_output*, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @vfe_output_init_addrs(%struct.vfe_device*, %struct.vfe_output*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
