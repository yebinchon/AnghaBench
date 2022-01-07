; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c_uvc_get_video_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c_uvc_get_video_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_streaming = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i8* }
%struct.uvc_streaming_control = type { i64, i64, i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i64, i64, i8* }

@UVC_QUIRK_PROBE_DEF = common dso_local global i32 0, align 4
@UVC_GET_DEF = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UVC_VS_PROBE_CONTROL = common dso_local global i32 0, align 4
@UVC_VS_COMMIT_CONTROL = common dso_local global i32 0, align 4
@uvc_timeout_param = common dso_local global i32 0, align 4
@UVC_GET_MIN = common dso_local global i64 0, align 8
@UVC_GET_MAX = common dso_local global i64 0, align 8
@UVC_WARN_MINMAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"UVC non compliance - GET_MIN/MAX(PROBE) incorrectly supported. Enabling workaround.\0A\00", align 1
@UVC_WARN_PROBE_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Failed to query (%u) UVC %s control : %d (exp. %u).\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"probe\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"commit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_streaming*, %struct.uvc_streaming_control*, i32, i64)* @uvc_get_video_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_get_video_ctrl(%struct.uvc_streaming* %0, %struct.uvc_streaming_control* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.uvc_streaming*, align 8
  %7 = alloca %struct.uvc_streaming_control*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store %struct.uvc_streaming* %0, %struct.uvc_streaming** %6, align 8
  store %struct.uvc_streaming_control* %1, %struct.uvc_streaming_control** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %14 = call i32 @uvc_video_ctrl_size(%struct.uvc_streaming* %13)
  store i32 %14, i32* %10, align 4
  %15 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %16 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @UVC_QUIRK_PROBE_DEF, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %4
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @UVC_GET_DEF, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %234

30:                                               ; preds = %23, %4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i64* @kmalloc(i32 %31, i32 %32)
  store i64* %33, i64** %11, align 8
  %34 = load i64*, i64** %11, align 8
  %35 = icmp eq i64* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %234

39:                                               ; preds = %30
  %40 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %41 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %45 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* @UVC_VS_PROBE_CONTROL, align 4
  br label %53

51:                                               ; preds = %39
  %52 = load i32, i32* @UVC_VS_COMMIT_CONTROL, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = load i64*, i64** %11, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @uvc_timeout_param, align 4
  %58 = call i32 @__uvc_query_ctrl(%struct.TYPE_3__* %42, i64 %43, i32 0, i32 %46, i32 %54, i64* %55, i32 %56, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* @UVC_GET_MIN, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %53
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* @UVC_GET_MAX, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %62, %53
  %67 = load i32, i32* %12, align 4
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %69, label %82

69:                                               ; preds = %66
  %70 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %71 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i32, i32* @UVC_WARN_MINMAX, align 4
  %74 = call i32 @uvc_warn_once(%struct.TYPE_3__* %72, i32 %73, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0))
  %75 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %76 = call i32 @memset(%struct.uvc_streaming_control* %75, i32 0, i32 128)
  %77 = load i64*, i64** %11, align 8
  %78 = bitcast i64* %77 to i32*
  %79 = call i8* @le16_to_cpup(i32* %78)
  %80 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %81 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %80, i32 0, i32 9
  store i8* %79, i8** %81, align 8
  store i32 0, i32* %12, align 4
  br label %230

82:                                               ; preds = %66, %62
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* @UVC_GET_DEF, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %82
  %87 = load i32, i32* %8, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %101

89:                                               ; preds = %86
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %89
  %94 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %95 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %94, i32 0, i32 0
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = load i32, i32* @UVC_WARN_PROBE_DEF, align 4
  %98 = call i32 @uvc_warn_once(%struct.TYPE_3__* %96, i32 %97, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0))
  %99 = load i32, i32* @EIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %12, align 4
  br label %230

101:                                              ; preds = %89, %86, %82
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %101
  %106 = load i32, i32* @KERN_ERR, align 4
  %107 = load i64, i64* %9, align 8
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @uvc_printk(i32 %106, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %107, i8* %111, i32 %112, i32 %113)
  %115 = load i32, i32* @EIO, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %12, align 4
  br label %230

117:                                              ; preds = %101
  br label %118

118:                                              ; preds = %117
  br label %119

119:                                              ; preds = %118
  %120 = load i64*, i64** %11, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 0
  %122 = bitcast i64* %121 to i32*
  %123 = call i8* @le16_to_cpup(i32* %122)
  %124 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %125 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %124, i32 0, i32 15
  store i8* %123, i8** %125, align 8
  %126 = load i64*, i64** %11, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 2
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %130 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %129, i32 0, i32 14
  store i64 %128, i64* %130, align 8
  %131 = load i64*, i64** %11, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 3
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %135 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %134, i32 0, i32 13
  store i64 %133, i64* %135, align 8
  %136 = load i64*, i64** %11, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 4
  %138 = bitcast i64* %137 to i32*
  %139 = call i32 @le32_to_cpup(i32* %138)
  %140 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %141 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %140, i32 0, i32 12
  store i32 %139, i32* %141, align 8
  %142 = load i64*, i64** %11, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 8
  %144 = bitcast i64* %143 to i32*
  %145 = call i8* @le16_to_cpup(i32* %144)
  %146 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %147 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %146, i32 0, i32 11
  store i8* %145, i8** %147, align 8
  %148 = load i64*, i64** %11, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 10
  %150 = bitcast i64* %149 to i32*
  %151 = call i8* @le16_to_cpup(i32* %150)
  %152 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %153 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %152, i32 0, i32 10
  store i8* %151, i8** %153, align 8
  %154 = load i64*, i64** %11, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 12
  %156 = bitcast i64* %155 to i32*
  %157 = call i8* @le16_to_cpup(i32* %156)
  %158 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %159 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %158, i32 0, i32 9
  store i8* %157, i8** %159, align 8
  %160 = load i64*, i64** %11, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 14
  %162 = bitcast i64* %161 to i32*
  %163 = call i8* @le16_to_cpup(i32* %162)
  %164 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %165 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %164, i32 0, i32 8
  store i8* %163, i8** %165, align 8
  %166 = load i64*, i64** %11, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 16
  %168 = bitcast i64* %167 to i32*
  %169 = call i8* @le16_to_cpup(i32* %168)
  %170 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %171 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %170, i32 0, i32 7
  store i8* %169, i8** %171, align 8
  %172 = load i64*, i64** %11, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 18
  %174 = call i8* @get_unaligned_le32(i64* %173)
  %175 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %176 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %175, i32 0, i32 6
  store i8* %174, i8** %176, align 8
  %177 = load i64*, i64** %11, align 8
  %178 = getelementptr inbounds i64, i64* %177, i64 22
  %179 = call i8* @get_unaligned_le32(i64* %178)
  %180 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %181 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %180, i32 0, i32 5
  store i8* %179, i8** %181, align 8
  %182 = load i32, i32* %10, align 4
  %183 = icmp sge i32 %182, 34
  br i1 %183, label %184, label %210

184:                                              ; preds = %119
  %185 = load i64*, i64** %11, align 8
  %186 = getelementptr inbounds i64, i64* %185, i64 26
  %187 = call i8* @get_unaligned_le32(i64* %186)
  %188 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %189 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %188, i32 0, i32 4
  store i8* %187, i8** %189, align 8
  %190 = load i64*, i64** %11, align 8
  %191 = getelementptr inbounds i64, i64* %190, i64 30
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %194 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %193, i32 0, i32 3
  store i64 %192, i64* %194, align 8
  %195 = load i64*, i64** %11, align 8
  %196 = getelementptr inbounds i64, i64* %195, i64 31
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %199 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %198, i32 0, i32 2
  store i64 %197, i64* %199, align 8
  %200 = load i64*, i64** %11, align 8
  %201 = getelementptr inbounds i64, i64* %200, i64 32
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %204 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %203, i32 0, i32 1
  store i64 %202, i64* %204, align 8
  %205 = load i64*, i64** %11, align 8
  %206 = getelementptr inbounds i64, i64* %205, i64 33
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %209 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %208, i32 0, i32 0
  store i64 %207, i64* %209, align 8
  br label %226

210:                                              ; preds = %119
  %211 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %212 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %211, i32 0, i32 0
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 1
  %215 = load i8*, i8** %214, align 8
  %216 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %217 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %216, i32 0, i32 4
  store i8* %215, i8** %217, align 8
  %218 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %219 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %218, i32 0, i32 3
  store i64 0, i64* %219, align 8
  %220 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %221 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %220, i32 0, i32 2
  store i64 0, i64* %221, align 8
  %222 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %223 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %222, i32 0, i32 1
  store i64 0, i64* %223, align 8
  %224 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %225 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %224, i32 0, i32 0
  store i64 0, i64* %225, align 8
  br label %226

226:                                              ; preds = %210, %184
  %227 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %228 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %229 = call i32 @uvc_fixup_video_ctrl(%struct.uvc_streaming* %227, %struct.uvc_streaming_control* %228)
  store i32 0, i32* %12, align 4
  br label %230

230:                                              ; preds = %226, %105, %93, %69
  %231 = load i64*, i64** %11, align 8
  %232 = call i32 @kfree(i64* %231)
  %233 = load i32, i32* %12, align 4
  store i32 %233, i32* %5, align 4
  br label %234

234:                                              ; preds = %230, %36, %27
  %235 = load i32, i32* %5, align 4
  ret i32 %235
}

declare dso_local i32 @uvc_video_ctrl_size(%struct.uvc_streaming*) #1

declare dso_local i64* @kmalloc(i32, i32) #1

declare dso_local i32 @__uvc_query_ctrl(%struct.TYPE_3__*, i64, i32, i32, i32, i64*, i32, i32) #1

declare dso_local i32 @uvc_warn_once(%struct.TYPE_3__*, i32, i8*) #1

declare dso_local i32 @memset(%struct.uvc_streaming_control*, i32, i32) #1

declare dso_local i8* @le16_to_cpup(i32*) #1

declare dso_local i32 @uvc_printk(i32, i8*, i64, i8*, i32, i32) #1

declare dso_local i32 @le32_to_cpup(i32*) #1

declare dso_local i8* @get_unaligned_le32(i64*) #1

declare dso_local i32 @uvc_fixup_video_ctrl(%struct.uvc_streaming*, %struct.uvc_streaming_control*) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
