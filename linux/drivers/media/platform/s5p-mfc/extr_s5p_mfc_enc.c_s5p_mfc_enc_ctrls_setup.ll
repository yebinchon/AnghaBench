; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_enc.c_s5p_mfc_enc_ctrls_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_enc.c_s5p_mfc_enc_ctrls_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i32, i64, i32, i32, i32, i64, i32 }
%struct.s5p_mfc_ctx = type { %struct.TYPE_11__, %struct.TYPE_10__** }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.v4l2_ctrl_config = type { i64, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32* }

@NUM_CTRLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"v4l2_ctrl_handler_init failed\0A\00", align 1
@controls = common dso_local global %struct.TYPE_12__* null, align 8
@s5p_mfc_enc_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_MENU = common dso_local global i64 0, align 8
@V4L2_CTRL_TYPE_INTEGER_MENU = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Adding control (%d) failed\0A\00", align 1
@V4L2_CTRL_FLAG_VOLATILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s5p_mfc_enc_ctrls_setup(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5p_mfc_ctx*, align 8
  %4 = alloca %struct.v4l2_ctrl_config, align 8
  %5 = alloca i32, align 4
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %3, align 8
  %6 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %6, i32 0, i32 0
  %8 = load i32, i32* @NUM_CTRLS, align 4
  %9 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_11__* %7, i32 %8)
  %10 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %2, align 4
  br label %254

21:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %247, %21
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @NUM_CTRLS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %250

26:                                               ; preds = %22
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** @controls, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @IS_MFC51_PRIV(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %117

35:                                               ; preds = %26
  %36 = call i32 @memset(%struct.v4l2_ctrl_config* %4, i32 0, i32 64)
  %37 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %4, i32 0, i32 10
  store i32* @s5p_mfc_enc_ctrl_ops, i32** %37, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** @controls, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %4, i32 0, i32 3
  store i32 %43, i32* %44, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** @controls, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %4, i32 0, i32 9
  store i32 %50, i32* %51, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** @controls, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %4, i32 0, i32 8
  store i32 %57, i32* %58, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** @controls, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %4, i32 0, i32 7
  store i32 %64, i32* %65, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** @controls, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %4, i32 0, i32 6
  store i32 %71, i32* %72, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** @controls, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %4, i32 0, i32 0
  store i64 %78, i64* %79, align 8
  %80 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %4, i32 0, i32 5
  store i64 0, i64* %80, align 8
  %81 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %4, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @V4L2_CTRL_TYPE_MENU, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %35
  %86 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %4, i32 0, i32 2
  store i64 0, i64* %86, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** @controls, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 7
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %4, i32 0, i32 1
  store i64 %92, i64* %93, align 8
  %94 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %4, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @mfc51_get_menu(i32 %95)
  %97 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %4, i32 0, i32 4
  store i32 %96, i32* %97, align 4
  br label %107

98:                                               ; preds = %35
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** @controls, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %4, i32 0, i32 2
  store i64 %104, i64* %105, align 8
  %106 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %4, i32 0, i32 1
  store i64 0, i64* %106, align 8
  br label %107

107:                                              ; preds = %98, %85
  %108 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %109 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %108, i32 0, i32 0
  %110 = call %struct.TYPE_10__* @v4l2_ctrl_new_custom(%struct.TYPE_11__* %109, %struct.v4l2_ctrl_config* %4, i32* null)
  %111 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %112 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %111, i32 0, i32 1
  %113 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %113, i64 %115
  store %struct.TYPE_10__* %110, %struct.TYPE_10__** %116, align 8
  br label %204

117:                                              ; preds = %26
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** @controls, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @V4L2_CTRL_TYPE_MENU, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %135, label %126

126:                                              ; preds = %117
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** @controls, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @V4L2_CTRL_TYPE_INTEGER_MENU, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %163

135:                                              ; preds = %126, %117
  %136 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %137 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %136, i32 0, i32 0
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** @controls, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** @controls, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** @controls, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call %struct.TYPE_10__* @v4l2_ctrl_new_std_menu(%struct.TYPE_11__* %137, i32* @s5p_mfc_enc_ctrl_ops, i32 %143, i32 %149, i32 0, i32 %155)
  %157 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %158 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %157, i32 0, i32 1
  %159 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %158, align 8
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %159, i64 %161
  store %struct.TYPE_10__* %156, %struct.TYPE_10__** %162, align 8
  br label %203

163:                                              ; preds = %126
  %164 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %165 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %164, i32 0, i32 0
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** @controls, align 8
  %167 = load i32, i32* %5, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** @controls, align 8
  %173 = load i32, i32* %5, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** @controls, align 8
  %179 = load i32, i32* %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** @controls, align 8
  %185 = load i32, i32* %5, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** @controls, align 8
  %191 = load i32, i32* %5, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = call %struct.TYPE_10__* @v4l2_ctrl_new_std(%struct.TYPE_11__* %165, i32* @s5p_mfc_enc_ctrl_ops, i32 %171, i32 %177, i32 %183, i64 %189, i32 %195)
  %197 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %198 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %197, i32 0, i32 1
  %199 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %198, align 8
  %200 = load i32, i32* %5, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %199, i64 %201
  store %struct.TYPE_10__* %196, %struct.TYPE_10__** %202, align 8
  br label %203

203:                                              ; preds = %163, %135
  br label %204

204:                                              ; preds = %203, %107
  %205 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %206 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %204
  %211 = load i32, i32* %5, align 4
  %212 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %211)
  %213 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %214 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  store i32 %216, i32* %2, align 4
  br label %254

217:                                              ; preds = %204
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** @controls, align 8
  %219 = load i32, i32* %5, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %246

225:                                              ; preds = %217
  %226 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %227 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %226, i32 0, i32 1
  %228 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %227, align 8
  %229 = load i32, i32* %5, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %228, i64 %230
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %231, align 8
  %233 = icmp ne %struct.TYPE_10__* %232, null
  br i1 %233, label %234, label %246

234:                                              ; preds = %225
  %235 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %236 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %237 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %236, i32 0, i32 1
  %238 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %237, align 8
  %239 = load i32, i32* %5, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %238, i64 %240
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = or i32 %244, %235
  store i32 %245, i32* %243, align 4
  br label %246

246:                                              ; preds = %234, %225, %217
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %5, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %5, align 4
  br label %22

250:                                              ; preds = %22
  %251 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %252 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %251, i32 0, i32 0
  %253 = call i32 @v4l2_ctrl_handler_setup(%struct.TYPE_11__* %252)
  store i32 0, i32* %2, align 4
  br label %254

254:                                              ; preds = %250, %210, %15
  %255 = load i32, i32* %2, align 4
  ret i32 %255
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @mfc_err(i8*, ...) #1

declare dso_local i64 @IS_MFC51_PRIV(i32) #1

declare dso_local i32 @memset(%struct.v4l2_ctrl_config*, i32, i32) #1

declare dso_local i32 @mfc51_get_menu(i32) #1

declare dso_local %struct.TYPE_10__* @v4l2_ctrl_new_custom(%struct.TYPE_11__*, %struct.v4l2_ctrl_config*, i32*) #1

declare dso_local %struct.TYPE_10__* @v4l2_ctrl_new_std_menu(%struct.TYPE_11__*, i32*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_10__* @v4l2_ctrl_new_std(%struct.TYPE_11__*, i32*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
