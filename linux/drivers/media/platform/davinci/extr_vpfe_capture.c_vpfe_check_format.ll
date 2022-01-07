; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpfe_capture.c_vpfe_check_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpfe_capture.c_vpfe_check_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 (i64*, i32)* }
%struct.vpfe_pixel_format = type { i64, i64 }
%struct.vpfe_device = type { i32, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64, i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.v4l2_pix_format = type { i64, i32, i32, i32, i32, i32 }

@ccdc_dev = common dso_local global %struct.TYPE_12__* null, align 8
@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"width = %d, height = %d, bpp = %d\0A\00", align 1
@V4L2_PIX_FMT_NV12 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [79 x i8] c"adjusted width = %d, height = %d, bpp = %d, bytesperline = %d, sizeimage = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vpfe_pixel_format* (%struct.vpfe_device*, %struct.v4l2_pix_format*)* @vpfe_check_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vpfe_pixel_format* @vpfe_check_format(%struct.vpfe_device* %0, %struct.v4l2_pix_format* %1) #0 {
  %3 = alloca %struct.vpfe_device*, align 8
  %4 = alloca %struct.v4l2_pix_format*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vpfe_pixel_format*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vpfe_device* %0, %struct.vpfe_device** %3, align 8
  store %struct.v4l2_pix_format* %1, %struct.v4l2_pix_format** %4, align 8
  store i64 1, i64* %5, align 8
  store i64 32, i64* %6, align 8
  %13 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %14 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call %struct.vpfe_pixel_format* @vpfe_lookup_pix_format(i64 %15)
  store %struct.vpfe_pixel_format* %16, %struct.vpfe_pixel_format** %9, align 8
  %17 = load %struct.vpfe_pixel_format*, %struct.vpfe_pixel_format** %9, align 8
  %18 = icmp ne %struct.vpfe_pixel_format* %17, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %2
  %20 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %21 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %27 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %29 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call %struct.vpfe_pixel_format* @vpfe_lookup_pix_format(i64 %30)
  store %struct.vpfe_pixel_format* %31, %struct.vpfe_pixel_format** %9, align 8
  br label %32

32:                                               ; preds = %19, %2
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %48, %32
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ccdc_dev, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64 (i64*, i32)*, i64 (i64*, i32)** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i64 %37(i64* %10, i32 %38)
  %40 = icmp sge i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %33
  %42 = load %struct.vpfe_pixel_format*, %struct.vpfe_pixel_format** %9, align 8
  %43 = getelementptr inbounds %struct.vpfe_pixel_format, %struct.vpfe_pixel_format* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 1, i32* %12, align 4
  br label %51

48:                                               ; preds = %41
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %33

51:                                               ; preds = %47, %33
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %51
  %55 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %56 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %62 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %64 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call %struct.vpfe_pixel_format* @vpfe_lookup_pix_format(i64 %65)
  store %struct.vpfe_pixel_format* %66, %struct.vpfe_pixel_format** %9, align 8
  br label %67

67:                                               ; preds = %54, %51
  %68 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %69 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %67
  %74 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %75 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %81 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %73, %67
  %83 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %84 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %90 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %88, %91
  br i1 %92, label %93, label %127

93:                                               ; preds = %82
  %94 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %95 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  switch i32 %96, label %117 [
    i32 130, label %97
    i32 128, label %97
    i32 129, label %107
  ]

97:                                               ; preds = %93, %93
  %98 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %99 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %97
  %104 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %105 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %104, i32 0, i32 1
  store i32 129, i32* %105, align 8
  br label %106

106:                                              ; preds = %103, %97
  br label %126

107:                                              ; preds = %93
  %108 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %109 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %115 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %114, i32 0, i32 1
  store i32 130, i32* %115, align 8
  br label %116

116:                                              ; preds = %113, %107
  br label %126

117:                                              ; preds = %93
  %118 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %119 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %125 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %117, %116, %106
  br label %127

127:                                              ; preds = %126, %82
  %128 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %129 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %130, 130
  br i1 %131, label %137, label %132

132:                                              ; preds = %127
  %133 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %134 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %135, 128
  br i1 %136, label %137, label %138

137:                                              ; preds = %132, %127
  store i64 2, i64* %5, align 8
  br label %138

138:                                              ; preds = %137, %132
  %139 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %140 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %7, align 8
  %143 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %144 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %8, align 8
  %147 = load %struct.vpfe_pixel_format*, %struct.vpfe_pixel_format** %9, align 8
  %148 = getelementptr inbounds %struct.vpfe_pixel_format, %struct.vpfe_pixel_format* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* %6, align 8
  %151 = sdiv i64 %150, %149
  store i64 %151, i64* %6, align 8
  %152 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %153 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %152, i32 0, i32 0
  %154 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %155 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %158 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.vpfe_pixel_format*, %struct.vpfe_pixel_format** %9, align 8
  %161 = getelementptr inbounds %struct.vpfe_pixel_format, %struct.vpfe_pixel_format* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = trunc i64 %162 to i32
  %164 = call i32 (i32*, i8*, i32, i32, i32, ...) @v4l2_info(i32* %153, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %156, i32 %159, i32 %163)
  %165 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %166 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load i64, i64* %6, align 8
  %169 = load i64, i64* %7, align 8
  %170 = call i8* @clamp(i32 %167, i64 %168, i64 %169)
  %171 = ptrtoint i8* %170 to i32
  %172 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %173 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 4
  %174 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %175 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = load i64, i64* %5, align 8
  %178 = load i64, i64* %8, align 8
  %179 = call i8* @clamp(i32 %176, i64 %177, i64 %178)
  %180 = ptrtoint i8* %179 to i32
  %181 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %182 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %181, i32 0, i32 3
  store i32 %180, i32* %182, align 8
  %183 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %184 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = icmp eq i32 %185, 130
  br i1 %186, label %187, label %192

187:                                              ; preds = %138
  %188 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %189 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = and i32 %190, -2
  store i32 %191, i32* %189, align 8
  br label %192

192:                                              ; preds = %187, %138
  %193 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %194 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = load %struct.vpfe_pixel_format*, %struct.vpfe_pixel_format** %9, align 8
  %198 = getelementptr inbounds %struct.vpfe_pixel_format, %struct.vpfe_pixel_format* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = mul nsw i64 %196, %199
  %201 = add nsw i64 %200, 31
  %202 = and i64 %201, -32
  %203 = trunc i64 %202 to i32
  %204 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %205 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %204, i32 0, i32 4
  store i32 %203, i32* %205, align 4
  %206 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %207 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @V4L2_PIX_FMT_NV12, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %230

211:                                              ; preds = %192
  %212 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %213 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %216 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = mul nsw i32 %214, %217
  %219 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %220 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %223 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = mul nsw i32 %221, %224
  %226 = ashr i32 %225, 1
  %227 = add nsw i32 %218, %226
  %228 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %229 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %228, i32 0, i32 5
  store i32 %227, i32* %229, align 8
  br label %240

230:                                              ; preds = %192
  %231 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %232 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %235 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 8
  %237 = mul nsw i32 %233, %236
  %238 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %239 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %238, i32 0, i32 5
  store i32 %237, i32* %239, align 8
  br label %240

240:                                              ; preds = %230, %211
  %241 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %242 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %241, i32 0, i32 0
  %243 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %244 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %247 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.vpfe_pixel_format*, %struct.vpfe_pixel_format** %9, align 8
  %250 = getelementptr inbounds %struct.vpfe_pixel_format, %struct.vpfe_pixel_format* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = trunc i64 %251 to i32
  %253 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %254 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %257 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %256, i32 0, i32 5
  %258 = load i32, i32* %257, align 8
  %259 = call i32 (i32*, i8*, i32, i32, i32, ...) @v4l2_info(i32* %242, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 %245, i32 %248, i32 %252, i32 %255, i32 %258)
  %260 = load %struct.vpfe_pixel_format*, %struct.vpfe_pixel_format** %9, align 8
  ret %struct.vpfe_pixel_format* %260
}

declare dso_local %struct.vpfe_pixel_format* @vpfe_lookup_pix_format(i64) #1

declare dso_local i32 @v4l2_info(i32*, i8*, i32, i32, i32, ...) #1

declare dso_local i8* @clamp(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
