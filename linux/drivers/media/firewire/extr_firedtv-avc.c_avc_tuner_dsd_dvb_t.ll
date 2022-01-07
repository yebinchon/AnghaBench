; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-avc.c_avc_tuner_dsd_dvb_t.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-avc.c_avc_tuner_dsd_dvb_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firedtv = type { i64 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.avc_command_frame = type { i32*, i32 }

@AVC_OPCODE_DSD = common dso_local global i32 0, align 4
@QAM_AUTO = common dso_local global i32 0, align 4
@FEC_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.firedtv*, %struct.dtv_frontend_properties*)* @avc_tuner_dsd_dvb_t to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avc_tuner_dsd_dvb_t(%struct.firedtv* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca %struct.firedtv*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.avc_command_frame*, align 8
  store %struct.firedtv* %0, %struct.firedtv** %3, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %4, align 8
  %6 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %7 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.avc_command_frame*
  store %struct.avc_command_frame* %10, %struct.avc_command_frame** %5, align 8
  %11 = load i32, i32* @AVC_OPCODE_DSD, align 4
  %12 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %13 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %15 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 0, i32* %17, align 4
  %18 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %19 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 210, i32* %21, align 4
  %22 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %23 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  store i32 32, i32* %25, align 4
  %26 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %27 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  store i32 0, i32* %29, align 4
  %30 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %31 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  store i32 12, i32* %33, align 4
  %34 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %35 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 32, i32 0
  %40 = or i32 64, %39
  %41 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %42 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @QAM_AUTO, align 4
  %45 = icmp ne i32 %43, %44
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 16, i32 0
  %48 = or i32 %40, %47
  %49 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %50 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 135
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 8, i32 0
  %55 = or i32 %48, %54
  %56 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %57 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @FEC_AUTO, align 4
  %60 = icmp ne i32 %58, %59
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 4, i32 0
  %63 = or i32 %55, %62
  %64 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %65 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @FEC_AUTO, align 4
  %68 = icmp ne i32 %66, %67
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 2, i32 0
  %71 = or i32 %63, %70
  %72 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %73 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 139
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 1, i32 0
  %78 = or i32 %71, %77
  %79 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %80 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 5
  store i32 %78, i32* %82, align 4
  %83 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %84 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 128
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 64, i32 0
  %89 = or i32 0, %88
  %90 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %91 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 6
  store i32 %89, i32* %93, align 4
  %94 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %95 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 7
  store i32 0, i32* %97, align 4
  %98 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %99 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 4
  %101 = sdiv i32 %100, 10
  %102 = ashr i32 %101, 24
  %103 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %104 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 8
  store i32 %102, i32* %106, align 4
  %107 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %108 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 4
  %110 = sdiv i32 %109, 10
  %111 = ashr i32 %110, 16
  %112 = and i32 %111, 255
  %113 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %114 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 9
  store i32 %112, i32* %116, align 4
  %117 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %118 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 4
  %120 = sdiv i32 %119, 10
  %121 = ashr i32 %120, 8
  %122 = and i32 %121, 255
  %123 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %124 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 10
  store i32 %122, i32* %126, align 4
  %127 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %128 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 4
  %130 = sdiv i32 %129, 10
  %131 = and i32 %130, 255
  %132 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %133 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 11
  store i32 %131, i32* %135, align 4
  %136 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %137 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  switch i32 %138, label %145 [
    i32 7000000, label %139
    i32 8000000, label %144
    i32 6000000, label %144
    i32 0, label %144
  ]

139:                                              ; preds = %2
  %140 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %141 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 12
  store i32 32, i32* %143, align 4
  br label %150

144:                                              ; preds = %2, %2, %2
  br label %145

145:                                              ; preds = %2, %144
  %146 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %147 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 12
  store i32 0, i32* %149, align 4
  br label %150

150:                                              ; preds = %145, %139
  %151 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %152 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  switch i32 %153, label %165 [
    i32 133, label %154
    i32 132, label %159
    i32 131, label %164
  ]

154:                                              ; preds = %150
  %155 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %156 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 13
  store i32 64, i32* %158, align 4
  br label %170

159:                                              ; preds = %150
  %160 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %161 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 13
  store i32 128, i32* %163, align 4
  br label %170

164:                                              ; preds = %150
  br label %165

165:                                              ; preds = %150, %164
  %166 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %167 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 13
  store i32 0, i32* %169, align 4
  br label %170

170:                                              ; preds = %165, %159, %154
  %171 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %172 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  switch i32 %173, label %196 [
    i32 138, label %174
    i32 137, label %181
    i32 136, label %188
    i32 135, label %195
    i32 134, label %195
  ]

174:                                              ; preds = %170
  %175 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %176 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 13
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, 8
  store i32 %180, i32* %178, align 4
  br label %197

181:                                              ; preds = %170
  %182 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %183 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 13
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %186, 16
  store i32 %187, i32* %185, align 4
  br label %197

188:                                              ; preds = %170
  %189 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %190 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 13
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %193, 24
  store i32 %194, i32* %192, align 4
  br label %197

195:                                              ; preds = %170, %170
  br label %196

196:                                              ; preds = %170, %195
  br label %197

197:                                              ; preds = %196, %188, %181, %174
  %198 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %199 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  switch i32 %200, label %230 [
    i32 147, label %201
    i32 146, label %208
    i32 145, label %215
    i32 144, label %222
    i32 148, label %229
  ]

201:                                              ; preds = %197
  %202 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %203 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 13
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, 1
  store i32 %207, i32* %205, align 4
  br label %231

208:                                              ; preds = %197
  %209 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %210 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 13
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %213, 2
  store i32 %214, i32* %212, align 4
  br label %231

215:                                              ; preds = %197
  %216 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %217 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 13
  %220 = load i32, i32* %219, align 4
  %221 = or i32 %220, 3
  store i32 %221, i32* %219, align 4
  br label %231

222:                                              ; preds = %197
  %223 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %224 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 13
  %227 = load i32, i32* %226, align 4
  %228 = or i32 %227, 4
  store i32 %228, i32* %226, align 4
  br label %231

229:                                              ; preds = %197
  br label %230

230:                                              ; preds = %197, %229
  br label %231

231:                                              ; preds = %230, %222, %215, %208, %201
  %232 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %233 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 4
  switch i32 %234, label %256 [
    i32 147, label %235
    i32 146, label %240
    i32 145, label %245
    i32 144, label %250
    i32 148, label %255
  ]

235:                                              ; preds = %231
  %236 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %237 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %236, i32 0, i32 0
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 14
  store i32 32, i32* %239, align 4
  br label %261

240:                                              ; preds = %231
  %241 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %242 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %241, i32 0, i32 0
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 14
  store i32 64, i32* %244, align 4
  br label %261

245:                                              ; preds = %231
  %246 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %247 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %246, i32 0, i32 0
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 14
  store i32 96, i32* %249, align 4
  br label %261

250:                                              ; preds = %231
  %251 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %252 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 14
  store i32 128, i32* %254, align 4
  br label %261

255:                                              ; preds = %231
  br label %256

256:                                              ; preds = %231, %255
  %257 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %258 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %257, i32 0, i32 0
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 14
  store i32 0, i32* %260, align 4
  br label %261

261:                                              ; preds = %256, %250, %245, %240, %235
  %262 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %263 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %262, i32 0, i32 5
  %264 = load i32, i32* %263, align 4
  switch i32 %264, label %287 [
    i32 143, label %265
    i32 140, label %272
    i32 141, label %279
    i32 142, label %286
    i32 139, label %286
  ]

265:                                              ; preds = %261
  %266 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %267 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %266, i32 0, i32 0
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 14
  %270 = load i32, i32* %269, align 4
  %271 = or i32 %270, 8
  store i32 %271, i32* %269, align 4
  br label %288

272:                                              ; preds = %261
  %273 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %274 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %273, i32 0, i32 0
  %275 = load i32*, i32** %274, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 14
  %277 = load i32, i32* %276, align 4
  %278 = or i32 %277, 16
  store i32 %278, i32* %276, align 4
  br label %288

279:                                              ; preds = %261
  %280 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %281 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %280, i32 0, i32 0
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 14
  %284 = load i32, i32* %283, align 4
  %285 = or i32 %284, 24
  store i32 %285, i32* %283, align 4
  br label %288

286:                                              ; preds = %261, %261
  br label %287

287:                                              ; preds = %261, %286
  br label %288

288:                                              ; preds = %287, %279, %272, %265
  %289 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %290 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %289, i32 0, i32 6
  %291 = load i32, i32* %290, align 4
  switch i32 %291, label %300 [
    i32 129, label %292
    i32 130, label %299
    i32 128, label %299
  ]

292:                                              ; preds = %288
  %293 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %294 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %293, i32 0, i32 0
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 14
  %297 = load i32, i32* %296, align 4
  %298 = or i32 %297, 2
  store i32 %298, i32* %296, align 4
  br label %301

299:                                              ; preds = %288, %288
  br label %300

300:                                              ; preds = %288, %299
  br label %301

301:                                              ; preds = %300, %292
  %302 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %303 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %302, i32 0, i32 0
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 15
  store i32 0, i32* %305, align 4
  %306 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %307 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %306, i32 0, i32 0
  %308 = load i32*, i32** %307, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 16
  store i32 0, i32* %309, align 4
  %310 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %311 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %312 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %311, i32 0, i32 0
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 17
  %315 = call i32 @add_pid_filter(%struct.firedtv* %310, i32* %314)
  %316 = add nsw i32 17, %315
  ret i32 %316
}

declare dso_local i32 @add_pid_filter(%struct.firedtv*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
