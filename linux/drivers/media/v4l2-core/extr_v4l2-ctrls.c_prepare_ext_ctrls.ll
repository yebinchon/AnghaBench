; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_prepare_ext_ctrls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_prepare_ext_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl_handler = type { i32 }
%struct.v4l2_ext_controls = type { i64, i64, i64, %struct.v4l2_ext_control* }
%struct.v4l2_ext_control = type { i64, i32 }
%struct.v4l2_ctrl_helper = type { i64, %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref* }
%struct.v4l2_ctrl_ref = type { %struct.v4l2_ctrl_helper*, %struct.v4l2_ctrl* }
%struct.v4l2_ctrl = type { i32, i32, i64, i32, i32, i32, i64, %struct.v4l2_ctrl** }
%struct.video_device = type { i32 }

@V4L2_CTRL_ID_MASK = common dso_local global i64 0, align 8
@V4L2_CTRL_WHICH_DEF_VAL = common dso_local global i64 0, align 8
@V4L2_CTRL_WHICH_REQUEST_VAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"invalid which 0x%x or control id 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_CID_PRIVATE_BASE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"old-style private controls not allowed\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"cannot find control id 0x%x\0A\00", align 1
@V4L2_CTRL_FLAG_DISABLED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"control id 0x%x is disabled\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [70 x i8] c"pointer control id 0x%x size too small, %d bytes but %d bytes needed\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl_handler*, %struct.v4l2_ext_controls*, %struct.v4l2_ctrl_helper*, %struct.video_device*, i32)* @prepare_ext_ctrls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_ext_ctrls(%struct.v4l2_ctrl_handler* %0, %struct.v4l2_ext_controls* %1, %struct.v4l2_ctrl_helper* %2, %struct.video_device* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_ctrl_handler*, align 8
  %8 = alloca %struct.v4l2_ext_controls*, align 8
  %9 = alloca %struct.v4l2_ctrl_helper*, align 8
  %10 = alloca %struct.video_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.v4l2_ctrl_helper*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.v4l2_ext_control*, align 8
  %16 = alloca %struct.v4l2_ctrl_ref*, align 8
  %17 = alloca %struct.v4l2_ctrl*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.v4l2_ctrl_ref*, align 8
  store %struct.v4l2_ctrl_handler* %0, %struct.v4l2_ctrl_handler** %7, align 8
  store %struct.v4l2_ext_controls* %1, %struct.v4l2_ext_controls** %8, align 8
  store %struct.v4l2_ctrl_helper* %2, %struct.v4l2_ctrl_helper** %9, align 8
  store %struct.video_device* %3, %struct.video_device** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  %21 = load %struct.v4l2_ctrl_helper*, %struct.v4l2_ctrl_helper** %9, align 8
  store %struct.v4l2_ctrl_helper* %21, %struct.v4l2_ctrl_helper** %12, align 8
  br label %22

22:                                               ; preds = %194, %5
  %23 = load i64, i64* %14, align 8
  %24 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %8, align 8
  %25 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %199

28:                                               ; preds = %22
  %29 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %8, align 8
  %30 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %29, i32 0, i32 3
  %31 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %30, align 8
  %32 = load i64, i64* %14, align 8
  %33 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %31, i64 %32
  store %struct.v4l2_ext_control* %33, %struct.v4l2_ext_control** %15, align 8
  %34 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %15, align 8
  %35 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @V4L2_CTRL_ID_MASK, align 8
  %38 = and i64 %36, %37
  store i64 %38, i64* %18, align 8
  %39 = load i64, i64* %14, align 8
  %40 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %8, align 8
  %41 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %8, align 8
  %43 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %74

46:                                               ; preds = %28
  %47 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %8, align 8
  %48 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @V4L2_CTRL_WHICH_DEF_VAL, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %46
  %53 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %8, align 8
  %54 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @V4L2_CTRL_WHICH_REQUEST_VAL, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %52
  %59 = load i64, i64* %18, align 8
  %60 = call i64 @V4L2_CTRL_ID2WHICH(i64 %59)
  %61 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %8, align 8
  %62 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %58
  %66 = load %struct.video_device*, %struct.video_device** %10, align 8
  %67 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %8, align 8
  %68 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %18, align 8
  %71 = call i32 (%struct.video_device*, i8*, ...) @dprintk(%struct.video_device* %66, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %69, i64 %70)
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %262

74:                                               ; preds = %58, %52, %46, %28
  %75 = load i64, i64* %18, align 8
  %76 = load i64, i64* @V4L2_CID_PRIVATE_BASE, align 8
  %77 = icmp uge i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load %struct.video_device*, %struct.video_device** %10, align 8
  %80 = call i32 (%struct.video_device*, i8*, ...) @dprintk(%struct.video_device* %79, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %262

83:                                               ; preds = %74
  %84 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %85 = load i64, i64* %18, align 8
  %86 = call %struct.v4l2_ctrl_ref* @find_ref_lock(%struct.v4l2_ctrl_handler* %84, i64 %85)
  store %struct.v4l2_ctrl_ref* %86, %struct.v4l2_ctrl_ref** %16, align 8
  %87 = load %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref** %16, align 8
  %88 = icmp eq %struct.v4l2_ctrl_ref* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load %struct.video_device*, %struct.video_device** %10, align 8
  %91 = load i64, i64* %18, align 8
  %92 = call i32 (%struct.video_device*, i8*, ...) @dprintk(%struct.video_device* %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %6, align 4
  br label %262

95:                                               ; preds = %83
  %96 = load %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref** %16, align 8
  %97 = load %struct.v4l2_ctrl_helper*, %struct.v4l2_ctrl_helper** %12, align 8
  %98 = getelementptr inbounds %struct.v4l2_ctrl_helper, %struct.v4l2_ctrl_helper* %97, i32 0, i32 2
  store %struct.v4l2_ctrl_ref* %96, %struct.v4l2_ctrl_ref** %98, align 8
  %99 = load %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref** %16, align 8
  %100 = getelementptr inbounds %struct.v4l2_ctrl_ref, %struct.v4l2_ctrl_ref* %99, i32 0, i32 1
  %101 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %100, align 8
  store %struct.v4l2_ctrl* %101, %struct.v4l2_ctrl** %17, align 8
  %102 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %17, align 8
  %103 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @V4L2_CTRL_FLAG_DISABLED, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %95
  %109 = load %struct.video_device*, %struct.video_device** %10, align 8
  %110 = load i64, i64* %18, align 8
  %111 = call i32 (%struct.video_device*, i8*, ...) @dprintk(%struct.video_device* %109, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %110)
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %6, align 4
  br label %262

114:                                              ; preds = %95
  %115 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %17, align 8
  %116 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %115, i32 0, i32 7
  %117 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %116, align 8
  %118 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %117, i64 0
  %119 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %118, align 8
  %120 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp sgt i32 %121, 1
  br i1 %122, label %123, label %124

123:                                              ; preds = %114
  store i32 1, i32* %13, align 4
  br label %124

124:                                              ; preds = %123, %114
  %125 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %17, align 8
  %126 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %125, i32 0, i32 7
  %127 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %126, align 8
  %128 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %127, i64 0
  %129 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %128, align 8
  %130 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %17, align 8
  %131 = icmp ne %struct.v4l2_ctrl* %129, %130
  br i1 %131, label %132, label %142

132:                                              ; preds = %124
  %133 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %134 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %17, align 8
  %135 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %134, i32 0, i32 7
  %136 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %135, align 8
  %137 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %136, i64 0
  %138 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %137, align 8
  %139 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = call %struct.v4l2_ctrl_ref* @find_ref_lock(%struct.v4l2_ctrl_handler* %133, i64 %140)
  store %struct.v4l2_ctrl_ref* %141, %struct.v4l2_ctrl_ref** %16, align 8
  br label %142

142:                                              ; preds = %132, %124
  %143 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %17, align 8
  %144 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %143, i32 0, i32 6
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %188

147:                                              ; preds = %142
  %148 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %17, align 8
  %149 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %188, label %152

152:                                              ; preds = %147
  %153 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %17, align 8
  %154 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %17, align 8
  %157 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = mul i32 %155, %158
  store i32 %159, i32* %19, align 4
  %160 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %15, align 8
  %161 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %19, align 4
  %164 = icmp ult i32 %162, %163
  br i1 %164, label %165, label %184

165:                                              ; preds = %152
  %166 = load i32, i32* %11, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = load i32, i32* %19, align 4
  %170 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %15, align 8
  %171 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 8
  %172 = load i32, i32* @ENOSPC, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %6, align 4
  br label %262

174:                                              ; preds = %165
  %175 = load %struct.video_device*, %struct.video_device** %10, align 8
  %176 = load i64, i64* %18, align 8
  %177 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %15, align 8
  %178 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %19, align 4
  %181 = call i32 (%struct.video_device*, i8*, ...) @dprintk(%struct.video_device* %175, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0), i64 %176, i32 %179, i32 %180)
  %182 = load i32, i32* @EFAULT, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %6, align 4
  br label %262

184:                                              ; preds = %152
  %185 = load i32, i32* %19, align 4
  %186 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %15, align 8
  %187 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 8
  br label %188

188:                                              ; preds = %184, %147, %142
  %189 = load %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref** %16, align 8
  %190 = load %struct.v4l2_ctrl_helper*, %struct.v4l2_ctrl_helper** %12, align 8
  %191 = getelementptr inbounds %struct.v4l2_ctrl_helper, %struct.v4l2_ctrl_helper* %190, i32 0, i32 1
  store %struct.v4l2_ctrl_ref* %189, %struct.v4l2_ctrl_ref** %191, align 8
  %192 = load %struct.v4l2_ctrl_helper*, %struct.v4l2_ctrl_helper** %12, align 8
  %193 = getelementptr inbounds %struct.v4l2_ctrl_helper, %struct.v4l2_ctrl_helper* %192, i32 0, i32 0
  store i64 0, i64* %193, align 8
  br label %194

194:                                              ; preds = %188
  %195 = load i64, i64* %14, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %14, align 8
  %197 = load %struct.v4l2_ctrl_helper*, %struct.v4l2_ctrl_helper** %12, align 8
  %198 = getelementptr inbounds %struct.v4l2_ctrl_helper, %struct.v4l2_ctrl_helper* %197, i32 1
  store %struct.v4l2_ctrl_helper* %198, %struct.v4l2_ctrl_helper** %12, align 8
  br label %22

199:                                              ; preds = %22
  %200 = load i32, i32* %13, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %199
  store i32 0, i32* %6, align 4
  br label %262

203:                                              ; preds = %199
  %204 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %205 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @mutex_lock(i32 %206)
  store i64 0, i64* %14, align 8
  br label %208

208:                                              ; preds = %221, %203
  %209 = load i64, i64* %14, align 8
  %210 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %8, align 8
  %211 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = icmp ult i64 %209, %212
  br i1 %213, label %214, label %224

214:                                              ; preds = %208
  %215 = load %struct.v4l2_ctrl_helper*, %struct.v4l2_ctrl_helper** %9, align 8
  %216 = load i64, i64* %14, align 8
  %217 = getelementptr inbounds %struct.v4l2_ctrl_helper, %struct.v4l2_ctrl_helper* %215, i64 %216
  %218 = getelementptr inbounds %struct.v4l2_ctrl_helper, %struct.v4l2_ctrl_helper* %217, i32 0, i32 1
  %219 = load %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref** %218, align 8
  %220 = getelementptr inbounds %struct.v4l2_ctrl_ref, %struct.v4l2_ctrl_ref* %219, i32 0, i32 0
  store %struct.v4l2_ctrl_helper* null, %struct.v4l2_ctrl_helper** %220, align 8
  br label %221

221:                                              ; preds = %214
  %222 = load i64, i64* %14, align 8
  %223 = add i64 %222, 1
  store i64 %223, i64* %14, align 8
  br label %208

224:                                              ; preds = %208
  store i64 0, i64* %14, align 8
  %225 = load %struct.v4l2_ctrl_helper*, %struct.v4l2_ctrl_helper** %9, align 8
  store %struct.v4l2_ctrl_helper* %225, %struct.v4l2_ctrl_helper** %12, align 8
  br label %226

226:                                              ; preds = %252, %224
  %227 = load i64, i64* %14, align 8
  %228 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %8, align 8
  %229 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp ult i64 %227, %230
  br i1 %231, label %232, label %257

232:                                              ; preds = %226
  %233 = load %struct.v4l2_ctrl_helper*, %struct.v4l2_ctrl_helper** %12, align 8
  %234 = getelementptr inbounds %struct.v4l2_ctrl_helper, %struct.v4l2_ctrl_helper* %233, i32 0, i32 1
  %235 = load %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref** %234, align 8
  store %struct.v4l2_ctrl_ref* %235, %struct.v4l2_ctrl_ref** %20, align 8
  %236 = load %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref** %20, align 8
  %237 = getelementptr inbounds %struct.v4l2_ctrl_ref, %struct.v4l2_ctrl_ref* %236, i32 0, i32 0
  %238 = load %struct.v4l2_ctrl_helper*, %struct.v4l2_ctrl_helper** %237, align 8
  %239 = icmp ne %struct.v4l2_ctrl_helper* %238, null
  br i1 %239, label %240, label %248

240:                                              ; preds = %232
  %241 = load i64, i64* %14, align 8
  %242 = load %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref** %20, align 8
  %243 = getelementptr inbounds %struct.v4l2_ctrl_ref, %struct.v4l2_ctrl_ref* %242, i32 0, i32 0
  %244 = load %struct.v4l2_ctrl_helper*, %struct.v4l2_ctrl_helper** %243, align 8
  %245 = getelementptr inbounds %struct.v4l2_ctrl_helper, %struct.v4l2_ctrl_helper* %244, i32 0, i32 0
  store i64 %241, i64* %245, align 8
  %246 = load %struct.v4l2_ctrl_helper*, %struct.v4l2_ctrl_helper** %12, align 8
  %247 = getelementptr inbounds %struct.v4l2_ctrl_helper, %struct.v4l2_ctrl_helper* %246, i32 0, i32 1
  store %struct.v4l2_ctrl_ref* null, %struct.v4l2_ctrl_ref** %247, align 8
  br label %248

248:                                              ; preds = %240, %232
  %249 = load %struct.v4l2_ctrl_helper*, %struct.v4l2_ctrl_helper** %12, align 8
  %250 = load %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref** %20, align 8
  %251 = getelementptr inbounds %struct.v4l2_ctrl_ref, %struct.v4l2_ctrl_ref* %250, i32 0, i32 0
  store %struct.v4l2_ctrl_helper* %249, %struct.v4l2_ctrl_helper** %251, align 8
  br label %252

252:                                              ; preds = %248
  %253 = load i64, i64* %14, align 8
  %254 = add i64 %253, 1
  store i64 %254, i64* %14, align 8
  %255 = load %struct.v4l2_ctrl_helper*, %struct.v4l2_ctrl_helper** %12, align 8
  %256 = getelementptr inbounds %struct.v4l2_ctrl_helper, %struct.v4l2_ctrl_helper* %255, i32 1
  store %struct.v4l2_ctrl_helper* %256, %struct.v4l2_ctrl_helper** %12, align 8
  br label %226

257:                                              ; preds = %226
  %258 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %259 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @mutex_unlock(i32 %260)
  store i32 0, i32* %6, align 4
  br label %262

262:                                              ; preds = %257, %202, %174, %168, %108, %89, %78, %65
  %263 = load i32, i32* %6, align 4
  ret i32 %263
}

declare dso_local i64 @V4L2_CTRL_ID2WHICH(i64) #1

declare dso_local i32 @dprintk(%struct.video_device*, i8*, ...) #1

declare dso_local %struct.v4l2_ctrl_ref* @find_ref_lock(%struct.v4l2_ctrl_handler*, i64) #1

declare dso_local i32 @mutex_lock(i32) #1

declare dso_local i32 @mutex_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
