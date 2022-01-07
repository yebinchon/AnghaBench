; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_ioctl_enum_frameintervals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_ioctl_enum_frameintervals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frmivalenum = type { i64, i32, i64, i64, %struct.TYPE_10__, i32, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.uvc_fh = type { %struct.uvc_streaming* }
%struct.uvc_streaming = type { i32, %struct.uvc_format* }
%struct.uvc_format = type { i64, i32, %struct.uvc_frame* }
%struct.uvc_frame = type { i64, i64, i32*, i64 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_FRMIVAL_TYPE_DISCRETE = common dso_local global i32 0, align 4
@V4L2_FRMIVAL_TYPE_STEPWISE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frmivalenum*)* @uvc_ioctl_enum_frameintervals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_ioctl_enum_frameintervals(%struct.file* %0, i8* %1, %struct.v4l2_frmivalenum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frmivalenum*, align 8
  %8 = alloca %struct.uvc_fh*, align 8
  %9 = alloca %struct.uvc_streaming*, align 8
  %10 = alloca %struct.uvc_format*, align 8
  %11 = alloca %struct.uvc_frame*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frmivalenum* %2, %struct.v4l2_frmivalenum** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.uvc_fh*
  store %struct.uvc_fh* %16, %struct.uvc_fh** %8, align 8
  %17 = load %struct.uvc_fh*, %struct.uvc_fh** %8, align 8
  %18 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %17, i32 0, i32 0
  %19 = load %struct.uvc_streaming*, %struct.uvc_streaming** %18, align 8
  store %struct.uvc_streaming* %19, %struct.uvc_streaming** %9, align 8
  store %struct.uvc_format* null, %struct.uvc_format** %10, align 8
  store %struct.uvc_frame* null, %struct.uvc_frame** %11, align 8
  store i32 0, i32* %14, align 4
  br label %20

20:                                               ; preds = %47, %3
  %21 = load i32, i32* %14, align 4
  %22 = load %struct.uvc_streaming*, %struct.uvc_streaming** %9, align 8
  %23 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %20
  %27 = load %struct.uvc_streaming*, %struct.uvc_streaming** %9, align 8
  %28 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %27, i32 0, i32 1
  %29 = load %struct.uvc_format*, %struct.uvc_format** %28, align 8
  %30 = load i32, i32* %14, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %29, i64 %31
  %33 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %26
  %40 = load %struct.uvc_streaming*, %struct.uvc_streaming** %9, align 8
  %41 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %40, i32 0, i32 1
  %42 = load %struct.uvc_format*, %struct.uvc_format** %41, align 8
  %43 = load i32, i32* %14, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %42, i64 %44
  store %struct.uvc_format* %45, %struct.uvc_format** %10, align 8
  br label %50

46:                                               ; preds = %26
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %14, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %14, align 4
  br label %20

50:                                               ; preds = %39, %20
  %51 = load %struct.uvc_format*, %struct.uvc_format** %10, align 8
  %52 = icmp eq %struct.uvc_format* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %229

56:                                               ; preds = %50
  %57 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %60

60:                                               ; preds = %117, %56
  %61 = load i32, i32* %14, align 4
  %62 = load %struct.uvc_format*, %struct.uvc_format** %10, align 8
  %63 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp ult i32 %61, %64
  br i1 %65, label %66, label %120

66:                                               ; preds = %60
  %67 = load %struct.uvc_format*, %struct.uvc_format** %10, align 8
  %68 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %67, i32 0, i32 2
  %69 = load %struct.uvc_frame*, %struct.uvc_frame** %68, align 8
  %70 = load i32, i32* %14, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %69, i64 %71
  %73 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %76 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %74, %77
  br i1 %78, label %79, label %116

79:                                               ; preds = %66
  %80 = load %struct.uvc_format*, %struct.uvc_format** %10, align 8
  %81 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %80, i32 0, i32 2
  %82 = load %struct.uvc_frame*, %struct.uvc_frame** %81, align 8
  %83 = load i32, i32* %14, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %82, i64 %84
  %86 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %89 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %87, %90
  br i1 %91, label %92, label %116

92:                                               ; preds = %79
  %93 = load %struct.uvc_format*, %struct.uvc_format** %10, align 8
  %94 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %93, i32 0, i32 2
  %95 = load %struct.uvc_frame*, %struct.uvc_frame** %94, align 8
  %96 = load i32, i32* %14, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %95, i64 %97
  store %struct.uvc_frame* %98, %struct.uvc_frame** %11, align 8
  %99 = load %struct.uvc_frame*, %struct.uvc_frame** %11, align 8
  %100 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %92
  br label %105

104:                                              ; preds = %92
  br label %105

105:                                              ; preds = %104, %103
  %106 = phi i64 [ %101, %103 ], [ 1, %104 ]
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %120

112:                                              ; preds = %105
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %13, align 4
  %115 = sub i32 %114, %113
  store i32 %115, i32* %13, align 4
  br label %116

116:                                              ; preds = %112, %79, %66
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %14, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %14, align 4
  br label %60

120:                                              ; preds = %111, %60
  %121 = load i32, i32* %14, align 4
  %122 = load %struct.uvc_format*, %struct.uvc_format** %10, align 8
  %123 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %121, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %4, align 4
  br label %229

129:                                              ; preds = %120
  %130 = load %struct.uvc_frame*, %struct.uvc_frame** %11, align 8
  %131 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %158

134:                                              ; preds = %129
  %135 = load i32, i32* @V4L2_FRMIVAL_TYPE_DISCRETE, align 4
  %136 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %137 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %136, i32 0, i32 5
  store i32 %135, i32* %137, align 8
  %138 = load %struct.uvc_frame*, %struct.uvc_frame** %11, align 8
  %139 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %13, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %146 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %145, i32 0, i32 6
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  store i32 %144, i32* %147, align 4
  %148 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %149 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %148, i32 0, i32 6
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  store i32 10000000, i32* %150, align 4
  %151 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %152 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %151, i32 0, i32 6
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %155 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %154, i32 0, i32 6
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = call i32 @uvc_simplify_fraction(i32* %153, i32* %156, i32 8, i32 333)
  br label %228

158:                                              ; preds = %129
  %159 = load i32, i32* @V4L2_FRMIVAL_TYPE_STEPWISE, align 4
  %160 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %161 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %160, i32 0, i32 5
  store i32 %159, i32* %161, align 8
  %162 = load %struct.uvc_frame*, %struct.uvc_frame** %11, align 8
  %163 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %168 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 1
  store i32 %166, i32* %170, align 4
  %171 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %172 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  store i32 10000000, i32* %174, align 8
  %175 = load %struct.uvc_frame*, %struct.uvc_frame** %11, align 8
  %176 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %175, i32 0, i32 2
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %181 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 1
  store i32 %179, i32* %183, align 4
  %184 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %185 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  store i32 10000000, i32* %187, align 8
  %188 = load %struct.uvc_frame*, %struct.uvc_frame** %11, align 8
  %189 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %188, i32 0, i32 2
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 2
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %194 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 1
  store i32 %192, i32* %196, align 4
  %197 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %198 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 0
  store i32 10000000, i32* %200, align 8
  %201 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %202 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %201, i32 0, i32 4
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 1
  %205 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %206 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %205, i32 0, i32 4
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  %209 = call i32 @uvc_simplify_fraction(i32* %204, i32* %208, i32 8, i32 333)
  %210 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %211 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %210, i32 0, i32 4
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 1
  %214 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %215 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %214, i32 0, i32 4
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 0
  %218 = call i32 @uvc_simplify_fraction(i32* %213, i32* %217, i32 8, i32 333)
  %219 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %220 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %219, i32 0, i32 4
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 1
  %223 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %224 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %223, i32 0, i32 4
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 0
  %227 = call i32 @uvc_simplify_fraction(i32* %222, i32* %226, i32 8, i32 333)
  br label %228

228:                                              ; preds = %158, %134
  store i32 0, i32* %4, align 4
  br label %229

229:                                              ; preds = %228, %126, %53
  %230 = load i32, i32* %4, align 4
  ret i32 %230
}

declare dso_local i32 @uvc_simplify_fraction(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
