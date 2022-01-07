; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_try_set_ext_ctrls_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_try_set_ext_ctrls_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fh = type { i32 }
%struct.v4l2_ctrl_handler = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.v4l2_ext_controls = type { i32, i32, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.video_device = type { i32 }
%struct.v4l2_ctrl_helper = type { i32, %struct.TYPE_10__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { %struct.v4l2_ctrl* }
%struct.v4l2_ctrl = type { i32, i64, %struct.TYPE_9__**, i32, i64, i64, i64 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_7__ = type { %struct.v4l2_ctrl* }
%struct.v4l2_ctrl_ref = type { i32 }

@V4L2_CTRL_WHICH_DEF_VAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"%s: cannot change default value\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: invalid null control handler\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_fh*, %struct.v4l2_ctrl_handler*, %struct.v4l2_ext_controls*, %struct.video_device*, i32)* @try_set_ext_ctrls_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_set_ext_ctrls_common(%struct.v4l2_fh* %0, %struct.v4l2_ctrl_handler* %1, %struct.v4l2_ext_controls* %2, %struct.video_device* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_fh*, align 8
  %8 = alloca %struct.v4l2_ctrl_handler*, align 8
  %9 = alloca %struct.v4l2_ext_controls*, align 8
  %10 = alloca %struct.video_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [4 x %struct.v4l2_ctrl_helper], align 16
  %13 = alloca %struct.v4l2_ctrl_helper*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.v4l2_ctrl*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.v4l2_ctrl*, align 8
  %22 = alloca %struct.v4l2_ctrl_ref*, align 8
  store %struct.v4l2_fh* %0, %struct.v4l2_fh** %7, align 8
  store %struct.v4l2_ctrl_handler* %1, %struct.v4l2_ctrl_handler** %8, align 8
  store %struct.v4l2_ext_controls* %2, %struct.v4l2_ext_controls** %9, align 8
  store %struct.video_device* %3, %struct.video_device** %10, align 8
  store i32 %4, i32* %11, align 4
  %23 = getelementptr inbounds [4 x %struct.v4l2_ctrl_helper], [4 x %struct.v4l2_ctrl_helper]* %12, i64 0, i64 0
  store %struct.v4l2_ctrl_helper* %23, %struct.v4l2_ctrl_helper** %13, align 8
  %24 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %9, align 8
  %25 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %9, align 8
  %28 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %9, align 8
  %30 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @V4L2_CTRL_WHICH_DEF_VAL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %5
  %35 = load %struct.video_device*, %struct.video_device** %10, align 8
  %36 = load %struct.video_device*, %struct.video_device** %10, align 8
  %37 = call i32 @video_device_node_name(%struct.video_device* %36)
  %38 = call i32 @dprintk(%struct.video_device* %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %392

41:                                               ; preds = %5
  %42 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %9, align 8
  %43 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @V4L2_CTRL_ID2WHICH(i64 %44)
  %46 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %9, align 8
  %47 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  %48 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %49 = icmp eq %struct.v4l2_ctrl_handler* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %41
  %51 = load %struct.video_device*, %struct.video_device** %10, align 8
  %52 = load %struct.video_device*, %struct.video_device** %10, align 8
  %53 = call i32 @video_device_node_name(%struct.video_device* %52)
  %54 = call i32 @dprintk(%struct.video_device* %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %392

57:                                               ; preds = %41
  %58 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %9, align 8
  %59 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %64 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %9, align 8
  %65 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @class_check(%struct.v4l2_ctrl_handler* %63, i64 %66)
  store i32 %67, i32* %6, align 4
  br label %392

68:                                               ; preds = %57
  %69 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %9, align 8
  %70 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds [4 x %struct.v4l2_ctrl_helper], [4 x %struct.v4l2_ctrl_helper]* %12, i64 0, i64 0
  %73 = call i32 @ARRAY_SIZE(%struct.v4l2_ctrl_helper* %72)
  %74 = icmp ugt i32 %71, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %68
  %76 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %9, align 8
  %77 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call %struct.v4l2_ctrl_helper* @kvmalloc_array(i32 %78, i32 24, i32 %79)
  store %struct.v4l2_ctrl_helper* %80, %struct.v4l2_ctrl_helper** %13, align 8
  %81 = load %struct.v4l2_ctrl_helper*, %struct.v4l2_ctrl_helper** %13, align 8
  %82 = icmp ne %struct.v4l2_ctrl_helper* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %75
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %392

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86, %68
  %88 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %89 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %9, align 8
  %90 = load %struct.v4l2_ctrl_helper*, %struct.v4l2_ctrl_helper** %13, align 8
  %91 = load %struct.video_device*, %struct.video_device** %10, align 8
  %92 = call i32 @prepare_ext_ctrls(%struct.v4l2_ctrl_handler* %88, %struct.v4l2_ext_controls* %89, %struct.v4l2_ctrl_helper* %90, %struct.video_device* %91, i32 0)
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %87
  %96 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %9, align 8
  %97 = load %struct.v4l2_ctrl_helper*, %struct.v4l2_ctrl_helper** %13, align 8
  %98 = load %struct.video_device*, %struct.video_device** %10, align 8
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @validate_ctrls(%struct.v4l2_ext_controls* %96, %struct.v4l2_ctrl_helper* %97, %struct.video_device* %98, i32 %99)
  store i32 %100, i32* %16, align 4
  br label %101

101:                                              ; preds = %95, %87
  %102 = load i32, i32* %16, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %101
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %9, align 8
  %109 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %9, align 8
  %112 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %107, %104, %101
  store i32 0, i32* %14, align 4
  br label %114

114:                                              ; preds = %377, %113
  %115 = load i32, i32* %16, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* %14, align 4
  %119 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %9, align 8
  %120 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp ult i32 %118, %121
  br label %123

123:                                              ; preds = %117, %114
  %124 = phi i1 [ false, %114 ], [ %122, %117 ]
  br i1 %124, label %125, label %380

125:                                              ; preds = %123
  %126 = load i32, i32* %14, align 4
  store i32 %126, i32* %18, align 4
  %127 = load %struct.v4l2_ctrl_helper*, %struct.v4l2_ctrl_helper** %13, align 8
  %128 = load i32, i32* %14, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.v4l2_ctrl_helper, %struct.v4l2_ctrl_helper* %127, i64 %129
  %131 = getelementptr inbounds %struct.v4l2_ctrl_helper, %struct.v4l2_ctrl_helper* %130, i32 0, i32 2
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = icmp eq %struct.TYPE_7__* %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  br label %377

135:                                              ; preds = %125
  %136 = load i32, i32* %14, align 4
  %137 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %9, align 8
  %138 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load %struct.v4l2_ctrl_helper*, %struct.v4l2_ctrl_helper** %13, align 8
  %140 = load i32, i32* %14, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.v4l2_ctrl_helper, %struct.v4l2_ctrl_helper* %139, i64 %141
  %143 = getelementptr inbounds %struct.v4l2_ctrl_helper, %struct.v4l2_ctrl_helper* %142, i32 0, i32 2
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %145, align 8
  store %struct.v4l2_ctrl* %146, %struct.v4l2_ctrl** %17, align 8
  %147 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %17, align 8
  %148 = call i32 @v4l2_ctrl_lock(%struct.v4l2_ctrl* %147)
  store i32 0, i32* %15, align 4
  br label %149

149:                                              ; preds = %174, %135
  %150 = load i32, i32* %15, align 4
  %151 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %17, align 8
  %152 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp ult i32 %150, %153
  br i1 %154, label %155, label %177

155:                                              ; preds = %149
  %156 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %17, align 8
  %157 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %156, i32 0, i32 2
  %158 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %157, align 8
  %159 = load i32, i32* %15, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %158, i64 %160
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = icmp ne %struct.TYPE_9__* %162, null
  br i1 %163, label %164, label %173

164:                                              ; preds = %155
  %165 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %17, align 8
  %166 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %165, i32 0, i32 2
  %167 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %166, align 8
  %168 = load i32, i32* %15, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %167, i64 %169
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  store i64 0, i64* %172, align 8
  br label %173

173:                                              ; preds = %164, %155
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %15, align 4
  %176 = add i32 %175, 1
  store i32 %176, i32* %15, align 4
  br label %149

177:                                              ; preds = %149
  %178 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %17, align 8
  %179 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %178, i32 0, i32 6
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %237

182:                                              ; preds = %177
  %183 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %17, align 8
  %184 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %183, i32 0, i32 5
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %237

187:                                              ; preds = %182
  %188 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %17, align 8
  %189 = call i32 @is_cur_manual(%struct.v4l2_ctrl* %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %237, label %191

191:                                              ; preds = %187
  %192 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %17, align 8
  %193 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %194, 1
  store i64 %195, i64* %19, align 8
  %196 = load i32, i32* %18, align 4
  store i32 %196, i32* %20, align 4
  br label %197

197:                                              ; preds = %224, %191
  %198 = load %struct.v4l2_ctrl_helper*, %struct.v4l2_ctrl_helper** %13, align 8
  %199 = load i32, i32* %20, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.v4l2_ctrl_helper, %struct.v4l2_ctrl_helper* %198, i64 %200
  %202 = getelementptr inbounds %struct.v4l2_ctrl_helper, %struct.v4l2_ctrl_helper* %201, i32 0, i32 1
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  %205 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %204, align 8
  %206 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %17, align 8
  %207 = icmp eq %struct.v4l2_ctrl* %205, %206
  br i1 %207, label %208, label %217

208:                                              ; preds = %197
  %209 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %9, align 8
  %210 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %209, i32 0, i32 3
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %210, align 8
  %212 = load i32, i32* %20, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  store i64 %216, i64* %19, align 8
  br label %217

217:                                              ; preds = %208, %197
  %218 = load %struct.v4l2_ctrl_helper*, %struct.v4l2_ctrl_helper** %13, align 8
  %219 = load i32, i32* %20, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.v4l2_ctrl_helper, %struct.v4l2_ctrl_helper* %218, i64 %220
  %222 = getelementptr inbounds %struct.v4l2_ctrl_helper, %struct.v4l2_ctrl_helper* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  store i32 %223, i32* %20, align 4
  br label %224

224:                                              ; preds = %217
  %225 = load i32, i32* %20, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %197, label %227

227:                                              ; preds = %224
  %228 = load i64, i64* %19, align 8
  %229 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %17, align 8
  %230 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = icmp eq i64 %228, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %227
  %234 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %17, align 8
  %235 = call i32 @update_from_auto_cluster(%struct.v4l2_ctrl* %234)
  br label %236

236:                                              ; preds = %233, %227
  br label %237

237:                                              ; preds = %236, %187, %182, %177
  br label %238

238:                                              ; preds = %281, %237
  %239 = load %struct.v4l2_ctrl_helper*, %struct.v4l2_ctrl_helper** %13, align 8
  %240 = load i32, i32* %18, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.v4l2_ctrl_helper, %struct.v4l2_ctrl_helper* %239, i64 %241
  %243 = getelementptr inbounds %struct.v4l2_ctrl_helper, %struct.v4l2_ctrl_helper* %242, i32 0, i32 1
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 0
  %246 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %245, align 8
  store %struct.v4l2_ctrl* %246, %struct.v4l2_ctrl** %21, align 8
  %247 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %9, align 8
  %248 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %247, i32 0, i32 3
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %248, align 8
  %250 = load i32, i32* %18, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i64 %251
  %253 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %21, align 8
  %254 = call i32 @user_to_new(%struct.TYPE_11__* %252, %struct.v4l2_ctrl* %253)
  store i32 %254, i32* %16, align 4
  %255 = load i32, i32* %16, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %268, label %257

257:                                              ; preds = %238
  %258 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %21, align 8
  %259 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %258, i32 0, i32 4
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %268

262:                                              ; preds = %257
  %263 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %21, align 8
  %264 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %21, align 8
  %265 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @validate_new(%struct.v4l2_ctrl* %263, i32 %266)
  store i32 %267, i32* %16, align 4
  br label %268

268:                                              ; preds = %262, %257, %238
  %269 = load %struct.v4l2_ctrl_helper*, %struct.v4l2_ctrl_helper** %13, align 8
  %270 = load i32, i32* %18, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.v4l2_ctrl_helper, %struct.v4l2_ctrl_helper* %269, i64 %271
  %273 = getelementptr inbounds %struct.v4l2_ctrl_helper, %struct.v4l2_ctrl_helper* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  store i32 %274, i32* %18, align 4
  br label %275

275:                                              ; preds = %268
  %276 = load i32, i32* %16, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %281, label %278

278:                                              ; preds = %275
  %279 = load i32, i32* %18, align 4
  %280 = icmp ne i32 %279, 0
  br label %281

281:                                              ; preds = %278, %275
  %282 = phi i1 [ false, %275 ], [ %280, %278 ]
  br i1 %282, label %238, label %283

283:                                              ; preds = %281
  %284 = load i32, i32* %16, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %301, label %286

286:                                              ; preds = %283
  %287 = load %struct.v4l2_fh*, %struct.v4l2_fh** %7, align 8
  %288 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %17, align 8
  %289 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %290 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %297, label %294

294:                                              ; preds = %286
  %295 = load i32, i32* %11, align 4
  %296 = icmp ne i32 %295, 0
  br label %297

297:                                              ; preds = %294, %286
  %298 = phi i1 [ false, %286 ], [ %296, %294 ]
  %299 = zext i1 %298 to i32
  %300 = call i32 @try_or_set_cluster(%struct.v4l2_fh* %287, %struct.v4l2_ctrl* %288, i32 %299, i32 0)
  store i32 %300, i32* %16, align 4
  br label %301

301:                                              ; preds = %297, %283
  %302 = load i32, i32* %16, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %338, label %304

304:                                              ; preds = %301
  %305 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %306 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %338

310:                                              ; preds = %304
  %311 = load i32, i32* %11, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %338

313:                                              ; preds = %310
  store i32 0, i32* %15, align 4
  br label %314

314:                                              ; preds = %334, %313
  %315 = load i32, i32* %15, align 4
  %316 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %17, align 8
  %317 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = icmp ult i32 %315, %318
  br i1 %319, label %320, label %337

320:                                              ; preds = %314
  %321 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %322 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %17, align 8
  %323 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %322, i32 0, i32 2
  %324 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %323, align 8
  %325 = load i32, i32* %15, align 4
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %324, i64 %326
  %328 = load %struct.TYPE_9__*, %struct.TYPE_9__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = call %struct.v4l2_ctrl_ref* @find_ref(%struct.v4l2_ctrl_handler* %321, i32 %330)
  store %struct.v4l2_ctrl_ref* %331, %struct.v4l2_ctrl_ref** %22, align 8
  %332 = load %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref** %22, align 8
  %333 = call i32 @new_to_req(%struct.v4l2_ctrl_ref* %332)
  br label %334

334:                                              ; preds = %320
  %335 = load i32, i32* %15, align 4
  %336 = add i32 %335, 1
  store i32 %336, i32* %15, align 4
  br label %314

337:                                              ; preds = %314
  br label %338

338:                                              ; preds = %337, %310, %304, %301
  %339 = load i32, i32* %16, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %374, label %341

341:                                              ; preds = %338
  %342 = load i32, i32* %14, align 4
  store i32 %342, i32* %18, align 4
  br label %343

343:                                              ; preds = %371, %341
  %344 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %9, align 8
  %345 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %344, i32 0, i32 3
  %346 = load %struct.TYPE_11__*, %struct.TYPE_11__** %345, align 8
  %347 = load i32, i32* %18, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %346, i64 %348
  %350 = load %struct.v4l2_ctrl_helper*, %struct.v4l2_ctrl_helper** %13, align 8
  %351 = load i32, i32* %18, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.v4l2_ctrl_helper, %struct.v4l2_ctrl_helper* %350, i64 %352
  %354 = getelementptr inbounds %struct.v4l2_ctrl_helper, %struct.v4l2_ctrl_helper* %353, i32 0, i32 1
  %355 = load %struct.TYPE_10__*, %struct.TYPE_10__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %355, i32 0, i32 0
  %357 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %356, align 8
  %358 = call i32 @new_to_user(%struct.TYPE_11__* %349, %struct.v4l2_ctrl* %357)
  store i32 %358, i32* %16, align 4
  %359 = load %struct.v4l2_ctrl_helper*, %struct.v4l2_ctrl_helper** %13, align 8
  %360 = load i32, i32* %18, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.v4l2_ctrl_helper, %struct.v4l2_ctrl_helper* %359, i64 %361
  %363 = getelementptr inbounds %struct.v4l2_ctrl_helper, %struct.v4l2_ctrl_helper* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  store i32 %364, i32* %18, align 4
  br label %365

365:                                              ; preds = %343
  %366 = load i32, i32* %16, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %371, label %368

368:                                              ; preds = %365
  %369 = load i32, i32* %18, align 4
  %370 = icmp ne i32 %369, 0
  br label %371

371:                                              ; preds = %368, %365
  %372 = phi i1 [ false, %365 ], [ %370, %368 ]
  br i1 %372, label %343, label %373

373:                                              ; preds = %371
  br label %374

374:                                              ; preds = %373, %338
  %375 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %17, align 8
  %376 = call i32 @v4l2_ctrl_unlock(%struct.v4l2_ctrl* %375)
  br label %377

377:                                              ; preds = %374, %134
  %378 = load i32, i32* %14, align 4
  %379 = add i32 %378, 1
  store i32 %379, i32* %14, align 4
  br label %114

380:                                              ; preds = %123
  %381 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %9, align 8
  %382 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = getelementptr inbounds [4 x %struct.v4l2_ctrl_helper], [4 x %struct.v4l2_ctrl_helper]* %12, i64 0, i64 0
  %385 = call i32 @ARRAY_SIZE(%struct.v4l2_ctrl_helper* %384)
  %386 = icmp ugt i32 %383, %385
  br i1 %386, label %387, label %390

387:                                              ; preds = %380
  %388 = load %struct.v4l2_ctrl_helper*, %struct.v4l2_ctrl_helper** %13, align 8
  %389 = call i32 @kvfree(%struct.v4l2_ctrl_helper* %388)
  br label %390

390:                                              ; preds = %387, %380
  %391 = load i32, i32* %16, align 4
  store i32 %391, i32* %6, align 4
  br label %392

392:                                              ; preds = %390, %83, %62, %50, %34
  %393 = load i32, i32* %6, align 4
  ret i32 %393
}

declare dso_local i32 @dprintk(%struct.video_device*, i8*, i32) #1

declare dso_local i32 @video_device_node_name(%struct.video_device*) #1

declare dso_local i64 @V4L2_CTRL_ID2WHICH(i64) #1

declare dso_local i32 @class_check(%struct.v4l2_ctrl_handler*, i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.v4l2_ctrl_helper*) #1

declare dso_local %struct.v4l2_ctrl_helper* @kvmalloc_array(i32, i32, i32) #1

declare dso_local i32 @prepare_ext_ctrls(%struct.v4l2_ctrl_handler*, %struct.v4l2_ext_controls*, %struct.v4l2_ctrl_helper*, %struct.video_device*, i32) #1

declare dso_local i32 @validate_ctrls(%struct.v4l2_ext_controls*, %struct.v4l2_ctrl_helper*, %struct.video_device*, i32) #1

declare dso_local i32 @v4l2_ctrl_lock(%struct.v4l2_ctrl*) #1

declare dso_local i32 @is_cur_manual(%struct.v4l2_ctrl*) #1

declare dso_local i32 @update_from_auto_cluster(%struct.v4l2_ctrl*) #1

declare dso_local i32 @user_to_new(%struct.TYPE_11__*, %struct.v4l2_ctrl*) #1

declare dso_local i32 @validate_new(%struct.v4l2_ctrl*, i32) #1

declare dso_local i32 @try_or_set_cluster(%struct.v4l2_fh*, %struct.v4l2_ctrl*, i32, i32) #1

declare dso_local %struct.v4l2_ctrl_ref* @find_ref(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @new_to_req(%struct.v4l2_ctrl_ref*) #1

declare dso_local i32 @new_to_user(%struct.TYPE_11__*, %struct.v4l2_ctrl*) #1

declare dso_local i32 @v4l2_ctrl_unlock(%struct.v4l2_ctrl*) #1

declare dso_local i32 @kvfree(%struct.v4l2_ctrl_helper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
