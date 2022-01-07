; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_ctrl_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_ctrl_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl_type_ops = type { i32 (%struct.v4l2_ctrl.0*, i32, i8**)* }
%struct.v4l2_ctrl.0 = type opaque
%struct.v4l2_ctrl = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i8**, i32, %struct.TYPE_5__, %struct.v4l2_ctrl_type_ops*, %struct.TYPE_5__, %struct.TYPE_4__, i8*, i8*, i32, i8*, i32, i8*, i8*, %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_handler*, i32 }
%struct.TYPE_5__ = type { i8** }
%struct.TYPE_4__ = type { i8* }
%struct.v4l2_ctrl_handler = type { i32, i32, i64 }
%struct.v4l2_ctrl_ops = type { i32 }

@V4L2_CTRL_MAX_DIMS = common dso_local global i32 0, align 4
@V4L2_CTRL_COMPOUND_TYPES = common dso_local global i32 0, align 4
@V4L2_CID_PRIVATE_BASE = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_MENU = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_INTEGER_MENU = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_BUTTON = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_CTRL_CLASS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_WRITE_ONLY = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_EXECUTE_ON_WRITE = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_READ_ONLY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@std_type_ops = common dso_local global %struct.v4l2_ctrl_type_ops zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.v4l2_ctrl* (%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_type_ops*, i32, i8*, i32, i8*, i8*, i32, i8*, i32*, i32, i32, i8**, i8**, i8*)* @v4l2_ctrl_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.v4l2_ctrl* @v4l2_ctrl_new(%struct.v4l2_ctrl_handler* %0, %struct.v4l2_ctrl_ops* %1, %struct.v4l2_ctrl_type_ops* %2, i32 %3, i8* %4, i32 %5, i8* %6, i8* %7, i32 %8, i8* %9, i32* %10, i32 %11, i32 %12, i8** %13, i8** %14, i8* %15) #0 {
  %17 = alloca %struct.v4l2_ctrl*, align 8
  %18 = alloca %struct.v4l2_ctrl_handler*, align 8
  %19 = alloca %struct.v4l2_ctrl_ops*, align 8
  %20 = alloca %struct.v4l2_ctrl_type_ops*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i8**, align 8
  %32 = alloca i8**, align 8
  %33 = alloca i8*, align 8
  %34 = alloca %struct.v4l2_ctrl*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i8*, align 8
  %42 = alloca i32, align 4
  store %struct.v4l2_ctrl_handler* %0, %struct.v4l2_ctrl_handler** %18, align 8
  store %struct.v4l2_ctrl_ops* %1, %struct.v4l2_ctrl_ops** %19, align 8
  store %struct.v4l2_ctrl_type_ops* %2, %struct.v4l2_ctrl_type_ops** %20, align 8
  store i32 %3, i32* %21, align 4
  store i8* %4, i8** %22, align 8
  store i32 %5, i32* %23, align 4
  store i8* %6, i8** %24, align 8
  store i8* %7, i8** %25, align 8
  store i32 %8, i32* %26, align 4
  store i8* %9, i8** %27, align 8
  store i32* %10, i32** %28, align 8
  store i32 %11, i32* %29, align 4
  store i32 %12, i32* %30, align 4
  store i8** %13, i8*** %31, align 8
  store i8** %14, i8*** %32, align 8
  store i8* %15, i8** %33, align 8
  %43 = load i32, i32* @V4L2_CTRL_MAX_DIMS, align 4
  %44 = zext i32 %43 to i64
  store i32 0, i32* %36, align 4
  store i32 1, i32* %37, align 4
  %45 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %18, align 8
  %46 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %16
  store %struct.v4l2_ctrl* null, %struct.v4l2_ctrl** %17, align 8
  br label %448

50:                                               ; preds = %16
  br label %51

51:                                               ; preds = %77, %50
  %52 = load i32*, i32** %28, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i32*, i32** %28, align 8
  %56 = load i32, i32* %36, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %54, %51
  %62 = phi i1 [ false, %51 ], [ %60, %54 ]
  br i1 %62, label %63, label %78

63:                                               ; preds = %61
  %64 = load i32*, i32** %28, align 8
  %65 = load i32, i32* %36, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %37, align 4
  %70 = mul i32 %69, %68
  store i32 %70, i32* %37, align 4
  %71 = load i32, i32* %36, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %36, align 4
  %73 = load i32, i32* %36, align 4
  %74 = load i32, i32* @V4L2_CTRL_MAX_DIMS, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %63
  br label %78

77:                                               ; preds = %63
  br label %51

78:                                               ; preds = %76, %61
  %79 = load i32, i32* %36, align 4
  %80 = icmp ugt i32 %79, 0
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %38, align 4
  %82 = load i32, i32* %23, align 4
  switch i32 %82, label %100 [
    i32 135, label %83
    i32 132, label %84
    i32 129, label %88
    i32 131, label %89
    i32 130, label %90
    i32 133, label %91
    i32 134, label %92
    i32 141, label %93
    i32 136, label %94
    i32 139, label %95
    i32 138, label %96
    i32 137, label %97
    i32 140, label %98
    i32 128, label %99
  ]

83:                                               ; preds = %78
  store i32 8, i32* %29, align 4
  br label %106

84:                                               ; preds = %78
  %85 = load i8*, i8** %25, align 8
  %86 = getelementptr i8, i8* %85, i64 1
  %87 = ptrtoint i8* %86 to i32
  store i32 %87, i32* %29, align 4
  br label %106

88:                                               ; preds = %78
  store i32 4, i32* %29, align 4
  br label %106

89:                                               ; preds = %78
  store i32 4, i32* %29, align 4
  br label %106

90:                                               ; preds = %78
  store i32 4, i32* %29, align 4
  br label %106

91:                                               ; preds = %78
  store i32 4, i32* %29, align 4
  br label %106

92:                                               ; preds = %78
  store i32 4, i32* %29, align 4
  br label %106

93:                                               ; preds = %78
  store i32 4, i32* %29, align 4
  br label %106

94:                                               ; preds = %78
  store i32 4, i32* %29, align 4
  br label %106

95:                                               ; preds = %78
  store i32 4, i32* %29, align 4
  br label %106

96:                                               ; preds = %78
  store i32 4, i32* %29, align 4
  br label %106

97:                                               ; preds = %78
  store i32 4, i32* %29, align 4
  br label %106

98:                                               ; preds = %78
  store i32 4, i32* %29, align 4
  br label %106

99:                                               ; preds = %78
  store i32 4, i32* %29, align 4
  br label %106

100:                                              ; preds = %78
  %101 = load i32, i32* %23, align 4
  %102 = load i32, i32* @V4L2_CTRL_COMPOUND_TYPES, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store i32 4, i32* %29, align 4
  br label %105

105:                                              ; preds = %104, %100
  br label %106

106:                                              ; preds = %105, %99, %98, %97, %96, %95, %94, %93, %92, %91, %90, %89, %88, %84, %83
  %107 = load i32, i32* %29, align 4
  %108 = load i32, i32* %37, align 4
  %109 = mul i32 %107, %108
  store i32 %109, i32* %39, align 4
  %110 = load i32, i32* %21, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %136, label %112

112:                                              ; preds = %106
  %113 = load i8*, i8** %22, align 8
  %114 = icmp eq i8* %113, null
  br i1 %114, label %136, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %29, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %136

118:                                              ; preds = %115
  %119 = load i32, i32* %21, align 4
  %120 = load i32, i32* @V4L2_CID_PRIVATE_BASE, align 4
  %121 = icmp uge i32 %119, %120
  br i1 %121, label %136, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %23, align 4
  %124 = load i32, i32* @V4L2_CTRL_TYPE_MENU, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load i8**, i8*** %31, align 8
  %128 = icmp eq i8** %127, null
  br i1 %128, label %136, label %129

129:                                              ; preds = %126, %122
  %130 = load i32, i32* %23, align 4
  %131 = load i32, i32* @V4L2_CTRL_TYPE_INTEGER_MENU, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %129
  %134 = load i8**, i8*** %32, align 8
  %135 = icmp eq i8** %134, null
  br i1 %135, label %136, label %141

136:                                              ; preds = %133, %126, %118, %115, %112, %106
  %137 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %18, align 8
  %138 = load i32, i32* @ERANGE, align 4
  %139 = sub nsw i32 0, %138
  %140 = call i32 @handler_set_err(%struct.v4l2_ctrl_handler* %137, i32 %139)
  store %struct.v4l2_ctrl* null, %struct.v4l2_ctrl** %17, align 8
  br label %448

141:                                              ; preds = %133, %129
  %142 = load i32, i32* %23, align 4
  %143 = load i8*, i8** %24, align 8
  %144 = load i8*, i8** %25, align 8
  %145 = load i32, i32* %26, align 4
  %146 = load i8*, i8** %27, align 8
  %147 = call i32 @check_range(i32 %142, i8* %143, i8* %144, i32 %145, i8* %146)
  store i32 %147, i32* %42, align 4
  %148 = load i32, i32* %42, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %141
  %151 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %18, align 8
  %152 = load i32, i32* %42, align 4
  %153 = call i32 @handler_set_err(%struct.v4l2_ctrl_handler* %151, i32 %152)
  store %struct.v4l2_ctrl* null, %struct.v4l2_ctrl** %17, align 8
  br label %448

154:                                              ; preds = %141
  %155 = load i32, i32* %38, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %170

157:                                              ; preds = %154
  %158 = load i32, i32* %23, align 4
  %159 = load i32, i32* @V4L2_CTRL_TYPE_BUTTON, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %165, label %161

161:                                              ; preds = %157
  %162 = load i32, i32* %23, align 4
  %163 = load i32, i32* @V4L2_CTRL_TYPE_CTRL_CLASS, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %161, %157
  %166 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %18, align 8
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  %169 = call i32 @handler_set_err(%struct.v4l2_ctrl_handler* %166, i32 %168)
  store %struct.v4l2_ctrl* null, %struct.v4l2_ctrl** %17, align 8
  br label %448

170:                                              ; preds = %161, %154
  store i32 0, i32* %35, align 4
  %171 = load i32, i32* %23, align 4
  %172 = load i32, i32* @V4L2_CTRL_TYPE_BUTTON, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %170
  %175 = load i32, i32* @V4L2_CTRL_FLAG_WRITE_ONLY, align 4
  %176 = load i32, i32* @V4L2_CTRL_FLAG_EXECUTE_ON_WRITE, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* %30, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %30, align 4
  br label %208

180:                                              ; preds = %170
  %181 = load i32, i32* %23, align 4
  %182 = load i32, i32* @V4L2_CTRL_TYPE_CTRL_CLASS, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %180
  %185 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %186 = load i32, i32* %30, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %30, align 4
  br label %207

188:                                              ; preds = %180
  %189 = load i32, i32* %23, align 4
  %190 = icmp eq i32 %189, 135
  br i1 %190, label %201, label %191

191:                                              ; preds = %188
  %192 = load i32, i32* %23, align 4
  %193 = icmp eq i32 %192, 132
  br i1 %193, label %201, label %194

194:                                              ; preds = %191
  %195 = load i32, i32* %23, align 4
  %196 = load i32, i32* @V4L2_CTRL_COMPOUND_TYPES, align 4
  %197 = icmp uge i32 %195, %196
  br i1 %197, label %201, label %198

198:                                              ; preds = %194
  %199 = load i32, i32* %38, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %198, %194, %191, %188
  %202 = load i32, i32* %39, align 4
  %203 = mul i32 2, %202
  %204 = load i32, i32* %35, align 4
  %205 = add i32 %204, %203
  store i32 %205, i32* %35, align 4
  br label %206

206:                                              ; preds = %201, %198
  br label %207

207:                                              ; preds = %206, %184
  br label %208

208:                                              ; preds = %207, %174
  %209 = load i32, i32* %35, align 4
  %210 = zext i32 %209 to i64
  %211 = add i64 192, %210
  %212 = trunc i64 %211 to i32
  %213 = load i32, i32* @GFP_KERNEL, align 4
  %214 = call %struct.v4l2_ctrl* @kvzalloc(i32 %212, i32 %213)
  store %struct.v4l2_ctrl* %214, %struct.v4l2_ctrl** %34, align 8
  %215 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %216 = icmp eq %struct.v4l2_ctrl* %215, null
  br i1 %216, label %217, label %222

217:                                              ; preds = %208
  %218 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %18, align 8
  %219 = load i32, i32* @ENOMEM, align 4
  %220 = sub nsw i32 0, %219
  %221 = call i32 @handler_set_err(%struct.v4l2_ctrl_handler* %218, i32 %220)
  store %struct.v4l2_ctrl* null, %struct.v4l2_ctrl** %17, align 8
  br label %448

222:                                              ; preds = %208
  %223 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %224 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %223, i32 0, i32 13
  %225 = call i32 @INIT_LIST_HEAD(i32* %224)
  %226 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %227 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %226, i32 0, i32 27
  %228 = call i32 @INIT_LIST_HEAD(i32* %227)
  %229 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %18, align 8
  %230 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %231 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %230, i32 0, i32 26
  store %struct.v4l2_ctrl_handler* %229, %struct.v4l2_ctrl_handler** %231, align 8
  %232 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %19, align 8
  %233 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %234 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %233, i32 0, i32 25
  store %struct.v4l2_ctrl_ops* %232, %struct.v4l2_ctrl_ops** %234, align 8
  %235 = load %struct.v4l2_ctrl_type_ops*, %struct.v4l2_ctrl_type_ops** %20, align 8
  %236 = icmp ne %struct.v4l2_ctrl_type_ops* %235, null
  br i1 %236, label %237, label %239

237:                                              ; preds = %222
  %238 = load %struct.v4l2_ctrl_type_ops*, %struct.v4l2_ctrl_type_ops** %20, align 8
  br label %240

239:                                              ; preds = %222
  br label %240

240:                                              ; preds = %239, %237
  %241 = phi %struct.v4l2_ctrl_type_ops* [ %238, %237 ], [ @std_type_ops, %239 ]
  %242 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %243 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %242, i32 0, i32 15
  store %struct.v4l2_ctrl_type_ops* %241, %struct.v4l2_ctrl_type_ops** %243, align 8
  %244 = load i32, i32* %21, align 4
  %245 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %246 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %245, i32 0, i32 0
  store i32 %244, i32* %246, align 8
  %247 = load i8*, i8** %22, align 8
  %248 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %249 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %248, i32 0, i32 1
  store i8* %247, i8** %249, align 8
  %250 = load i32, i32* %23, align 4
  %251 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %252 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %251, i32 0, i32 2
  store i32 %250, i32* %252, align 8
  %253 = load i32, i32* %30, align 4
  %254 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %255 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %254, i32 0, i32 3
  store i32 %253, i32* %255, align 4
  %256 = load i8*, i8** %24, align 8
  %257 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %258 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %257, i32 0, i32 24
  store i8* %256, i8** %258, align 8
  %259 = load i8*, i8** %25, align 8
  %260 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %261 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %260, i32 0, i32 23
  store i8* %259, i8** %261, align 8
  %262 = load i32, i32* %26, align 4
  %263 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %264 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %263, i32 0, i32 22
  store i32 %262, i32* %264, align 8
  %265 = load i8*, i8** %27, align 8
  %266 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %267 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %266, i32 0, i32 21
  store i8* %265, i8** %267, align 8
  %268 = load i32, i32* %38, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %273, label %270

270:                                              ; preds = %240
  %271 = load i32, i32* %23, align 4
  %272 = icmp eq i32 %271, 132
  br label %273

273:                                              ; preds = %270, %240
  %274 = phi i1 [ false, %240 ], [ %272, %270 ]
  %275 = zext i1 %274 to i32
  %276 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %277 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %276, i32 0, i32 4
  store i32 %275, i32* %277, align 8
  %278 = load i32, i32* %38, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %289, label %280

280:                                              ; preds = %273
  %281 = load i32, i32* %23, align 4
  %282 = load i32, i32* @V4L2_CTRL_COMPOUND_TYPES, align 4
  %283 = icmp uge i32 %281, %282
  br i1 %283, label %289, label %284

284:                                              ; preds = %280
  %285 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %286 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %285, i32 0, i32 4
  %287 = load i32, i32* %286, align 8
  %288 = icmp ne i32 %287, 0
  br label %289

289:                                              ; preds = %284, %280, %273
  %290 = phi i1 [ true, %280 ], [ true, %273 ], [ %288, %284 ]
  %291 = zext i1 %290 to i32
  %292 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %293 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %292, i32 0, i32 5
  store i32 %291, i32* %293, align 4
  %294 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %295 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %294, i32 0, i32 5
  %296 = load i32, i32* %295, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %301, label %298

298:                                              ; preds = %289
  %299 = load i32, i32* %23, align 4
  %300 = icmp ne i32 %299, 135
  br label %301

301:                                              ; preds = %298, %289
  %302 = phi i1 [ false, %289 ], [ %300, %298 ]
  %303 = zext i1 %302 to i32
  %304 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %305 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %304, i32 0, i32 6
  store i32 %303, i32* %305, align 8
  %306 = load i32, i32* %38, align 4
  %307 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %308 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %307, i32 0, i32 7
  store i32 %306, i32* %308, align 4
  %309 = load i32, i32* %37, align 4
  %310 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %311 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %310, i32 0, i32 8
  store i32 %309, i32* %311, align 8
  %312 = load i32, i32* %36, align 4
  %313 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %314 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %313, i32 0, i32 9
  store i32 %312, i32* %314, align 4
  %315 = load i32, i32* %36, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %327

317:                                              ; preds = %301
  %318 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %319 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %318, i32 0, i32 20
  %320 = load i32, i32* %319, align 8
  %321 = load i32*, i32** %28, align 8
  %322 = load i32, i32* %36, align 4
  %323 = zext i32 %322 to i64
  %324 = mul i64 %323, 4
  %325 = trunc i64 %324 to i32
  %326 = call i32 @memcpy(i32 %320, i32* %321, i32 %325)
  br label %327

327:                                              ; preds = %317, %301
  %328 = load i32, i32* %29, align 4
  %329 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %330 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %329, i32 0, i32 10
  store i32 %328, i32* %330, align 8
  %331 = load i32, i32* %23, align 4
  %332 = load i32, i32* @V4L2_CTRL_TYPE_MENU, align 4
  %333 = icmp eq i32 %331, %332
  br i1 %333, label %334, label %338

334:                                              ; preds = %327
  %335 = load i8**, i8*** %31, align 8
  %336 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %337 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %336, i32 0, i32 11
  store i8** %335, i8*** %337, align 8
  br label %347

338:                                              ; preds = %327
  %339 = load i32, i32* %23, align 4
  %340 = load i32, i32* @V4L2_CTRL_TYPE_INTEGER_MENU, align 4
  %341 = icmp eq i32 %339, %340
  br i1 %341, label %342, label %346

342:                                              ; preds = %338
  %343 = load i8**, i8*** %32, align 8
  %344 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %345 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %344, i32 0, i32 12
  store i8** %343, i8*** %345, align 8
  br label %346

346:                                              ; preds = %342, %338
  br label %347

347:                                              ; preds = %346, %334
  %348 = load i8*, i8** %33, align 8
  %349 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %350 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %349, i32 0, i32 19
  store i8* %348, i8** %350, align 8
  %351 = load i8*, i8** %27, align 8
  %352 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %353 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %352, i32 0, i32 18
  store i8* %351, i8** %353, align 8
  %354 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %355 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %354, i32 0, i32 17
  %356 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %355, i32 0, i32 0
  store i8* %351, i8** %356, align 8
  %357 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %358 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %357, i64 1
  %359 = bitcast %struct.v4l2_ctrl* %358 to i8*
  store i8* %359, i8** %41, align 8
  %360 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %361 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %360, i32 0, i32 6
  %362 = load i32, i32* %361, align 8
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %378, label %364

364:                                              ; preds = %347
  %365 = load i8*, i8** %41, align 8
  %366 = bitcast i8* %365 to i8**
  %367 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %368 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %367, i32 0, i32 14
  %369 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %368, i32 0, i32 0
  store i8** %366, i8*** %369, align 8
  %370 = load i8*, i8** %41, align 8
  %371 = load i32, i32* %39, align 4
  %372 = zext i32 %371 to i64
  %373 = getelementptr i8, i8* %370, i64 %372
  %374 = bitcast i8* %373 to i8**
  %375 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %376 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %375, i32 0, i32 16
  %377 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %376, i32 0, i32 0
  store i8** %374, i8*** %377, align 8
  br label %390

378:                                              ; preds = %347
  %379 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %380 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %379, i32 0, i32 18
  %381 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %382 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %381, i32 0, i32 14
  %383 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %382, i32 0, i32 0
  store i8** %380, i8*** %383, align 8
  %384 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %385 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %384, i32 0, i32 17
  %386 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %385, i32 0, i32 0
  %387 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %388 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %387, i32 0, i32 16
  %389 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %388, i32 0, i32 0
  store i8** %386, i8*** %389, align 8
  br label %390

390:                                              ; preds = %378, %364
  store i32 0, i32* %40, align 4
  br label %391

391:                                              ; preds = %422, %390
  %392 = load i32, i32* %40, align 4
  %393 = load i32, i32* %37, align 4
  %394 = icmp ult i32 %392, %393
  br i1 %394, label %395, label %425

395:                                              ; preds = %391
  %396 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %397 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %396, i32 0, i32 15
  %398 = load %struct.v4l2_ctrl_type_ops*, %struct.v4l2_ctrl_type_ops** %397, align 8
  %399 = getelementptr inbounds %struct.v4l2_ctrl_type_ops, %struct.v4l2_ctrl_type_ops* %398, i32 0, i32 0
  %400 = load i32 (%struct.v4l2_ctrl.0*, i32, i8**)*, i32 (%struct.v4l2_ctrl.0*, i32, i8**)** %399, align 8
  %401 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %402 = bitcast %struct.v4l2_ctrl* %401 to %struct.v4l2_ctrl.0*
  %403 = load i32, i32* %40, align 4
  %404 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %405 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %404, i32 0, i32 16
  %406 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %405, i32 0, i32 0
  %407 = load i8**, i8*** %406, align 8
  %408 = call i32 %400(%struct.v4l2_ctrl.0* %402, i32 %403, i8** %407)
  %409 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %410 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %409, i32 0, i32 15
  %411 = load %struct.v4l2_ctrl_type_ops*, %struct.v4l2_ctrl_type_ops** %410, align 8
  %412 = getelementptr inbounds %struct.v4l2_ctrl_type_ops, %struct.v4l2_ctrl_type_ops* %411, i32 0, i32 0
  %413 = load i32 (%struct.v4l2_ctrl.0*, i32, i8**)*, i32 (%struct.v4l2_ctrl.0*, i32, i8**)** %412, align 8
  %414 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %415 = bitcast %struct.v4l2_ctrl* %414 to %struct.v4l2_ctrl.0*
  %416 = load i32, i32* %40, align 4
  %417 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %418 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %417, i32 0, i32 14
  %419 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %418, i32 0, i32 0
  %420 = load i8**, i8*** %419, align 8
  %421 = call i32 %413(%struct.v4l2_ctrl.0* %415, i32 %416, i8** %420)
  br label %422

422:                                              ; preds = %395
  %423 = load i32, i32* %40, align 4
  %424 = add i32 %423, 1
  store i32 %424, i32* %40, align 4
  br label %391

425:                                              ; preds = %391
  %426 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %18, align 8
  %427 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %428 = call i64 @handler_new_ref(%struct.v4l2_ctrl_handler* %426, %struct.v4l2_ctrl* %427, i32* null, i32 0, i32 0)
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %433

430:                                              ; preds = %425
  %431 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %432 = call i32 @kvfree(%struct.v4l2_ctrl* %431)
  store %struct.v4l2_ctrl* null, %struct.v4l2_ctrl** %17, align 8
  br label %448

433:                                              ; preds = %425
  %434 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %18, align 8
  %435 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 8
  %437 = call i32 @mutex_lock(i32 %436)
  %438 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  %439 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %438, i32 0, i32 13
  %440 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %18, align 8
  %441 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %440, i32 0, i32 1
  %442 = call i32 @list_add_tail(i32* %439, i32* %441)
  %443 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %18, align 8
  %444 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = call i32 @mutex_unlock(i32 %445)
  %447 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %34, align 8
  store %struct.v4l2_ctrl* %447, %struct.v4l2_ctrl** %17, align 8
  br label %448

448:                                              ; preds = %433, %430, %217, %165, %150, %136, %49
  %449 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %17, align 8
  ret %struct.v4l2_ctrl* %449
}

declare dso_local i32 @handler_set_err(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @check_range(i32, i8*, i8*, i32, i8*) #1

declare dso_local %struct.v4l2_ctrl* @kvzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @handler_new_ref(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl*, i32*, i32, i32) #1

declare dso_local i32 @kvfree(%struct.v4l2_ctrl*) #1

declare dso_local i32 @mutex_lock(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
