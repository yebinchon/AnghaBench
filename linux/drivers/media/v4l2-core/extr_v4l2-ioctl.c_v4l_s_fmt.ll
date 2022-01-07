; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_s_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_s_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_ioctl_ops = type { i32 (%struct.file*, i8*, i8*)*, i32 (%struct.file.0*, i8*, i8*)*, i32 (%struct.file.1*, i8*, i8*)*, i32 (%struct.file.2*, i8*, i8*)*, i32 (%struct.file.3*, i8*, i8*)*, i32 (%struct.file.4*, i8*, i8*)*, i32 (%struct.file.5*, i8*, i8*)*, i32 (%struct.file.6*, i8*, i8*)*, i32 (%struct.file.7*, i8*, i8*)*, i32 (%struct.file.8*, i8*, i8*)*, i32 (%struct.file.9*, i8*, i8*)*, i32 (%struct.file.10*, i8*, i8*)*, i32 (%struct.file.11*, i8*, i8*)*, i32 (%struct.file.12*, i8*, i8*)* }
%struct.file = type opaque
%struct.file.0 = type opaque
%struct.file.1 = type opaque
%struct.file.2 = type opaque
%struct.file.3 = type opaque
%struct.file.4 = type opaque
%struct.file.5 = type opaque
%struct.file.6 = type opaque
%struct.file.7 = type opaque
%struct.file.8 = type opaque
%struct.file.9 = type opaque
%struct.file.10 = type opaque
%struct.file.11 = type opaque
%struct.file.12 = type opaque
%struct.file.13 = type { i32 }
%struct.v4l2_format = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_9__ }
%struct.TYPE_7__ = type { i32, %struct.v4l2_format* }
%struct.TYPE_9__ = type { i8* }
%struct.video_device = type { i32 }

@fmt = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@V4L2_PIX_FMT_PRIV_MAGIC = common dso_local global i8* null, align 8
@VFL_TYPE_TOUCH = common dso_local global i32 0, align 4
@bytesperline = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ioctl_ops*, %struct.file.13*, i8*, i8*)* @v4l_s_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l_s_fmt(%struct.v4l2_ioctl_ops* %0, %struct.file.13* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_ioctl_ops*, align 8
  %7 = alloca %struct.file.13*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.v4l2_format*, align 8
  %11 = alloca %struct.video_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.v4l2_ioctl_ops* %0, %struct.v4l2_ioctl_ops** %6, align 8
  store %struct.file.13* %1, %struct.file.13** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.v4l2_format*
  store %struct.v4l2_format* %15, %struct.v4l2_format** %10, align 8
  %16 = load %struct.file.13*, %struct.file.13** %7, align 8
  %17 = call %struct.video_device* @video_devdata(%struct.file.13* %16)
  store %struct.video_device* %17, %struct.video_device** %11, align 8
  %18 = load %struct.file.13*, %struct.file.13** %7, align 8
  %19 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %20 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @check_fmt(%struct.file.13* %18, i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %5, align 4
  br label %420

27:                                               ; preds = %4
  %28 = load %struct.video_device*, %struct.video_device** %11, align 8
  %29 = call i32 @v4l_enable_media_source(%struct.video_device* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %5, align 4
  br label %420

34:                                               ; preds = %27
  %35 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %36 = call i32 @v4l_sanitize_format(%struct.v4l2_format* %35)
  %37 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %38 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %417 [
    i32 133, label %40
    i32 132, label %79
    i32 128, label %124
    i32 135, label %146
    i32 137, label %168
    i32 131, label %190
    i32 130, label %218
    i32 129, label %263
    i32 134, label %285
    i32 136, label %307
    i32 139, label %329
    i32 138, label %351
    i32 141, label %373
    i32 140, label %395
  ]

40:                                               ; preds = %34
  %41 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %42 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %41, i32 0, i32 0
  %43 = load i32 (%struct.file*, i8*, i8*)*, i32 (%struct.file*, i8*, i8*)** %42, align 8
  %44 = icmp ne i32 (%struct.file*, i8*, i8*)* %43, null
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @unlikely(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %417

50:                                               ; preds = %40
  %51 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fmt, i32 0, i32 6), align 4
  %53 = call i32 @CLEAR_AFTER_FIELD(%struct.v4l2_format* %51, i32 %52)
  %54 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %55 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %54, i32 0, i32 0
  %56 = load i32 (%struct.file*, i8*, i8*)*, i32 (%struct.file*, i8*, i8*)** %55, align 8
  %57 = load %struct.file.13*, %struct.file.13** %7, align 8
  %58 = bitcast %struct.file.13* %57 to %struct.file*
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 %56(%struct.file* %58, i8* %59, i8* %60)
  store i32 %61, i32* %12, align 4
  %62 = load i8*, i8** @V4L2_PIX_FMT_PRIV_MAGIC, align 8
  %63 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %64 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  store i8* %62, i8** %66, align 8
  %67 = load %struct.video_device*, %struct.video_device** %11, align 8
  %68 = getelementptr inbounds %struct.video_device, %struct.video_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @VFL_TYPE_TOUCH, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %50
  %73 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %74 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = call i32 @v4l_pix_format_touch(%struct.TYPE_9__* %75)
  br label %77

77:                                               ; preds = %72, %50
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %5, align 4
  br label %420

79:                                               ; preds = %34
  %80 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %81 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %80, i32 0, i32 1
  %82 = load i32 (%struct.file.0*, i8*, i8*)*, i32 (%struct.file.0*, i8*, i8*)** %81, align 8
  %83 = icmp ne i32 (%struct.file.0*, i8*, i8*)* %82, null
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i32 @unlikely(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  br label %417

89:                                               ; preds = %79
  %90 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fmt, i32 0, i32 5, i32 0), align 4
  %92 = call i32 @CLEAR_AFTER_FIELD(%struct.v4l2_format* %90, i32 %91)
  store i32 0, i32* %13, align 4
  br label %93

93:                                               ; preds = %112, %89
  %94 = load i32, i32* %13, align 4
  %95 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %96 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ult i32 %94, %99
  br i1 %100, label %101, label %115

101:                                              ; preds = %93
  %102 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %103 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load %struct.v4l2_format*, %struct.v4l2_format** %105, align 8
  %107 = load i32, i32* %13, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %106, i64 %108
  %110 = load i32, i32* @bytesperline, align 4
  %111 = call i32 @CLEAR_AFTER_FIELD(%struct.v4l2_format* %109, i32 %110)
  br label %112

112:                                              ; preds = %101
  %113 = load i32, i32* %13, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %13, align 4
  br label %93

115:                                              ; preds = %93
  %116 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %117 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %116, i32 0, i32 1
  %118 = load i32 (%struct.file.0*, i8*, i8*)*, i32 (%struct.file.0*, i8*, i8*)** %117, align 8
  %119 = load %struct.file.13*, %struct.file.13** %7, align 8
  %120 = bitcast %struct.file.13* %119 to %struct.file.0*
  %121 = load i8*, i8** %8, align 8
  %122 = load i8*, i8** %9, align 8
  %123 = call i32 %118(%struct.file.0* %120, i8* %121, i8* %122)
  store i32 %123, i32* %5, align 4
  br label %420

124:                                              ; preds = %34
  %125 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %126 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %125, i32 0, i32 2
  %127 = load i32 (%struct.file.1*, i8*, i8*)*, i32 (%struct.file.1*, i8*, i8*)** %126, align 8
  %128 = icmp ne i32 (%struct.file.1*, i8*, i8*)* %127, null
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  %131 = call i32 @unlikely(i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %124
  br label %417

134:                                              ; preds = %124
  %135 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fmt, i32 0, i32 4), align 4
  %137 = call i32 @CLEAR_AFTER_FIELD(%struct.v4l2_format* %135, i32 %136)
  %138 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %139 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %138, i32 0, i32 2
  %140 = load i32 (%struct.file.1*, i8*, i8*)*, i32 (%struct.file.1*, i8*, i8*)** %139, align 8
  %141 = load %struct.file.13*, %struct.file.13** %7, align 8
  %142 = bitcast %struct.file.13* %141 to %struct.file.1*
  %143 = load i8*, i8** %8, align 8
  %144 = load i8*, i8** %9, align 8
  %145 = call i32 %140(%struct.file.1* %142, i8* %143, i8* %144)
  store i32 %145, i32* %5, align 4
  br label %420

146:                                              ; preds = %34
  %147 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %148 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %147, i32 0, i32 3
  %149 = load i32 (%struct.file.2*, i8*, i8*)*, i32 (%struct.file.2*, i8*, i8*)** %148, align 8
  %150 = icmp ne i32 (%struct.file.2*, i8*, i8*)* %149, null
  %151 = xor i1 %150, true
  %152 = zext i1 %151 to i32
  %153 = call i32 @unlikely(i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %146
  br label %417

156:                                              ; preds = %146
  %157 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fmt, i32 0, i32 3), align 4
  %159 = call i32 @CLEAR_AFTER_FIELD(%struct.v4l2_format* %157, i32 %158)
  %160 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %161 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %160, i32 0, i32 3
  %162 = load i32 (%struct.file.2*, i8*, i8*)*, i32 (%struct.file.2*, i8*, i8*)** %161, align 8
  %163 = load %struct.file.13*, %struct.file.13** %7, align 8
  %164 = bitcast %struct.file.13* %163 to %struct.file.2*
  %165 = load i8*, i8** %8, align 8
  %166 = load i8*, i8** %9, align 8
  %167 = call i32 %162(%struct.file.2* %164, i8* %165, i8* %166)
  store i32 %167, i32* %5, align 4
  br label %420

168:                                              ; preds = %34
  %169 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %170 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %169, i32 0, i32 4
  %171 = load i32 (%struct.file.3*, i8*, i8*)*, i32 (%struct.file.3*, i8*, i8*)** %170, align 8
  %172 = icmp ne i32 (%struct.file.3*, i8*, i8*)* %171, null
  %173 = xor i1 %172, true
  %174 = zext i1 %173 to i32
  %175 = call i32 @unlikely(i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %168
  br label %417

178:                                              ; preds = %168
  %179 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %180 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fmt, i32 0, i32 2), align 4
  %181 = call i32 @CLEAR_AFTER_FIELD(%struct.v4l2_format* %179, i32 %180)
  %182 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %183 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %182, i32 0, i32 4
  %184 = load i32 (%struct.file.3*, i8*, i8*)*, i32 (%struct.file.3*, i8*, i8*)** %183, align 8
  %185 = load %struct.file.13*, %struct.file.13** %7, align 8
  %186 = bitcast %struct.file.13* %185 to %struct.file.3*
  %187 = load i8*, i8** %8, align 8
  %188 = load i8*, i8** %9, align 8
  %189 = call i32 %184(%struct.file.3* %186, i8* %187, i8* %188)
  store i32 %189, i32* %5, align 4
  br label %420

190:                                              ; preds = %34
  %191 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %192 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %191, i32 0, i32 5
  %193 = load i32 (%struct.file.4*, i8*, i8*)*, i32 (%struct.file.4*, i8*, i8*)** %192, align 8
  %194 = icmp ne i32 (%struct.file.4*, i8*, i8*)* %193, null
  %195 = xor i1 %194, true
  %196 = zext i1 %195 to i32
  %197 = call i32 @unlikely(i32 %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %190
  br label %417

200:                                              ; preds = %190
  %201 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %202 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fmt, i32 0, i32 6), align 4
  %203 = call i32 @CLEAR_AFTER_FIELD(%struct.v4l2_format* %201, i32 %202)
  %204 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %205 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %204, i32 0, i32 5
  %206 = load i32 (%struct.file.4*, i8*, i8*)*, i32 (%struct.file.4*, i8*, i8*)** %205, align 8
  %207 = load %struct.file.13*, %struct.file.13** %7, align 8
  %208 = bitcast %struct.file.13* %207 to %struct.file.4*
  %209 = load i8*, i8** %8, align 8
  %210 = load i8*, i8** %9, align 8
  %211 = call i32 %206(%struct.file.4* %208, i8* %209, i8* %210)
  store i32 %211, i32* %12, align 4
  %212 = load i8*, i8** @V4L2_PIX_FMT_PRIV_MAGIC, align 8
  %213 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %214 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  store i8* %212, i8** %216, align 8
  %217 = load i32, i32* %12, align 4
  store i32 %217, i32* %5, align 4
  br label %420

218:                                              ; preds = %34
  %219 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %220 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %219, i32 0, i32 6
  %221 = load i32 (%struct.file.5*, i8*, i8*)*, i32 (%struct.file.5*, i8*, i8*)** %220, align 8
  %222 = icmp ne i32 (%struct.file.5*, i8*, i8*)* %221, null
  %223 = xor i1 %222, true
  %224 = zext i1 %223 to i32
  %225 = call i32 @unlikely(i32 %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %218
  br label %417

228:                                              ; preds = %218
  %229 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %230 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fmt, i32 0, i32 5, i32 0), align 4
  %231 = call i32 @CLEAR_AFTER_FIELD(%struct.v4l2_format* %229, i32 %230)
  store i32 0, i32* %13, align 4
  br label %232

232:                                              ; preds = %251, %228
  %233 = load i32, i32* %13, align 4
  %234 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %235 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = icmp ult i32 %233, %238
  br i1 %239, label %240, label %254

240:                                              ; preds = %232
  %241 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %242 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 1
  %245 = load %struct.v4l2_format*, %struct.v4l2_format** %244, align 8
  %246 = load i32, i32* %13, align 4
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %245, i64 %247
  %249 = load i32, i32* @bytesperline, align 4
  %250 = call i32 @CLEAR_AFTER_FIELD(%struct.v4l2_format* %248, i32 %249)
  br label %251

251:                                              ; preds = %240
  %252 = load i32, i32* %13, align 4
  %253 = add i32 %252, 1
  store i32 %253, i32* %13, align 4
  br label %232

254:                                              ; preds = %232
  %255 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %256 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %255, i32 0, i32 6
  %257 = load i32 (%struct.file.5*, i8*, i8*)*, i32 (%struct.file.5*, i8*, i8*)** %256, align 8
  %258 = load %struct.file.13*, %struct.file.13** %7, align 8
  %259 = bitcast %struct.file.13* %258 to %struct.file.5*
  %260 = load i8*, i8** %8, align 8
  %261 = load i8*, i8** %9, align 8
  %262 = call i32 %257(%struct.file.5* %259, i8* %260, i8* %261)
  store i32 %262, i32* %5, align 4
  br label %420

263:                                              ; preds = %34
  %264 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %265 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %264, i32 0, i32 7
  %266 = load i32 (%struct.file.6*, i8*, i8*)*, i32 (%struct.file.6*, i8*, i8*)** %265, align 8
  %267 = icmp ne i32 (%struct.file.6*, i8*, i8*)* %266, null
  %268 = xor i1 %267, true
  %269 = zext i1 %268 to i32
  %270 = call i32 @unlikely(i32 %269)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %263
  br label %417

273:                                              ; preds = %263
  %274 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %275 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fmt, i32 0, i32 4), align 4
  %276 = call i32 @CLEAR_AFTER_FIELD(%struct.v4l2_format* %274, i32 %275)
  %277 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %278 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %277, i32 0, i32 7
  %279 = load i32 (%struct.file.6*, i8*, i8*)*, i32 (%struct.file.6*, i8*, i8*)** %278, align 8
  %280 = load %struct.file.13*, %struct.file.13** %7, align 8
  %281 = bitcast %struct.file.13* %280 to %struct.file.6*
  %282 = load i8*, i8** %8, align 8
  %283 = load i8*, i8** %9, align 8
  %284 = call i32 %279(%struct.file.6* %281, i8* %282, i8* %283)
  store i32 %284, i32* %5, align 4
  br label %420

285:                                              ; preds = %34
  %286 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %287 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %286, i32 0, i32 8
  %288 = load i32 (%struct.file.7*, i8*, i8*)*, i32 (%struct.file.7*, i8*, i8*)** %287, align 8
  %289 = icmp ne i32 (%struct.file.7*, i8*, i8*)* %288, null
  %290 = xor i1 %289, true
  %291 = zext i1 %290 to i32
  %292 = call i32 @unlikely(i32 %291)
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %285
  br label %417

295:                                              ; preds = %285
  %296 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %297 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fmt, i32 0, i32 3), align 4
  %298 = call i32 @CLEAR_AFTER_FIELD(%struct.v4l2_format* %296, i32 %297)
  %299 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %300 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %299, i32 0, i32 8
  %301 = load i32 (%struct.file.7*, i8*, i8*)*, i32 (%struct.file.7*, i8*, i8*)** %300, align 8
  %302 = load %struct.file.13*, %struct.file.13** %7, align 8
  %303 = bitcast %struct.file.13* %302 to %struct.file.7*
  %304 = load i8*, i8** %8, align 8
  %305 = load i8*, i8** %9, align 8
  %306 = call i32 %301(%struct.file.7* %303, i8* %304, i8* %305)
  store i32 %306, i32* %5, align 4
  br label %420

307:                                              ; preds = %34
  %308 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %309 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %308, i32 0, i32 9
  %310 = load i32 (%struct.file.8*, i8*, i8*)*, i32 (%struct.file.8*, i8*, i8*)** %309, align 8
  %311 = icmp ne i32 (%struct.file.8*, i8*, i8*)* %310, null
  %312 = xor i1 %311, true
  %313 = zext i1 %312 to i32
  %314 = call i32 @unlikely(i32 %313)
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %307
  br label %417

317:                                              ; preds = %307
  %318 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %319 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fmt, i32 0, i32 2), align 4
  %320 = call i32 @CLEAR_AFTER_FIELD(%struct.v4l2_format* %318, i32 %319)
  %321 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %322 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %321, i32 0, i32 9
  %323 = load i32 (%struct.file.8*, i8*, i8*)*, i32 (%struct.file.8*, i8*, i8*)** %322, align 8
  %324 = load %struct.file.13*, %struct.file.13** %7, align 8
  %325 = bitcast %struct.file.13* %324 to %struct.file.8*
  %326 = load i8*, i8** %8, align 8
  %327 = load i8*, i8** %9, align 8
  %328 = call i32 %323(%struct.file.8* %325, i8* %326, i8* %327)
  store i32 %328, i32* %5, align 4
  br label %420

329:                                              ; preds = %34
  %330 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %331 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %330, i32 0, i32 10
  %332 = load i32 (%struct.file.9*, i8*, i8*)*, i32 (%struct.file.9*, i8*, i8*)** %331, align 8
  %333 = icmp ne i32 (%struct.file.9*, i8*, i8*)* %332, null
  %334 = xor i1 %333, true
  %335 = zext i1 %334 to i32
  %336 = call i32 @unlikely(i32 %335)
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %339

338:                                              ; preds = %329
  br label %417

339:                                              ; preds = %329
  %340 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %341 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fmt, i32 0, i32 1), align 4
  %342 = call i32 @CLEAR_AFTER_FIELD(%struct.v4l2_format* %340, i32 %341)
  %343 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %344 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %343, i32 0, i32 10
  %345 = load i32 (%struct.file.9*, i8*, i8*)*, i32 (%struct.file.9*, i8*, i8*)** %344, align 8
  %346 = load %struct.file.13*, %struct.file.13** %7, align 8
  %347 = bitcast %struct.file.13* %346 to %struct.file.9*
  %348 = load i8*, i8** %8, align 8
  %349 = load i8*, i8** %9, align 8
  %350 = call i32 %345(%struct.file.9* %347, i8* %348, i8* %349)
  store i32 %350, i32* %5, align 4
  br label %420

351:                                              ; preds = %34
  %352 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %353 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %352, i32 0, i32 11
  %354 = load i32 (%struct.file.10*, i8*, i8*)*, i32 (%struct.file.10*, i8*, i8*)** %353, align 8
  %355 = icmp ne i32 (%struct.file.10*, i8*, i8*)* %354, null
  %356 = xor i1 %355, true
  %357 = zext i1 %356 to i32
  %358 = call i32 @unlikely(i32 %357)
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %351
  br label %417

361:                                              ; preds = %351
  %362 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %363 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fmt, i32 0, i32 1), align 4
  %364 = call i32 @CLEAR_AFTER_FIELD(%struct.v4l2_format* %362, i32 %363)
  %365 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %366 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %365, i32 0, i32 11
  %367 = load i32 (%struct.file.10*, i8*, i8*)*, i32 (%struct.file.10*, i8*, i8*)** %366, align 8
  %368 = load %struct.file.13*, %struct.file.13** %7, align 8
  %369 = bitcast %struct.file.13* %368 to %struct.file.10*
  %370 = load i8*, i8** %8, align 8
  %371 = load i8*, i8** %9, align 8
  %372 = call i32 %367(%struct.file.10* %369, i8* %370, i8* %371)
  store i32 %372, i32* %5, align 4
  br label %420

373:                                              ; preds = %34
  %374 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %375 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %374, i32 0, i32 12
  %376 = load i32 (%struct.file.11*, i8*, i8*)*, i32 (%struct.file.11*, i8*, i8*)** %375, align 8
  %377 = icmp ne i32 (%struct.file.11*, i8*, i8*)* %376, null
  %378 = xor i1 %377, true
  %379 = zext i1 %378 to i32
  %380 = call i32 @unlikely(i32 %379)
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %383

382:                                              ; preds = %373
  br label %417

383:                                              ; preds = %373
  %384 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %385 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fmt, i32 0, i32 0), align 4
  %386 = call i32 @CLEAR_AFTER_FIELD(%struct.v4l2_format* %384, i32 %385)
  %387 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %388 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %387, i32 0, i32 12
  %389 = load i32 (%struct.file.11*, i8*, i8*)*, i32 (%struct.file.11*, i8*, i8*)** %388, align 8
  %390 = load %struct.file.13*, %struct.file.13** %7, align 8
  %391 = bitcast %struct.file.13* %390 to %struct.file.11*
  %392 = load i8*, i8** %8, align 8
  %393 = load i8*, i8** %9, align 8
  %394 = call i32 %389(%struct.file.11* %391, i8* %392, i8* %393)
  store i32 %394, i32* %5, align 4
  br label %420

395:                                              ; preds = %34
  %396 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %397 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %396, i32 0, i32 13
  %398 = load i32 (%struct.file.12*, i8*, i8*)*, i32 (%struct.file.12*, i8*, i8*)** %397, align 8
  %399 = icmp ne i32 (%struct.file.12*, i8*, i8*)* %398, null
  %400 = xor i1 %399, true
  %401 = zext i1 %400 to i32
  %402 = call i32 @unlikely(i32 %401)
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %405

404:                                              ; preds = %395
  br label %417

405:                                              ; preds = %395
  %406 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %407 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fmt, i32 0, i32 0), align 4
  %408 = call i32 @CLEAR_AFTER_FIELD(%struct.v4l2_format* %406, i32 %407)
  %409 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %410 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %409, i32 0, i32 13
  %411 = load i32 (%struct.file.12*, i8*, i8*)*, i32 (%struct.file.12*, i8*, i8*)** %410, align 8
  %412 = load %struct.file.13*, %struct.file.13** %7, align 8
  %413 = bitcast %struct.file.13* %412 to %struct.file.12*
  %414 = load i8*, i8** %8, align 8
  %415 = load i8*, i8** %9, align 8
  %416 = call i32 %411(%struct.file.12* %413, i8* %414, i8* %415)
  store i32 %416, i32* %5, align 4
  br label %420

417:                                              ; preds = %34, %404, %382, %360, %338, %316, %294, %272, %227, %199, %177, %155, %133, %88, %49
  %418 = load i32, i32* @EINVAL, align 4
  %419 = sub nsw i32 0, %418
  store i32 %419, i32* %5, align 4
  br label %420

420:                                              ; preds = %417, %405, %383, %361, %339, %317, %295, %273, %254, %200, %178, %156, %134, %115, %77, %32, %25
  %421 = load i32, i32* %5, align 4
  ret i32 %421
}

declare dso_local %struct.video_device* @video_devdata(%struct.file.13*) #1

declare dso_local i32 @check_fmt(%struct.file.13*, i32) #1

declare dso_local i32 @v4l_enable_media_source(%struct.video_device*) #1

declare dso_local i32 @v4l_sanitize_format(%struct.v4l2_format*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @CLEAR_AFTER_FIELD(%struct.v4l2_format*, i32) #1

declare dso_local i32 @v4l_pix_format_touch(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
