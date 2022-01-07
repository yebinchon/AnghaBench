; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_vp9_if.c_vp9_swap_frm_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_vp9_if.c_vp9_swap_frm_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdec_vp9_inst = type { %struct.TYPE_10__*, %struct.vdec_vp9_vsi* }
%struct.TYPE_10__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.vdec_vp9_vsi = type { i32, i64, i32, i32, i32, %struct.TYPE_9__*, i64, i32* }
%struct.TYPE_9__ = type { i64, %struct.vp9_fb_info }
%struct.vp9_fb_info = type { %struct.TYPE_10__* }
%struct.vdec_fb = type { i32 }

@.str = private unnamed_addr constant [63 x i8] c"inst->cur_fb->base_y.size=%zu, frm_to_show->fb.base_y.size=%zu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vdec_vp9_inst*)* @vp9_swap_frm_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vp9_swap_frm_bufs(%struct.vdec_vp9_inst* %0) #0 {
  %2 = alloca %struct.vdec_vp9_inst*, align 8
  %3 = alloca %struct.vdec_vp9_vsi*, align 8
  %4 = alloca %struct.vp9_fb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vdec_fb*, align 8
  store %struct.vdec_vp9_inst* %0, %struct.vdec_vp9_inst** %2, align 8
  %8 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %2, align 8
  %9 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %8, i32 0, i32 1
  %10 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %9, align 8
  store %struct.vdec_vp9_vsi* %10, %struct.vdec_vp9_vsi** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %3, align 8
  %12 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %36, %1
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %2, align 8
  %23 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %3, align 8
  %24 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %23, i32 0, i32 7
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %3, align 8
  %30 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @vp9_ref_cnt_fb(%struct.vdec_vp9_inst* %22, i32* %28, i64 %31)
  br label %33

33:                                               ; preds = %21, %17
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = ashr i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %14

39:                                               ; preds = %14
  %40 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %3, align 8
  %41 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %40, i32 0, i32 5
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %3, align 8
  %44 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  store %struct.vp9_fb_info* %47, %struct.vp9_fb_info** %4, align 8
  %48 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %3, align 8
  %49 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %48, i32 0, i32 5
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %3, align 8
  %52 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, -1
  store i64 %57, i64* %55, align 8
  %58 = load %struct.vp9_fb_info*, %struct.vp9_fb_info** %4, align 8
  %59 = getelementptr inbounds %struct.vp9_fb_info, %struct.vp9_fb_info* %58, i32 0, i32 0
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %2, align 8
  %62 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %61, i32 0, i32 0
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = icmp ne %struct.TYPE_10__* %60, %63
  br i1 %64, label %65, label %182

65:                                               ; preds = %39
  %66 = load %struct.vp9_fb_info*, %struct.vp9_fb_info** %4, align 8
  %67 = getelementptr inbounds %struct.vp9_fb_info, %struct.vp9_fb_info* %66, i32 0, i32 0
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = icmp ne %struct.TYPE_10__* %68, null
  br i1 %69, label %70, label %141

70:                                               ; preds = %65
  %71 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %2, align 8
  %72 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %71, i32 0, i32 0
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.vp9_fb_info*, %struct.vp9_fb_info** %4, align 8
  %78 = getelementptr inbounds %struct.vp9_fb_info, %struct.vp9_fb_info* %77, i32 0, i32 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp sge i64 %76, %82
  br i1 %83, label %84, label %141

84:                                               ; preds = %70
  %85 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %2, align 8
  %86 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %85, i32 0, i32 0
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.vp9_fb_info*, %struct.vp9_fb_info** %4, align 8
  %92 = getelementptr inbounds %struct.vp9_fb_info, %struct.vp9_fb_info* %91, i32 0, i32 0
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp sge i64 %90, %96
  br i1 %97, label %98, label %141

98:                                               ; preds = %84
  %99 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %2, align 8
  %100 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %99, i32 0, i32 0
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to i8*
  %106 = load %struct.vp9_fb_info*, %struct.vp9_fb_info** %4, align 8
  %107 = getelementptr inbounds %struct.vp9_fb_info, %struct.vp9_fb_info* %106, i32 0, i32 0
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to i8*
  %113 = load %struct.vp9_fb_info*, %struct.vp9_fb_info** %4, align 8
  %114 = getelementptr inbounds %struct.vp9_fb_info, %struct.vp9_fb_info* %113, i32 0, i32 0
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @memcpy(i8* %105, i8* %112, i64 %118)
  %120 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %2, align 8
  %121 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %120, i32 0, i32 0
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to i8*
  %127 = load %struct.vp9_fb_info*, %struct.vp9_fb_info** %4, align 8
  %128 = getelementptr inbounds %struct.vp9_fb_info, %struct.vp9_fb_info* %127, i32 0, i32 0
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = inttoptr i64 %132 to i8*
  %134 = load %struct.vp9_fb_info*, %struct.vp9_fb_info** %4, align 8
  %135 = getelementptr inbounds %struct.vp9_fb_info, %struct.vp9_fb_info* %134, i32 0, i32 0
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @memcpy(i8* %126, i8* %133, i64 %139)
  br label %162

141:                                              ; preds = %84, %70, %65
  %142 = load %struct.vp9_fb_info*, %struct.vp9_fb_info** %4, align 8
  %143 = getelementptr inbounds %struct.vp9_fb_info, %struct.vp9_fb_info* %142, i32 0, i32 0
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  %145 = icmp ne %struct.TYPE_10__* %144, null
  br i1 %145, label %146, label %161

146:                                              ; preds = %141
  %147 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %2, align 8
  %148 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %2, align 8
  %149 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %148, i32 0, i32 0
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.vp9_fb_info*, %struct.vp9_fb_info** %4, align 8
  %155 = getelementptr inbounds %struct.vp9_fb_info, %struct.vp9_fb_info* %154, i32 0, i32 0
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @mtk_vcodec_err(%struct.vdec_vp9_inst* %147, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %153, i64 %159)
  br label %161

161:                                              ; preds = %146, %141
  br label %162

162:                                              ; preds = %161, %98
  %163 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %2, align 8
  %164 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %2, align 8
  %165 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %164, i32 0, i32 0
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %165, align 8
  %167 = call i32 @vp9_is_sf_ref_fb(%struct.vdec_vp9_inst* %163, %struct.TYPE_10__* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %181, label %169

169:                                              ; preds = %162
  %170 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %3, align 8
  %171 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %170, i32 0, i32 6
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  %175 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %2, align 8
  %176 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %2, align 8
  %177 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %176, i32 0, i32 0
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %177, align 8
  %179 = call i32 @vp9_add_to_fb_disp_list(%struct.vdec_vp9_inst* %175, %struct.TYPE_10__* %178)
  br label %180

180:                                              ; preds = %174, %169
  br label %181

181:                                              ; preds = %180, %162
  br label %202

182:                                              ; preds = %39
  %183 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %2, align 8
  %184 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %2, align 8
  %185 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %184, i32 0, i32 0
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %185, align 8
  %187 = call i32 @vp9_is_sf_ref_fb(%struct.vdec_vp9_inst* %183, %struct.TYPE_10__* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %201, label %189

189:                                              ; preds = %182
  %190 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %3, align 8
  %191 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %190, i32 0, i32 6
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %189
  %195 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %2, align 8
  %196 = load %struct.vp9_fb_info*, %struct.vp9_fb_info** %4, align 8
  %197 = getelementptr inbounds %struct.vp9_fb_info, %struct.vp9_fb_info* %196, i32 0, i32 0
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %197, align 8
  %199 = call i32 @vp9_add_to_fb_disp_list(%struct.vdec_vp9_inst* %195, %struct.TYPE_10__* %198)
  br label %200

200:                                              ; preds = %194, %189
  br label %201

201:                                              ; preds = %200, %182
  br label %202

202:                                              ; preds = %201, %181
  %203 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %3, align 8
  %204 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %203, i32 0, i32 5
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %204, align 8
  %206 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %3, align 8
  %207 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %213, label %259

213:                                              ; preds = %202
  %214 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %2, align 8
  %215 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %3, align 8
  %216 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %215, i32 0, i32 5
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %216, align 8
  %218 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %3, align 8
  %219 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.vp9_fb_info, %struct.vp9_fb_info* %222, i32 0, i32 0
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %223, align 8
  %225 = call i32 @vp9_is_sf_ref_fb(%struct.vdec_vp9_inst* %214, %struct.TYPE_10__* %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %246, label %227

227:                                              ; preds = %213
  %228 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %2, align 8
  %229 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %3, align 8
  %230 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %229, i32 0, i32 5
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %230, align 8
  %232 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %3, align 8
  %233 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.vp9_fb_info, %struct.vp9_fb_info* %236, i32 0, i32 0
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = call %struct.vdec_fb* @vp9_rm_from_fb_use_list(%struct.vdec_vp9_inst* %228, i64 %241)
  store %struct.vdec_fb* %242, %struct.vdec_fb** %7, align 8
  %243 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %2, align 8
  %244 = load %struct.vdec_fb*, %struct.vdec_fb** %7, align 8
  %245 = call i32 @vp9_add_to_fb_free_list(%struct.vdec_vp9_inst* %243, %struct.vdec_fb* %244)
  br label %258

246:                                              ; preds = %213
  %247 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %3, align 8
  %248 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %247, i32 0, i32 5
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %248, align 8
  %250 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %3, align 8
  %251 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.vp9_fb_info, %struct.vp9_fb_info* %254, i32 0, i32 0
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %255, align 8
  %257 = call i32 @vp9_free_sf_ref_fb(%struct.TYPE_10__* %256)
  br label %258

258:                                              ; preds = %246, %227
  br label %259

259:                                              ; preds = %258, %202
  %260 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %3, align 8
  %261 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = icmp sgt i32 %262, 0
  br i1 %263, label %264, label %278

264:                                              ; preds = %259
  %265 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %3, align 8
  %266 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %3, align 8
  %269 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = sub nsw i32 %270, 1
  %272 = icmp ne i32 %267, %271
  br i1 %272, label %273, label %278

273:                                              ; preds = %264
  %274 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %2, align 8
  %275 = call i32 @vp9_get_sf_ref_fb(%struct.vdec_vp9_inst* %274)
  %276 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %3, align 8
  %277 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %276, i32 0, i32 4
  store i32 %275, i32* %277, align 8
  br label %278

278:                                              ; preds = %273, %264, %259
  ret void
}

declare dso_local i32 @vp9_ref_cnt_fb(%struct.vdec_vp9_inst*, i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @mtk_vcodec_err(%struct.vdec_vp9_inst*, i8*, i64, i64) #1

declare dso_local i32 @vp9_is_sf_ref_fb(%struct.vdec_vp9_inst*, %struct.TYPE_10__*) #1

declare dso_local i32 @vp9_add_to_fb_disp_list(%struct.vdec_vp9_inst*, %struct.TYPE_10__*) #1

declare dso_local %struct.vdec_fb* @vp9_rm_from_fb_use_list(%struct.vdec_vp9_inst*, i64) #1

declare dso_local i32 @vp9_add_to_fb_free_list(%struct.vdec_vp9_inst*, %struct.vdec_fb*) #1

declare dso_local i32 @vp9_free_sf_ref_fb(%struct.TYPE_10__*) #1

declare dso_local i32 @vp9_get_sf_ref_fb(%struct.vdec_vp9_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
