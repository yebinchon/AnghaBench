; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_send_request_ex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_send_request_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, i8, i32, i32, i32, i32, i8*, i8*, %struct.TYPE_8__*, %struct.TYPE_8__*, i64, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.hdw_timer = type { %struct.TYPE_9__, %struct.pvr2_hdw* }
%struct.TYPE_9__ = type { i64 }

@PVR2_TRACE_ERROR_LEGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Attempted to execute control transfer without lock!!\00", align 1
@EDEADLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Attempted to execute control transfer when device not ok\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"Attempted to execute control transfer when USB is disconnected\00", align 1
@ENOTTY = common dso_local global i32 0, align 4
@PVR2_CTL_BUFFSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"Attempted to execute %d byte control-write transfer (limit=%d)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [62 x i8] c"Attempted to execute %d byte control-read transfer (limit=%d)\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Attempted to execute null control transfer?\00", align 1
@pvr2_ctl_timeout = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@PVR2_CTL_WRITE_ENDPOINT = common dso_local global i32 0, align 4
@pvr2_ctl_write_complete = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Invalid write control endpoint\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [45 x i8] c"Failed to submit write-control URB status=%d\00", align 1
@PVR2_CTL_READ_ENDPOINT = common dso_local global i32 0, align 4
@pvr2_ctl_read_complete = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"Invalid read control endpoint\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"Failed to submit read-control URB status=%d\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"Timed out control-write\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [37 x i8] c"control-write URB failure, status=%d\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"control-write URB short, expected=%d got=%d\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"control-read URB failure, status=%d\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"control-read URB short, expected=%d got=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_hdw*, i32, i32, i8*, i32, i8*, i32)* @pvr2_send_request_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_send_request_ex(%struct.pvr2_hdw* %0, i32 %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.pvr2_hdw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.hdw_timer, align 8
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %19 = getelementptr inbounds %struct.hdw_timer, %struct.hdw_timer* %18, i32 0, i32 0
  %20 = bitcast %struct.TYPE_9__* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 8, i1 false)
  %21 = getelementptr inbounds %struct.hdw_timer, %struct.hdw_timer* %18, i32 0, i32 1
  %22 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  store %struct.pvr2_hdw* %22, %struct.pvr2_hdw** %21, align 8
  %23 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %24 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %23, i32 0, i32 14
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %7
  %28 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %29 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %28, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EDEADLK, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %512

32:                                               ; preds = %7
  %33 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %34 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %33, i32 0, i32 13
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %42 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %41, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %512

45:                                               ; preds = %37, %32
  %46 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %47 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %46, i32 0, i32 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = icmp ne %struct.TYPE_8__* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %52 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %51, i32 0, i32 9
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = icmp ne %struct.TYPE_8__* %53, null
  br i1 %54, label %64, label %55

55:                                               ; preds = %50, %45
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %60 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %59, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32, i32* @ENOTTY, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %8, align 4
  br label %512

64:                                               ; preds = %50
  %65 = load i8*, i8** %12, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  store i32 0, i32* %13, align 4
  br label %68

68:                                               ; preds = %67, %64
  %69 = load i8*, i8** %14, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  store i32 0, i32* %15, align 4
  br label %72

72:                                               ; preds = %71, %68
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @PVR2_CTL_BUFFSIZE, align 4
  %75 = icmp ugt i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @PVR2_CTL_BUFFSIZE, align 4
  %80 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %77, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %78, i32 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %8, align 4
  br label %512

83:                                               ; preds = %72
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* @PVR2_CTL_BUFFSIZE, align 4
  %86 = icmp ugt i32 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* @PVR2_CTL_BUFFSIZE, align 4
  %91 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %88, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i32 %89, i32 %90)
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %8, align 4
  br label %512

94:                                               ; preds = %83
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %15, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %102 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %101, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %8, align 4
  br label %512

105:                                              ; preds = %97, %94
  %106 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %107 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %105
  %111 = load i8*, i8** %12, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load i8*, i8** %12, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %118 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %117, i32 0, i32 1
  store i8 %116, i8* %118, align 4
  br label %122

119:                                              ; preds = %110, %105
  %120 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %121 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %120, i32 0, i32 1
  store i8 0, i8* %121, align 4
  br label %122

122:                                              ; preds = %119, %113
  %123 = load i32, i32* %13, align 4
  %124 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %125 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* %15, align 4
  %127 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %128 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 4
  %129 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %130 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %129, i32 0, i32 11
  %131 = call i32 @init_completion(i32* %130)
  %132 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %133 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %132, i32 0, i32 10
  store i64 0, i64* %133, align 8
  %134 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %135 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %134, i32 0, i32 4
  store i32 0, i32* %135, align 8
  %136 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %137 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %136, i32 0, i32 5
  store i32 0, i32* %137, align 4
  %138 = getelementptr inbounds %struct.hdw_timer, %struct.hdw_timer* %18, i32 0, i32 0
  %139 = load i32, i32* @pvr2_ctl_timeout, align 4
  %140 = call i32 @timer_setup_on_stack(%struct.TYPE_9__* %138, i32 %139, i32 0)
  %141 = load i64, i64* @jiffies, align 8
  %142 = load i32, i32* %10, align 4
  %143 = zext i32 %142 to i64
  %144 = add nsw i64 %141, %143
  %145 = getelementptr inbounds %struct.hdw_timer, %struct.hdw_timer* %18, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  %147 = load i32, i32* %13, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %224

149:                                              ; preds = %122
  %150 = load i8*, i8** %12, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %224

152:                                              ; preds = %149
  %153 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %154 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %153, i32 0, i32 0
  store i32 2, i32* %154, align 8
  store i32 0, i32* %16, align 4
  br label %155

155:                                              ; preds = %171, %152
  %156 = load i32, i32* %16, align 4
  %157 = load i32, i32* %13, align 4
  %158 = icmp ult i32 %156, %157
  br i1 %158, label %159, label %174

159:                                              ; preds = %155
  %160 = load i8*, i8** %12, align 8
  %161 = load i32, i32* %16, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %166 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %165, i32 0, i32 6
  %167 = load i8*, i8** %166, align 8
  %168 = load i32, i32* %16, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  store i8 %164, i8* %170, align 1
  br label %171

171:                                              ; preds = %159
  %172 = load i32, i32* %16, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %16, align 4
  br label %155

174:                                              ; preds = %155
  %175 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %176 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %175, i32 0, i32 9
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %176, align 8
  %178 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %179 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %178, i32 0, i32 12
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %182 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %181, i32 0, i32 12
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @PVR2_CTL_WRITE_ENDPOINT, align 4
  %185 = call i32 @usb_sndbulkpipe(i32 %183, i32 %184)
  %186 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %187 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %186, i32 0, i32 6
  %188 = load i8*, i8** %187, align 8
  %189 = load i32, i32* %13, align 4
  %190 = load i32, i32* @pvr2_ctl_write_complete, align 4
  %191 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %192 = call i32 @usb_fill_bulk_urb(%struct.TYPE_8__* %177, i32 %180, i32 %185, i8* %188, i32 %189, i32 %190, %struct.pvr2_hdw* %191)
  %193 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %194 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %193, i32 0, i32 9
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  store i32 0, i32* %196, align 4
  %197 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %198 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %197, i32 0, i32 4
  store i32 1, i32* %198, align 8
  %199 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %200 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %199, i32 0, i32 9
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %200, align 8
  %202 = call i64 @usb_urb_ep_type_check(%struct.TYPE_8__* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %174
  %205 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %206 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %205, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %207 = load i32, i32* @EINVAL, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %8, align 4
  br label %512

209:                                              ; preds = %174
  %210 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %211 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %210, i32 0, i32 9
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %211, align 8
  %213 = load i32, i32* @GFP_KERNEL, align 4
  %214 = call i32 @usb_submit_urb(%struct.TYPE_8__* %212, i32 %213)
  store i32 %214, i32* %17, align 4
  %215 = load i32, i32* %17, align 4
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %209
  %218 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %219 = load i32, i32* %17, align 4
  %220 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %218, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %219)
  %221 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %222 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %221, i32 0, i32 4
  store i32 0, i32* %222, align 8
  br label %497

223:                                              ; preds = %209
  br label %224

224:                                              ; preds = %223, %149, %122
  %225 = load i32, i32* %15, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %284

227:                                              ; preds = %224
  %228 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %229 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %228, i32 0, i32 0
  store i32 3, i32* %229, align 8
  %230 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %231 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %230, i32 0, i32 7
  %232 = load i8*, i8** %231, align 8
  %233 = load i32, i32* %15, align 4
  %234 = call i32 @memset(i8* %232, i32 67, i32 %233)
  %235 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %236 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %235, i32 0, i32 8
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %236, align 8
  %238 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %239 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %238, i32 0, i32 12
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %242 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %241, i32 0, i32 12
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @PVR2_CTL_READ_ENDPOINT, align 4
  %245 = call i32 @usb_rcvbulkpipe(i32 %243, i32 %244)
  %246 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %247 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %246, i32 0, i32 7
  %248 = load i8*, i8** %247, align 8
  %249 = load i32, i32* %15, align 4
  %250 = load i32, i32* @pvr2_ctl_read_complete, align 4
  %251 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %252 = call i32 @usb_fill_bulk_urb(%struct.TYPE_8__* %237, i32 %240, i32 %245, i8* %248, i32 %249, i32 %250, %struct.pvr2_hdw* %251)
  %253 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %254 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %253, i32 0, i32 8
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 0
  store i32 0, i32* %256, align 4
  %257 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %258 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %257, i32 0, i32 5
  store i32 1, i32* %258, align 4
  %259 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %260 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %259, i32 0, i32 8
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %260, align 8
  %262 = call i64 @usb_urb_ep_type_check(%struct.TYPE_8__* %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %227
  %265 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %266 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %265, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %267 = load i32, i32* @EINVAL, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %8, align 4
  br label %512

269:                                              ; preds = %227
  %270 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %271 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %270, i32 0, i32 8
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %271, align 8
  %273 = load i32, i32* @GFP_KERNEL, align 4
  %274 = call i32 @usb_submit_urb(%struct.TYPE_8__* %272, i32 %273)
  store i32 %274, i32* %17, align 4
  %275 = load i32, i32* %17, align 4
  %276 = icmp slt i32 %275, 0
  br i1 %276, label %277, label %283

277:                                              ; preds = %269
  %278 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %279 = load i32, i32* %17, align 4
  %280 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %278, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i32 %279)
  %281 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %282 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %281, i32 0, i32 5
  store i32 0, i32* %282, align 4
  br label %497

283:                                              ; preds = %269
  br label %284

284:                                              ; preds = %283, %224
  %285 = getelementptr inbounds %struct.hdw_timer, %struct.hdw_timer* %18, i32 0, i32 0
  %286 = call i32 @add_timer(%struct.TYPE_9__* %285)
  %287 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %288 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %287, i32 0, i32 0
  store i32 4, i32* %288, align 8
  br label %289

289:                                              ; preds = %301, %284
  %290 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %291 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %290, i32 0, i32 4
  %292 = load i32, i32* %291, align 8
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %299, label %294

294:                                              ; preds = %289
  %295 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %296 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %295, i32 0, i32 5
  %297 = load i32, i32* %296, align 4
  %298 = icmp ne i32 %297, 0
  br label %299

299:                                              ; preds = %294, %289
  %300 = phi i1 [ true, %289 ], [ %298, %294 ]
  br i1 %300, label %301, label %305

301:                                              ; preds = %299
  %302 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %303 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %302, i32 0, i32 11
  %304 = call i32 @wait_for_completion(i32* %303)
  br label %289

305:                                              ; preds = %299
  %306 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %307 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %306, i32 0, i32 0
  store i32 5, i32* %307, align 8
  %308 = getelementptr inbounds %struct.hdw_timer, %struct.hdw_timer* %18, i32 0, i32 0
  %309 = call i32 @del_timer_sync(%struct.TYPE_9__* %308)
  %310 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %311 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %310, i32 0, i32 0
  store i32 6, i32* %311, align 8
  store i32 0, i32* %17, align 4
  %312 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %313 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %312, i32 0, i32 10
  %314 = load i64, i64* %313, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %325

316:                                              ; preds = %305
  %317 = load i32, i32* @ETIMEDOUT, align 4
  %318 = sub nsw i32 0, %317
  store i32 %318, i32* %17, align 4
  %319 = load i32, i32* %11, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %324, label %321

321:                                              ; preds = %316
  %322 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %323 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %322, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %324

324:                                              ; preds = %321, %316
  br label %497

325:                                              ; preds = %305
  %326 = load i32, i32* %13, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %399

328:                                              ; preds = %325
  %329 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %330 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %329, i32 0, i32 9
  %331 = load %struct.TYPE_8__*, %struct.TYPE_8__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %375

335:                                              ; preds = %328
  %336 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %337 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %336, i32 0, i32 9
  %338 = load %struct.TYPE_8__*, %struct.TYPE_8__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* @ENOENT, align 4
  %342 = sub nsw i32 0, %341
  %343 = icmp ne i32 %340, %342
  br i1 %343, label %344, label %375

344:                                              ; preds = %335
  %345 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %346 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %345, i32 0, i32 9
  %347 = load %struct.TYPE_8__*, %struct.TYPE_8__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = load i32, i32* @ESHUTDOWN, align 4
  %351 = sub nsw i32 0, %350
  %352 = icmp ne i32 %349, %351
  br i1 %352, label %353, label %375

353:                                              ; preds = %344
  %354 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %355 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %354, i32 0, i32 9
  %356 = load %struct.TYPE_8__*, %struct.TYPE_8__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* @ECONNRESET, align 4
  %360 = sub nsw i32 0, %359
  %361 = icmp ne i32 %358, %360
  br i1 %361, label %362, label %375

362:                                              ; preds = %353
  %363 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %364 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %363, i32 0, i32 9
  %365 = load %struct.TYPE_8__*, %struct.TYPE_8__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  store i32 %367, i32* %17, align 4
  %368 = load i32, i32* %11, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %374, label %370

370:                                              ; preds = %362
  %371 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %372 = load i32, i32* %17, align 4
  %373 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %371, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i32 %372)
  br label %374

374:                                              ; preds = %370, %362
  br label %497

375:                                              ; preds = %353, %344, %335, %328
  %376 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %377 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %376, i32 0, i32 9
  %378 = load %struct.TYPE_8__*, %struct.TYPE_8__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = load i32, i32* %13, align 4
  %382 = icmp ult i32 %380, %381
  br i1 %382, label %383, label %398

383:                                              ; preds = %375
  %384 = load i32, i32* @EIO, align 4
  %385 = sub nsw i32 0, %384
  store i32 %385, i32* %17, align 4
  %386 = load i32, i32* %11, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %397, label %388

388:                                              ; preds = %383
  %389 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %390 = load i32, i32* %13, align 4
  %391 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %392 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %391, i32 0, i32 9
  %393 = load %struct.TYPE_8__*, %struct.TYPE_8__** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 4
  %396 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %389, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), i32 %390, i32 %395)
  br label %397

397:                                              ; preds = %388, %383
  br label %497

398:                                              ; preds = %375
  br label %399

399:                                              ; preds = %398, %325
  %400 = load i32, i32* %15, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %496

402:                                              ; preds = %399
  %403 = load i8*, i8** %14, align 8
  %404 = icmp ne i8* %403, null
  br i1 %404, label %405, label %496

405:                                              ; preds = %402
  %406 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %407 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %406, i32 0, i32 8
  %408 = load %struct.TYPE_8__*, %struct.TYPE_8__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %452

412:                                              ; preds = %405
  %413 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %414 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %413, i32 0, i32 8
  %415 = load %struct.TYPE_8__*, %struct.TYPE_8__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 4
  %418 = load i32, i32* @ENOENT, align 4
  %419 = sub nsw i32 0, %418
  %420 = icmp ne i32 %417, %419
  br i1 %420, label %421, label %452

421:                                              ; preds = %412
  %422 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %423 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %422, i32 0, i32 8
  %424 = load %struct.TYPE_8__*, %struct.TYPE_8__** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 4
  %427 = load i32, i32* @ESHUTDOWN, align 4
  %428 = sub nsw i32 0, %427
  %429 = icmp ne i32 %426, %428
  br i1 %429, label %430, label %452

430:                                              ; preds = %421
  %431 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %432 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %431, i32 0, i32 8
  %433 = load %struct.TYPE_8__*, %struct.TYPE_8__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %433, i32 0, i32 1
  %435 = load i32, i32* %434, align 4
  %436 = load i32, i32* @ECONNRESET, align 4
  %437 = sub nsw i32 0, %436
  %438 = icmp ne i32 %435, %437
  br i1 %438, label %439, label %452

439:                                              ; preds = %430
  %440 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %441 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %440, i32 0, i32 8
  %442 = load %struct.TYPE_8__*, %struct.TYPE_8__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %442, i32 0, i32 1
  %444 = load i32, i32* %443, align 4
  store i32 %444, i32* %17, align 4
  %445 = load i32, i32* %11, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %451, label %447

447:                                              ; preds = %439
  %448 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %449 = load i32, i32* %17, align 4
  %450 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %448, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i32 %449)
  br label %451

451:                                              ; preds = %447, %439
  br label %497

452:                                              ; preds = %430, %421, %412, %405
  %453 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %454 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %453, i32 0, i32 8
  %455 = load %struct.TYPE_8__*, %struct.TYPE_8__** %454, align 8
  %456 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 4
  %458 = load i32, i32* %15, align 4
  %459 = icmp ult i32 %457, %458
  br i1 %459, label %460, label %475

460:                                              ; preds = %452
  %461 = load i32, i32* @EIO, align 4
  %462 = sub nsw i32 0, %461
  store i32 %462, i32* %17, align 4
  %463 = load i32, i32* %11, align 4
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %474, label %465

465:                                              ; preds = %460
  %466 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %467 = load i32, i32* %15, align 4
  %468 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %469 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %468, i32 0, i32 8
  %470 = load %struct.TYPE_8__*, %struct.TYPE_8__** %469, align 8
  %471 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 4
  %473 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %466, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i32 %467, i32 %472)
  br label %474

474:                                              ; preds = %465, %460
  br label %497

475:                                              ; preds = %452
  store i32 0, i32* %16, align 4
  br label %476

476:                                              ; preds = %492, %475
  %477 = load i32, i32* %16, align 4
  %478 = load i32, i32* %15, align 4
  %479 = icmp ult i32 %477, %478
  br i1 %479, label %480, label %495

480:                                              ; preds = %476
  %481 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %482 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %481, i32 0, i32 7
  %483 = load i8*, i8** %482, align 8
  %484 = load i32, i32* %16, align 4
  %485 = zext i32 %484 to i64
  %486 = getelementptr inbounds i8, i8* %483, i64 %485
  %487 = load i8, i8* %486, align 1
  %488 = load i8*, i8** %14, align 8
  %489 = load i32, i32* %16, align 4
  %490 = zext i32 %489 to i64
  %491 = getelementptr inbounds i8, i8* %488, i64 %490
  store i8 %487, i8* %491, align 1
  br label %492

492:                                              ; preds = %480
  %493 = load i32, i32* %16, align 4
  %494 = add i32 %493, 1
  store i32 %494, i32* %16, align 4
  br label %476

495:                                              ; preds = %476
  br label %496

496:                                              ; preds = %495, %402, %399
  br label %497

497:                                              ; preds = %496, %474, %451, %397, %374, %324, %277, %217
  %498 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %499 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %498, i32 0, i32 0
  store i32 0, i32* %499, align 8
  %500 = load i32, i32* %17, align 4
  %501 = icmp slt i32 %500, 0
  br i1 %501, label %502, label %508

502:                                              ; preds = %497
  %503 = load i32, i32* %11, align 4
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %508, label %505

505:                                              ; preds = %502
  %506 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %507 = call i32 @pvr2_hdw_render_useless(%struct.pvr2_hdw* %506)
  br label %508

508:                                              ; preds = %505, %502, %497
  %509 = getelementptr inbounds %struct.hdw_timer, %struct.hdw_timer* %18, i32 0, i32 0
  %510 = call i32 @destroy_timer_on_stack(%struct.TYPE_9__* %509)
  %511 = load i32, i32* %17, align 4
  store i32 %511, i32* %8, align 4
  br label %512

512:                                              ; preds = %508, %264, %204, %100, %87, %76, %61, %40, %27
  %513 = load i32, i32* %8, align 4
  ret i32 %513
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @pvr2_trace(i32, i8*, ...) #2

declare dso_local i32 @init_completion(i32*) #2

declare dso_local i32 @timer_setup_on_stack(%struct.TYPE_9__*, i32, i32) #2

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_8__*, i32, i32, i8*, i32, i32, %struct.pvr2_hdw*) #2

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #2

declare dso_local i64 @usb_urb_ep_type_check(%struct.TYPE_8__*) #2

declare dso_local i32 @usb_submit_urb(%struct.TYPE_8__*, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #2

declare dso_local i32 @add_timer(%struct.TYPE_9__*) #2

declare dso_local i32 @wait_for_completion(i32*) #2

declare dso_local i32 @del_timer_sync(%struct.TYPE_9__*) #2

declare dso_local i32 @pvr2_hdw_render_useless(%struct.pvr2_hdw*) #2

declare dso_local i32 @destroy_timer_on_stack(%struct.TYPE_9__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
