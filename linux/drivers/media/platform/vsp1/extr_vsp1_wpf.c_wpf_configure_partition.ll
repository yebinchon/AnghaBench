; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_wpf.c_wpf_configure_partition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_wpf.c_wpf_configure_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_entity = type { i32 }
%struct.vsp1_pipeline = type { i32, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.vsp1_dl_list = type { i32 }
%struct.vsp1_dl_body = type { i32 }
%struct.vsp1_rwpf = type { i32, %struct.TYPE_10__, %struct.TYPE_12__, %struct.vsp1_format_info*, %struct.v4l2_pix_format_mplane, %struct.vsp1_rwpf_memory }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_12__ = type { i32, %struct.vsp1_device* }
%struct.vsp1_device = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.vsp1_format_info = type { i32, i32, i32*, i64 }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.vsp1_rwpf_memory = type { i32* }
%struct.v4l2_mbus_framefmt = type { i32, i32 }

@RWPF_PAD_SINK = common dso_local global i32 0, align 4
@VI6_WPF_HSZCLIP = common dso_local global i32 0, align 4
@VI6_WPF_SZCLIP_EN = common dso_local global i32 0, align 4
@VI6_WPF_SZCLIP_OFST_SHIFT = common dso_local global i32 0, align 4
@VI6_WPF_SZCLIP_SIZE_SHIFT = common dso_local global i32 0, align 4
@VI6_WPF_VSZCLIP = common dso_local global i32 0, align 4
@WPF_CTRL_HFLIP = common dso_local global i32 0, align 4
@WPF_CTRL_VFLIP = common dso_local global i32 0, align 4
@VI6_WPF_DSTM_ADDR_Y = common dso_local global i32 0, align 4
@VI6_WPF_DSTM_ADDR_C0 = common dso_local global i32 0, align 4
@VI6_WPF_DSTM_ADDR_C1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsp1_entity*, %struct.vsp1_pipeline*, %struct.vsp1_dl_list*, %struct.vsp1_dl_body*)* @wpf_configure_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpf_configure_partition(%struct.vsp1_entity* %0, %struct.vsp1_pipeline* %1, %struct.vsp1_dl_list* %2, %struct.vsp1_dl_body* %3) #0 {
  %5 = alloca %struct.vsp1_entity*, align 8
  %6 = alloca %struct.vsp1_pipeline*, align 8
  %7 = alloca %struct.vsp1_dl_list*, align 8
  %8 = alloca %struct.vsp1_dl_body*, align 8
  %9 = alloca %struct.vsp1_rwpf*, align 8
  %10 = alloca %struct.vsp1_device*, align 8
  %11 = alloca %struct.vsp1_rwpf_memory, align 8
  %12 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %13 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %14 = alloca %struct.vsp1_format_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.vsp1_entity* %0, %struct.vsp1_entity** %5, align 8
  store %struct.vsp1_pipeline* %1, %struct.vsp1_pipeline** %6, align 8
  store %struct.vsp1_dl_list* %2, %struct.vsp1_dl_list** %7, align 8
  store %struct.vsp1_dl_body* %3, %struct.vsp1_dl_body** %8, align 8
  %25 = load %struct.vsp1_entity*, %struct.vsp1_entity** %5, align 8
  %26 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %25, i32 0, i32 0
  %27 = call %struct.vsp1_rwpf* @to_rwpf(i32* %26)
  store %struct.vsp1_rwpf* %27, %struct.vsp1_rwpf** %9, align 8
  %28 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %29 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load %struct.vsp1_device*, %struct.vsp1_device** %30, align 8
  store %struct.vsp1_device* %31, %struct.vsp1_device** %10, align 8
  %32 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %33 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %32, i32 0, i32 5
  %34 = bitcast %struct.vsp1_rwpf_memory* %11 to i8*
  %35 = bitcast %struct.vsp1_rwpf_memory* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 8, i1 false)
  %36 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %37 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %36, i32 0, i32 4
  store %struct.v4l2_pix_format_mplane* %37, %struct.v4l2_pix_format_mplane** %13, align 8
  %38 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %39 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %38, i32 0, i32 3
  %40 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %39, align 8
  store %struct.vsp1_format_info* %40, %struct.vsp1_format_info** %14, align 8
  %41 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %42 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %41, i32 0, i32 2
  %43 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %44 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @RWPF_PAD_SINK, align 4
  %48 = call %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_12__* %42, i32 %46, i32 %47)
  store %struct.v4l2_mbus_framefmt* %48, %struct.v4l2_mbus_framefmt** %12, align 8
  %49 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %12, align 8
  %50 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %15, align 4
  %52 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %12, align 8
  %53 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %55 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %56 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %57, 1
  br i1 %58, label %59, label %72

59:                                               ; preds = %4
  %60 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %61 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %60, i32 0, i32 2
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %15, align 4
  %66 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %67 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %66, i32 0, i32 2
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %17, align 4
  br label %72

72:                                               ; preds = %59, %4
  %73 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %74 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %75 = load i32, i32* @VI6_WPF_HSZCLIP, align 4
  %76 = load i32, i32* @VI6_WPF_SZCLIP_EN, align 4
  %77 = load i32, i32* @VI6_WPF_SZCLIP_OFST_SHIFT, align 4
  %78 = shl i32 0, %77
  %79 = or i32 %76, %78
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @VI6_WPF_SZCLIP_SIZE_SHIFT, align 4
  %82 = shl i32 %80, %81
  %83 = or i32 %79, %82
  %84 = call i32 @vsp1_wpf_write(%struct.vsp1_rwpf* %73, %struct.vsp1_dl_body* %74, i32 %75, i32 %83)
  %85 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %86 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %87 = load i32, i32* @VI6_WPF_VSZCLIP, align 4
  %88 = load i32, i32* @VI6_WPF_SZCLIP_EN, align 4
  %89 = load i32, i32* @VI6_WPF_SZCLIP_OFST_SHIFT, align 4
  %90 = shl i32 0, %89
  %91 = or i32 %88, %90
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* @VI6_WPF_SZCLIP_SIZE_SHIFT, align 4
  %94 = shl i32 %92, %93
  %95 = or i32 %91, %94
  %96 = call i32 @vsp1_wpf_write(%struct.vsp1_rwpf* %85, %struct.vsp1_dl_body* %86, i32 %87, i32 %95)
  %97 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %98 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %72
  %102 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %103 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %101
  br label %404

107:                                              ; preds = %101, %72
  %108 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %109 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* %19, align 4
  %112 = load i32, i32* %19, align 4
  %113 = load i32, i32* @WPF_CTRL_HFLIP, align 4
  %114 = call i32 @BIT(i32 %113)
  %115 = and i32 %112, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %107
  %118 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %119 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %117
  %124 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %13, align 8
  %125 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %17, align 4
  %128 = sub i32 %126, %127
  %129 = load i32, i32* %15, align 4
  %130 = sub i32 %128, %129
  store i32 %130, i32* %18, align 4
  br label %154

131:                                              ; preds = %117, %107
  %132 = load i32, i32* %19, align 4
  %133 = load i32, i32* @WPF_CTRL_VFLIP, align 4
  %134 = call i32 @BIT(i32 %133)
  %135 = and i32 %132, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %131
  %138 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %139 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %137
  %144 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %13, align 8
  %145 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %17, align 4
  %148 = sub i32 %146, %147
  %149 = load i32, i32* %15, align 4
  %150 = sub i32 %148, %149
  store i32 %150, i32* %18, align 4
  br label %153

151:                                              ; preds = %137, %131
  %152 = load i32, i32* %17, align 4
  store i32 %152, i32* %18, align 4
  br label %153

153:                                              ; preds = %151, %143
  br label %154

154:                                              ; preds = %153, %123
  store i32 0, i32* %20, align 4
  br label %155

155:                                              ; preds = %226, %154
  %156 = load i32, i32* %20, align 4
  %157 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %13, align 8
  %158 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = icmp ult i32 %156, %159
  br i1 %160, label %161, label %229

161:                                              ; preds = %155
  %162 = load i32, i32* %20, align 4
  %163 = icmp ugt i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %14, align 8
  %166 = getelementptr inbounds %struct.vsp1_format_info, %struct.vsp1_format_info* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  br label %169

168:                                              ; preds = %161
  br label %169

169:                                              ; preds = %168, %164
  %170 = phi i32 [ %167, %164 ], [ 1, %168 ]
  store i32 %170, i32* %21, align 4
  %171 = load i32, i32* %20, align 4
  %172 = icmp ugt i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %169
  %174 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %14, align 8
  %175 = getelementptr inbounds %struct.vsp1_format_info, %struct.vsp1_format_info* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  br label %178

177:                                              ; preds = %169
  br label %178

178:                                              ; preds = %177, %173
  %179 = phi i32 [ %176, %173 ], [ 1, %177 ]
  store i32 %179, i32* %22, align 4
  %180 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %181 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %205

185:                                              ; preds = %178
  %186 = load i32, i32* %18, align 4
  %187 = load i32, i32* %22, align 4
  %188 = udiv i32 %186, %187
  %189 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %13, align 8
  %190 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %189, i32 0, i32 3
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %190, align 8
  %192 = load i32, i32* %20, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = mul i32 %188, %196
  %198 = getelementptr inbounds %struct.vsp1_rwpf_memory, %struct.vsp1_rwpf_memory* %11, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %20, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = add i32 %203, %197
  store i32 %204, i32* %202, align 4
  br label %225

205:                                              ; preds = %178
  %206 = load i32, i32* %18, align 4
  %207 = load i32, i32* %21, align 4
  %208 = udiv i32 %206, %207
  %209 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %14, align 8
  %210 = getelementptr inbounds %struct.vsp1_format_info, %struct.vsp1_format_info* %209, i32 0, i32 2
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %20, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = mul i32 %208, %215
  %217 = udiv i32 %216, 8
  %218 = getelementptr inbounds %struct.vsp1_rwpf_memory, %struct.vsp1_rwpf_memory* %11, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %20, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = add i32 %223, %217
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %205, %185
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %20, align 4
  %228 = add i32 %227, 1
  store i32 %228, i32* %20, align 4
  br label %155

229:                                              ; preds = %155
  %230 = load i32, i32* %19, align 4
  %231 = load i32, i32* @WPF_CTRL_VFLIP, align 4
  %232 = call i32 @BIT(i32 %231)
  %233 = and i32 %230, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %293

235:                                              ; preds = %229
  %236 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %237 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %235
  %242 = load i32, i32* %15, align 4
  store i32 %242, i32* %16, align 4
  br label %247

243:                                              ; preds = %235
  %244 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %13, align 8
  %245 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  store i32 %246, i32* %16, align 4
  br label %247

247:                                              ; preds = %243, %241
  %248 = load i32, i32* %16, align 4
  %249 = sub i32 %248, 1
  %250 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %13, align 8
  %251 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %250, i32 0, i32 3
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i64 0
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = mul i32 %249, %255
  %257 = getelementptr inbounds %struct.vsp1_rwpf_memory, %struct.vsp1_rwpf_memory* %11, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 0
  %260 = load i32, i32* %259, align 4
  %261 = add i32 %260, %256
  store i32 %261, i32* %259, align 4
  %262 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %13, align 8
  %263 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = icmp ugt i32 %264, 1
  br i1 %265, label %266, label %292

266:                                              ; preds = %247
  %267 = load i32, i32* %16, align 4
  %268 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %14, align 8
  %269 = getelementptr inbounds %struct.vsp1_format_info, %struct.vsp1_format_info* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = udiv i32 %267, %270
  %272 = sub i32 %271, 1
  %273 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %13, align 8
  %274 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %273, i32 0, i32 3
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i64 1
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = mul i32 %272, %278
  store i32 %279, i32* %18, align 4
  %280 = load i32, i32* %18, align 4
  %281 = getelementptr inbounds %struct.vsp1_rwpf_memory, %struct.vsp1_rwpf_memory* %11, i32 0, i32 0
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 1
  %284 = load i32, i32* %283, align 4
  %285 = add i32 %284, %280
  store i32 %285, i32* %283, align 4
  %286 = load i32, i32* %18, align 4
  %287 = getelementptr inbounds %struct.vsp1_rwpf_memory, %struct.vsp1_rwpf_memory* %11, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 2
  %290 = load i32, i32* %289, align 4
  %291 = add i32 %290, %286
  store i32 %291, i32* %289, align 4
  br label %292

292:                                              ; preds = %266, %247
  br label %293

293:                                              ; preds = %292, %229
  %294 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %295 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %350

299:                                              ; preds = %293
  %300 = load i32, i32* %19, align 4
  %301 = load i32, i32* @WPF_CTRL_HFLIP, align 4
  %302 = call i32 @BIT(i32 %301)
  %303 = and i32 %300, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %350, label %305

305:                                              ; preds = %299
  %306 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %13, align 8
  %307 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = sub nsw i32 %308, 16
  %310 = call i32 @max(i32 0, i32 %309)
  store i32 %310, i32* %23, align 4
  store i32 0, i32* %20, align 4
  br label %311

311:                                              ; preds = %346, %305
  %312 = load i32, i32* %20, align 4
  %313 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %13, align 8
  %314 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 8
  %316 = icmp ult i32 %312, %315
  br i1 %316, label %317, label %349

317:                                              ; preds = %311
  %318 = load i32, i32* %20, align 4
  %319 = icmp ugt i32 %318, 0
  br i1 %319, label %320, label %324

320:                                              ; preds = %317
  %321 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %14, align 8
  %322 = getelementptr inbounds %struct.vsp1_format_info, %struct.vsp1_format_info* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  br label %325

324:                                              ; preds = %317
  br label %325

325:                                              ; preds = %324, %320
  %326 = phi i32 [ %323, %320 ], [ 1, %324 ]
  store i32 %326, i32* %24, align 4
  %327 = load i32, i32* %23, align 4
  %328 = load i32, i32* %24, align 4
  %329 = udiv i32 %327, %328
  %330 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %14, align 8
  %331 = getelementptr inbounds %struct.vsp1_format_info, %struct.vsp1_format_info* %330, i32 0, i32 2
  %332 = load i32*, i32** %331, align 8
  %333 = load i32, i32* %20, align 4
  %334 = zext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = mul i32 %329, %336
  %338 = udiv i32 %337, 8
  %339 = getelementptr inbounds %struct.vsp1_rwpf_memory, %struct.vsp1_rwpf_memory* %11, i32 0, i32 0
  %340 = load i32*, i32** %339, align 8
  %341 = load i32, i32* %20, align 4
  %342 = zext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %340, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = add i32 %344, %338
  store i32 %345, i32* %343, align 4
  br label %346

346:                                              ; preds = %325
  %347 = load i32, i32* %20, align 4
  %348 = add i32 %347, 1
  store i32 %348, i32* %20, align 4
  br label %311

349:                                              ; preds = %311
  br label %350

350:                                              ; preds = %349, %299, %293
  %351 = load %struct.vsp1_device*, %struct.vsp1_device** %10, align 8
  %352 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %351, i32 0, i32 0
  %353 = load %struct.TYPE_11__*, %struct.TYPE_11__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = icmp eq i32 %355, 3
  br i1 %356, label %357, label %377

357:                                              ; preds = %350
  %358 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %13, align 8
  %359 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 8
  %361 = icmp eq i32 %360, 3
  br i1 %361, label %362, label %377

362:                                              ; preds = %357
  %363 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %14, align 8
  %364 = getelementptr inbounds %struct.vsp1_format_info, %struct.vsp1_format_info* %363, i32 0, i32 3
  %365 = load i64, i64* %364, align 8
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %377

367:                                              ; preds = %362
  %368 = getelementptr inbounds %struct.vsp1_rwpf_memory, %struct.vsp1_rwpf_memory* %11, i32 0, i32 0
  %369 = load i32*, i32** %368, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 1
  %371 = load i32, i32* %370, align 4
  %372 = getelementptr inbounds %struct.vsp1_rwpf_memory, %struct.vsp1_rwpf_memory* %11, i32 0, i32 0
  %373 = load i32*, i32** %372, align 8
  %374 = getelementptr inbounds i32, i32* %373, i64 2
  %375 = load i32, i32* %374, align 4
  %376 = call i32 @swap(i32 %371, i32 %375)
  br label %377

377:                                              ; preds = %367, %362, %357, %350
  %378 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %379 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %380 = load i32, i32* @VI6_WPF_DSTM_ADDR_Y, align 4
  %381 = getelementptr inbounds %struct.vsp1_rwpf_memory, %struct.vsp1_rwpf_memory* %11, i32 0, i32 0
  %382 = load i32*, i32** %381, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 0
  %384 = load i32, i32* %383, align 4
  %385 = call i32 @vsp1_wpf_write(%struct.vsp1_rwpf* %378, %struct.vsp1_dl_body* %379, i32 %380, i32 %384)
  %386 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %387 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %388 = load i32, i32* @VI6_WPF_DSTM_ADDR_C0, align 4
  %389 = getelementptr inbounds %struct.vsp1_rwpf_memory, %struct.vsp1_rwpf_memory* %11, i32 0, i32 0
  %390 = load i32*, i32** %389, align 8
  %391 = getelementptr inbounds i32, i32* %390, i64 1
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @vsp1_wpf_write(%struct.vsp1_rwpf* %386, %struct.vsp1_dl_body* %387, i32 %388, i32 %392)
  %394 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %395 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %396 = load i32, i32* @VI6_WPF_DSTM_ADDR_C1, align 4
  %397 = getelementptr inbounds %struct.vsp1_rwpf_memory, %struct.vsp1_rwpf_memory* %11, i32 0, i32 0
  %398 = load i32*, i32** %397, align 8
  %399 = getelementptr inbounds i32, i32* %398, i64 2
  %400 = load i32, i32* %399, align 4
  %401 = call i32 @vsp1_wpf_write(%struct.vsp1_rwpf* %394, %struct.vsp1_dl_body* %395, i32 %396, i32 %400)
  %402 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %403 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %402, i32 0, i32 0
  store i32 0, i32* %403, align 8
  br label %404

404:                                              ; preds = %377, %106
  ret void
}

declare dso_local %struct.vsp1_rwpf* @to_rwpf(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @vsp1_wpf_write(%struct.vsp1_rwpf*, %struct.vsp1_dl_body*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @swap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
