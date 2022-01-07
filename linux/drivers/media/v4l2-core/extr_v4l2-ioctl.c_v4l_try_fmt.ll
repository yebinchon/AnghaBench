; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_try_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_try_fmt.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ioctl_ops*, %struct.file.13*, i8*, i8*)* @v4l_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l_try_fmt(%struct.v4l2_ioctl_ops* %0, %struct.file.13* %1, i8* %2, i8* %3) #0 {
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
  br label %413

27:                                               ; preds = %4
  %28 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %29 = call i32 @v4l_sanitize_format(%struct.v4l2_format* %28)
  %30 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %31 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %410 [
    i32 133, label %33
    i32 132, label %72
    i32 128, label %117
    i32 135, label %139
    i32 137, label %161
    i32 131, label %183
    i32 130, label %211
    i32 129, label %256
    i32 134, label %278
    i32 136, label %300
    i32 139, label %322
    i32 138, label %344
    i32 141, label %366
    i32 140, label %388
  ]

33:                                               ; preds = %27
  %34 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %35 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %34, i32 0, i32 0
  %36 = load i32 (%struct.file*, i8*, i8*)*, i32 (%struct.file*, i8*, i8*)** %35, align 8
  %37 = icmp ne i32 (%struct.file*, i8*, i8*)* %36, null
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @unlikely(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %410

43:                                               ; preds = %33
  %44 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fmt, i32 0, i32 6), align 4
  %46 = call i32 @CLEAR_AFTER_FIELD(%struct.v4l2_format* %44, i32 %45)
  %47 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %48 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %47, i32 0, i32 0
  %49 = load i32 (%struct.file*, i8*, i8*)*, i32 (%struct.file*, i8*, i8*)** %48, align 8
  %50 = load %struct.file.13*, %struct.file.13** %7, align 8
  %51 = bitcast %struct.file.13* %50 to %struct.file*
  %52 = load i8*, i8** %8, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 %49(%struct.file* %51, i8* %52, i8* %53)
  store i32 %54, i32* %12, align 4
  %55 = load i8*, i8** @V4L2_PIX_FMT_PRIV_MAGIC, align 8
  %56 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %57 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i8* %55, i8** %59, align 8
  %60 = load %struct.video_device*, %struct.video_device** %11, align 8
  %61 = getelementptr inbounds %struct.video_device, %struct.video_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @VFL_TYPE_TOUCH, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %43
  %66 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %67 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = call i32 @v4l_pix_format_touch(%struct.TYPE_9__* %68)
  br label %70

70:                                               ; preds = %65, %43
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %5, align 4
  br label %413

72:                                               ; preds = %27
  %73 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %74 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %73, i32 0, i32 1
  %75 = load i32 (%struct.file.0*, i8*, i8*)*, i32 (%struct.file.0*, i8*, i8*)** %74, align 8
  %76 = icmp ne i32 (%struct.file.0*, i8*, i8*)* %75, null
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i32 @unlikely(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %410

82:                                               ; preds = %72
  %83 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fmt, i32 0, i32 5, i32 0), align 4
  %85 = call i32 @CLEAR_AFTER_FIELD(%struct.v4l2_format* %83, i32 %84)
  store i32 0, i32* %13, align 4
  br label %86

86:                                               ; preds = %105, %82
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %89 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ult i32 %87, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %86
  %95 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %96 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load %struct.v4l2_format*, %struct.v4l2_format** %98, align 8
  %100 = load i32, i32* %13, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %99, i64 %101
  %103 = load i32, i32* @bytesperline, align 4
  %104 = call i32 @CLEAR_AFTER_FIELD(%struct.v4l2_format* %102, i32 %103)
  br label %105

105:                                              ; preds = %94
  %106 = load i32, i32* %13, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %13, align 4
  br label %86

108:                                              ; preds = %86
  %109 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %110 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %109, i32 0, i32 1
  %111 = load i32 (%struct.file.0*, i8*, i8*)*, i32 (%struct.file.0*, i8*, i8*)** %110, align 8
  %112 = load %struct.file.13*, %struct.file.13** %7, align 8
  %113 = bitcast %struct.file.13* %112 to %struct.file.0*
  %114 = load i8*, i8** %8, align 8
  %115 = load i8*, i8** %9, align 8
  %116 = call i32 %111(%struct.file.0* %113, i8* %114, i8* %115)
  store i32 %116, i32* %5, align 4
  br label %413

117:                                              ; preds = %27
  %118 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %119 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %118, i32 0, i32 2
  %120 = load i32 (%struct.file.1*, i8*, i8*)*, i32 (%struct.file.1*, i8*, i8*)** %119, align 8
  %121 = icmp ne i32 (%struct.file.1*, i8*, i8*)* %120, null
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = call i32 @unlikely(i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  br label %410

127:                                              ; preds = %117
  %128 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fmt, i32 0, i32 4), align 4
  %130 = call i32 @CLEAR_AFTER_FIELD(%struct.v4l2_format* %128, i32 %129)
  %131 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %132 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %131, i32 0, i32 2
  %133 = load i32 (%struct.file.1*, i8*, i8*)*, i32 (%struct.file.1*, i8*, i8*)** %132, align 8
  %134 = load %struct.file.13*, %struct.file.13** %7, align 8
  %135 = bitcast %struct.file.13* %134 to %struct.file.1*
  %136 = load i8*, i8** %8, align 8
  %137 = load i8*, i8** %9, align 8
  %138 = call i32 %133(%struct.file.1* %135, i8* %136, i8* %137)
  store i32 %138, i32* %5, align 4
  br label %413

139:                                              ; preds = %27
  %140 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %141 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %140, i32 0, i32 3
  %142 = load i32 (%struct.file.2*, i8*, i8*)*, i32 (%struct.file.2*, i8*, i8*)** %141, align 8
  %143 = icmp ne i32 (%struct.file.2*, i8*, i8*)* %142, null
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = call i32 @unlikely(i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %139
  br label %410

149:                                              ; preds = %139
  %150 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %151 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fmt, i32 0, i32 3), align 4
  %152 = call i32 @CLEAR_AFTER_FIELD(%struct.v4l2_format* %150, i32 %151)
  %153 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %154 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %153, i32 0, i32 3
  %155 = load i32 (%struct.file.2*, i8*, i8*)*, i32 (%struct.file.2*, i8*, i8*)** %154, align 8
  %156 = load %struct.file.13*, %struct.file.13** %7, align 8
  %157 = bitcast %struct.file.13* %156 to %struct.file.2*
  %158 = load i8*, i8** %8, align 8
  %159 = load i8*, i8** %9, align 8
  %160 = call i32 %155(%struct.file.2* %157, i8* %158, i8* %159)
  store i32 %160, i32* %5, align 4
  br label %413

161:                                              ; preds = %27
  %162 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %163 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %162, i32 0, i32 4
  %164 = load i32 (%struct.file.3*, i8*, i8*)*, i32 (%struct.file.3*, i8*, i8*)** %163, align 8
  %165 = icmp ne i32 (%struct.file.3*, i8*, i8*)* %164, null
  %166 = xor i1 %165, true
  %167 = zext i1 %166 to i32
  %168 = call i32 @unlikely(i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %161
  br label %410

171:                                              ; preds = %161
  %172 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %173 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fmt, i32 0, i32 2), align 4
  %174 = call i32 @CLEAR_AFTER_FIELD(%struct.v4l2_format* %172, i32 %173)
  %175 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %176 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %175, i32 0, i32 4
  %177 = load i32 (%struct.file.3*, i8*, i8*)*, i32 (%struct.file.3*, i8*, i8*)** %176, align 8
  %178 = load %struct.file.13*, %struct.file.13** %7, align 8
  %179 = bitcast %struct.file.13* %178 to %struct.file.3*
  %180 = load i8*, i8** %8, align 8
  %181 = load i8*, i8** %9, align 8
  %182 = call i32 %177(%struct.file.3* %179, i8* %180, i8* %181)
  store i32 %182, i32* %5, align 4
  br label %413

183:                                              ; preds = %27
  %184 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %185 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %184, i32 0, i32 5
  %186 = load i32 (%struct.file.4*, i8*, i8*)*, i32 (%struct.file.4*, i8*, i8*)** %185, align 8
  %187 = icmp ne i32 (%struct.file.4*, i8*, i8*)* %186, null
  %188 = xor i1 %187, true
  %189 = zext i1 %188 to i32
  %190 = call i32 @unlikely(i32 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %183
  br label %410

193:                                              ; preds = %183
  %194 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %195 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fmt, i32 0, i32 6), align 4
  %196 = call i32 @CLEAR_AFTER_FIELD(%struct.v4l2_format* %194, i32 %195)
  %197 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %198 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %197, i32 0, i32 5
  %199 = load i32 (%struct.file.4*, i8*, i8*)*, i32 (%struct.file.4*, i8*, i8*)** %198, align 8
  %200 = load %struct.file.13*, %struct.file.13** %7, align 8
  %201 = bitcast %struct.file.13* %200 to %struct.file.4*
  %202 = load i8*, i8** %8, align 8
  %203 = load i8*, i8** %9, align 8
  %204 = call i32 %199(%struct.file.4* %201, i8* %202, i8* %203)
  store i32 %204, i32* %12, align 4
  %205 = load i8*, i8** @V4L2_PIX_FMT_PRIV_MAGIC, align 8
  %206 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %207 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  store i8* %205, i8** %209, align 8
  %210 = load i32, i32* %12, align 4
  store i32 %210, i32* %5, align 4
  br label %413

211:                                              ; preds = %27
  %212 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %213 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %212, i32 0, i32 6
  %214 = load i32 (%struct.file.5*, i8*, i8*)*, i32 (%struct.file.5*, i8*, i8*)** %213, align 8
  %215 = icmp ne i32 (%struct.file.5*, i8*, i8*)* %214, null
  %216 = xor i1 %215, true
  %217 = zext i1 %216 to i32
  %218 = call i32 @unlikely(i32 %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %211
  br label %410

221:                                              ; preds = %211
  %222 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %223 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fmt, i32 0, i32 5, i32 0), align 4
  %224 = call i32 @CLEAR_AFTER_FIELD(%struct.v4l2_format* %222, i32 %223)
  store i32 0, i32* %13, align 4
  br label %225

225:                                              ; preds = %244, %221
  %226 = load i32, i32* %13, align 4
  %227 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %228 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = icmp ult i32 %226, %231
  br i1 %232, label %233, label %247

233:                                              ; preds = %225
  %234 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %235 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 1
  %238 = load %struct.v4l2_format*, %struct.v4l2_format** %237, align 8
  %239 = load i32, i32* %13, align 4
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %238, i64 %240
  %242 = load i32, i32* @bytesperline, align 4
  %243 = call i32 @CLEAR_AFTER_FIELD(%struct.v4l2_format* %241, i32 %242)
  br label %244

244:                                              ; preds = %233
  %245 = load i32, i32* %13, align 4
  %246 = add i32 %245, 1
  store i32 %246, i32* %13, align 4
  br label %225

247:                                              ; preds = %225
  %248 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %249 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %248, i32 0, i32 6
  %250 = load i32 (%struct.file.5*, i8*, i8*)*, i32 (%struct.file.5*, i8*, i8*)** %249, align 8
  %251 = load %struct.file.13*, %struct.file.13** %7, align 8
  %252 = bitcast %struct.file.13* %251 to %struct.file.5*
  %253 = load i8*, i8** %8, align 8
  %254 = load i8*, i8** %9, align 8
  %255 = call i32 %250(%struct.file.5* %252, i8* %253, i8* %254)
  store i32 %255, i32* %5, align 4
  br label %413

256:                                              ; preds = %27
  %257 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %258 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %257, i32 0, i32 7
  %259 = load i32 (%struct.file.6*, i8*, i8*)*, i32 (%struct.file.6*, i8*, i8*)** %258, align 8
  %260 = icmp ne i32 (%struct.file.6*, i8*, i8*)* %259, null
  %261 = xor i1 %260, true
  %262 = zext i1 %261 to i32
  %263 = call i32 @unlikely(i32 %262)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %256
  br label %410

266:                                              ; preds = %256
  %267 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %268 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fmt, i32 0, i32 4), align 4
  %269 = call i32 @CLEAR_AFTER_FIELD(%struct.v4l2_format* %267, i32 %268)
  %270 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %271 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %270, i32 0, i32 7
  %272 = load i32 (%struct.file.6*, i8*, i8*)*, i32 (%struct.file.6*, i8*, i8*)** %271, align 8
  %273 = load %struct.file.13*, %struct.file.13** %7, align 8
  %274 = bitcast %struct.file.13* %273 to %struct.file.6*
  %275 = load i8*, i8** %8, align 8
  %276 = load i8*, i8** %9, align 8
  %277 = call i32 %272(%struct.file.6* %274, i8* %275, i8* %276)
  store i32 %277, i32* %5, align 4
  br label %413

278:                                              ; preds = %27
  %279 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %280 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %279, i32 0, i32 8
  %281 = load i32 (%struct.file.7*, i8*, i8*)*, i32 (%struct.file.7*, i8*, i8*)** %280, align 8
  %282 = icmp ne i32 (%struct.file.7*, i8*, i8*)* %281, null
  %283 = xor i1 %282, true
  %284 = zext i1 %283 to i32
  %285 = call i32 @unlikely(i32 %284)
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %278
  br label %410

288:                                              ; preds = %278
  %289 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %290 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fmt, i32 0, i32 3), align 4
  %291 = call i32 @CLEAR_AFTER_FIELD(%struct.v4l2_format* %289, i32 %290)
  %292 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %293 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %292, i32 0, i32 8
  %294 = load i32 (%struct.file.7*, i8*, i8*)*, i32 (%struct.file.7*, i8*, i8*)** %293, align 8
  %295 = load %struct.file.13*, %struct.file.13** %7, align 8
  %296 = bitcast %struct.file.13* %295 to %struct.file.7*
  %297 = load i8*, i8** %8, align 8
  %298 = load i8*, i8** %9, align 8
  %299 = call i32 %294(%struct.file.7* %296, i8* %297, i8* %298)
  store i32 %299, i32* %5, align 4
  br label %413

300:                                              ; preds = %27
  %301 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %302 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %301, i32 0, i32 9
  %303 = load i32 (%struct.file.8*, i8*, i8*)*, i32 (%struct.file.8*, i8*, i8*)** %302, align 8
  %304 = icmp ne i32 (%struct.file.8*, i8*, i8*)* %303, null
  %305 = xor i1 %304, true
  %306 = zext i1 %305 to i32
  %307 = call i32 @unlikely(i32 %306)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %300
  br label %410

310:                                              ; preds = %300
  %311 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %312 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fmt, i32 0, i32 2), align 4
  %313 = call i32 @CLEAR_AFTER_FIELD(%struct.v4l2_format* %311, i32 %312)
  %314 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %315 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %314, i32 0, i32 9
  %316 = load i32 (%struct.file.8*, i8*, i8*)*, i32 (%struct.file.8*, i8*, i8*)** %315, align 8
  %317 = load %struct.file.13*, %struct.file.13** %7, align 8
  %318 = bitcast %struct.file.13* %317 to %struct.file.8*
  %319 = load i8*, i8** %8, align 8
  %320 = load i8*, i8** %9, align 8
  %321 = call i32 %316(%struct.file.8* %318, i8* %319, i8* %320)
  store i32 %321, i32* %5, align 4
  br label %413

322:                                              ; preds = %27
  %323 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %324 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %323, i32 0, i32 10
  %325 = load i32 (%struct.file.9*, i8*, i8*)*, i32 (%struct.file.9*, i8*, i8*)** %324, align 8
  %326 = icmp ne i32 (%struct.file.9*, i8*, i8*)* %325, null
  %327 = xor i1 %326, true
  %328 = zext i1 %327 to i32
  %329 = call i32 @unlikely(i32 %328)
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %322
  br label %410

332:                                              ; preds = %322
  %333 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %334 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fmt, i32 0, i32 1), align 4
  %335 = call i32 @CLEAR_AFTER_FIELD(%struct.v4l2_format* %333, i32 %334)
  %336 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %337 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %336, i32 0, i32 10
  %338 = load i32 (%struct.file.9*, i8*, i8*)*, i32 (%struct.file.9*, i8*, i8*)** %337, align 8
  %339 = load %struct.file.13*, %struct.file.13** %7, align 8
  %340 = bitcast %struct.file.13* %339 to %struct.file.9*
  %341 = load i8*, i8** %8, align 8
  %342 = load i8*, i8** %9, align 8
  %343 = call i32 %338(%struct.file.9* %340, i8* %341, i8* %342)
  store i32 %343, i32* %5, align 4
  br label %413

344:                                              ; preds = %27
  %345 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %346 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %345, i32 0, i32 11
  %347 = load i32 (%struct.file.10*, i8*, i8*)*, i32 (%struct.file.10*, i8*, i8*)** %346, align 8
  %348 = icmp ne i32 (%struct.file.10*, i8*, i8*)* %347, null
  %349 = xor i1 %348, true
  %350 = zext i1 %349 to i32
  %351 = call i32 @unlikely(i32 %350)
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %354

353:                                              ; preds = %344
  br label %410

354:                                              ; preds = %344
  %355 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %356 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fmt, i32 0, i32 1), align 4
  %357 = call i32 @CLEAR_AFTER_FIELD(%struct.v4l2_format* %355, i32 %356)
  %358 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %359 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %358, i32 0, i32 11
  %360 = load i32 (%struct.file.10*, i8*, i8*)*, i32 (%struct.file.10*, i8*, i8*)** %359, align 8
  %361 = load %struct.file.13*, %struct.file.13** %7, align 8
  %362 = bitcast %struct.file.13* %361 to %struct.file.10*
  %363 = load i8*, i8** %8, align 8
  %364 = load i8*, i8** %9, align 8
  %365 = call i32 %360(%struct.file.10* %362, i8* %363, i8* %364)
  store i32 %365, i32* %5, align 4
  br label %413

366:                                              ; preds = %27
  %367 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %368 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %367, i32 0, i32 12
  %369 = load i32 (%struct.file.11*, i8*, i8*)*, i32 (%struct.file.11*, i8*, i8*)** %368, align 8
  %370 = icmp ne i32 (%struct.file.11*, i8*, i8*)* %369, null
  %371 = xor i1 %370, true
  %372 = zext i1 %371 to i32
  %373 = call i32 @unlikely(i32 %372)
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %376

375:                                              ; preds = %366
  br label %410

376:                                              ; preds = %366
  %377 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %378 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fmt, i32 0, i32 0), align 4
  %379 = call i32 @CLEAR_AFTER_FIELD(%struct.v4l2_format* %377, i32 %378)
  %380 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %381 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %380, i32 0, i32 12
  %382 = load i32 (%struct.file.11*, i8*, i8*)*, i32 (%struct.file.11*, i8*, i8*)** %381, align 8
  %383 = load %struct.file.13*, %struct.file.13** %7, align 8
  %384 = bitcast %struct.file.13* %383 to %struct.file.11*
  %385 = load i8*, i8** %8, align 8
  %386 = load i8*, i8** %9, align 8
  %387 = call i32 %382(%struct.file.11* %384, i8* %385, i8* %386)
  store i32 %387, i32* %5, align 4
  br label %413

388:                                              ; preds = %27
  %389 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %390 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %389, i32 0, i32 13
  %391 = load i32 (%struct.file.12*, i8*, i8*)*, i32 (%struct.file.12*, i8*, i8*)** %390, align 8
  %392 = icmp ne i32 (%struct.file.12*, i8*, i8*)* %391, null
  %393 = xor i1 %392, true
  %394 = zext i1 %393 to i32
  %395 = call i32 @unlikely(i32 %394)
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %398

397:                                              ; preds = %388
  br label %410

398:                                              ; preds = %388
  %399 = load %struct.v4l2_format*, %struct.v4l2_format** %10, align 8
  %400 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fmt, i32 0, i32 0), align 4
  %401 = call i32 @CLEAR_AFTER_FIELD(%struct.v4l2_format* %399, i32 %400)
  %402 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %403 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %402, i32 0, i32 13
  %404 = load i32 (%struct.file.12*, i8*, i8*)*, i32 (%struct.file.12*, i8*, i8*)** %403, align 8
  %405 = load %struct.file.13*, %struct.file.13** %7, align 8
  %406 = bitcast %struct.file.13* %405 to %struct.file.12*
  %407 = load i8*, i8** %8, align 8
  %408 = load i8*, i8** %9, align 8
  %409 = call i32 %404(%struct.file.12* %406, i8* %407, i8* %408)
  store i32 %409, i32* %5, align 4
  br label %413

410:                                              ; preds = %27, %397, %375, %353, %331, %309, %287, %265, %220, %192, %170, %148, %126, %81, %42
  %411 = load i32, i32* @EINVAL, align 4
  %412 = sub nsw i32 0, %411
  store i32 %412, i32* %5, align 4
  br label %413

413:                                              ; preds = %410, %398, %376, %354, %332, %310, %288, %266, %247, %193, %171, %149, %127, %108, %70, %25
  %414 = load i32, i32* %5, align 4
  ret i32 %414
}

declare dso_local %struct.video_device* @video_devdata(%struct.file.13*) #1

declare dso_local i32 @check_fmt(%struct.file.13*, i32) #1

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
