; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-avc.c_avc_tuner_tuneqpsk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-avc.c_avc_tuner_tuneqpsk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firedtv = type { i64, i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32 }
%struct.avc_command_frame = type { i32*, i32 }

@AVC_OPCODE_VENDOR = common dso_local global i32 0, align 4
@SFE_VENDOR_DE_COMPANYID_0 = common dso_local global i32 0, align 4
@SFE_VENDOR_DE_COMPANYID_1 = common dso_local global i32 0, align 4
@SFE_VENDOR_DE_COMPANYID_2 = common dso_local global i32 0, align 4
@FIREDTV_DVB_S2 = common dso_local global i64 0, align 8
@SFE_VENDOR_OPCODE_TUNE_QPSK2 = common dso_local global i32 0, align 4
@SFE_VENDOR_OPCODE_TUNE_QPSK = common dso_local global i32 0, align 4
@SEC_VOLTAGE_18 = common dso_local global i32 0, align 4
@SEC_TONE_ON = common dso_local global i32 0, align 4
@SYS_DVBS2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.firedtv*, %struct.dtv_frontend_properties*)* @avc_tuner_tuneqpsk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avc_tuner_tuneqpsk(%struct.firedtv* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.firedtv*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca %struct.avc_command_frame*, align 8
  store %struct.firedtv* %0, %struct.firedtv** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  %7 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %8 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.avc_command_frame*
  store %struct.avc_command_frame* %11, %struct.avc_command_frame** %6, align 8
  %12 = load i32, i32* @AVC_OPCODE_VENDOR, align 4
  %13 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %14 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @SFE_VENDOR_DE_COMPANYID_0, align 4
  %16 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %17 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %15, i32* %19, align 4
  %20 = load i32, i32* @SFE_VENDOR_DE_COMPANYID_1, align 4
  %21 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %22 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %20, i32* %24, align 4
  %25 = load i32, i32* @SFE_VENDOR_DE_COMPANYID_2, align 4
  %26 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %27 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  store i32 %25, i32* %29, align 4
  %30 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %31 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @FIREDTV_DVB_S2, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %2
  %36 = load i32, i32* @SFE_VENDOR_OPCODE_TUNE_QPSK2, align 4
  %37 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %38 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  store i32 %36, i32* %40, align 4
  br label %47

41:                                               ; preds = %2
  %42 = load i32, i32* @SFE_VENDOR_OPCODE_TUNE_QPSK, align 4
  %43 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %44 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  store i32 %42, i32* %46, align 4
  br label %47

47:                                               ; preds = %41, %35
  %48 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %49 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 24
  %52 = and i32 %51, 255
  %53 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %54 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  store i32 %52, i32* %56, align 4
  %57 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %58 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %59, 16
  %61 = and i32 %60, 255
  %62 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %63 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 5
  store i32 %61, i32* %65, align 4
  %66 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %67 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = ashr i32 %68, 8
  %70 = and i32 %69, 255
  %71 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %72 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 6
  store i32 %70, i32* %74, align 4
  %75 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %76 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 255
  %79 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %80 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 7
  store i32 %78, i32* %82, align 4
  %83 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %84 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sdiv i32 %85, 1000
  %87 = ashr i32 %86, 8
  %88 = and i32 %87, 255
  %89 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %90 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 8
  store i32 %88, i32* %92, align 4
  %93 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %94 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sdiv i32 %95, 1000
  %97 = and i32 %96, 255
  %98 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %99 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 9
  store i32 %97, i32* %101, align 4
  %102 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %103 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  switch i32 %104, label %131 [
    i32 145, label %105
    i32 144, label %110
    i32 143, label %115
    i32 141, label %120
    i32 140, label %125
    i32 142, label %130
    i32 139, label %130
    i32 138, label %130
  ]

105:                                              ; preds = %47
  %106 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %107 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 10
  store i32 1, i32* %109, align 4
  br label %136

110:                                              ; preds = %47
  %111 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %112 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 10
  store i32 2, i32* %114, align 4
  br label %136

115:                                              ; preds = %47
  %116 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %117 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 10
  store i32 3, i32* %119, align 4
  br label %136

120:                                              ; preds = %47
  %121 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %122 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 10
  store i32 4, i32* %124, align 4
  br label %136

125:                                              ; preds = %47
  %126 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %127 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 10
  store i32 5, i32* %129, align 4
  br label %136

130:                                              ; preds = %47, %47, %47
  br label %131

131:                                              ; preds = %47, %130
  %132 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %133 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 10
  store i32 0, i32* %135, align 4
  br label %136

136:                                              ; preds = %131, %125, %120, %115, %110, %105
  %137 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %138 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = icmp eq i32 %139, 255
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %143 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 11
  store i32 255, i32* %145, align 4
  br label %163

146:                                              ; preds = %136
  %147 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %148 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @SEC_VOLTAGE_18, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %146
  %153 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %154 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 11
  store i32 0, i32* %156, align 4
  br label %162

157:                                              ; preds = %146
  %158 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %159 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 11
  store i32 1, i32* %161, align 4
  br label %162

162:                                              ; preds = %157, %152
  br label %163

163:                                              ; preds = %162, %141
  %164 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %165 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, 255
  br i1 %167, label %168, label %173

168:                                              ; preds = %163
  %169 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %170 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 12
  store i32 255, i32* %172, align 4
  br label %190

173:                                              ; preds = %163
  %174 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %175 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @SEC_TONE_ON, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %184

179:                                              ; preds = %173
  %180 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %181 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 12
  store i32 1, i32* %183, align 4
  br label %189

184:                                              ; preds = %173
  %185 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %186 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 12
  store i32 0, i32* %188, align 4
  br label %189

189:                                              ; preds = %184, %179
  br label %190

190:                                              ; preds = %189, %168
  %191 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %192 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @FIREDTV_DVB_S2, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %293

196:                                              ; preds = %190
  %197 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %198 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @SYS_DVBS2, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %279

204:                                              ; preds = %196
  %205 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %206 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  switch i32 %209, label %225 [
    i32 133, label %210
    i32 132, label %215
    i32 134, label %220
  ]

210:                                              ; preds = %204
  %211 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %212 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 13
  store i32 1, i32* %214, align 4
  br label %230

215:                                              ; preds = %204
  %216 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %217 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 13
  store i32 2, i32* %219, align 4
  br label %230

220:                                              ; preds = %204
  %221 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %222 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 13
  store i32 3, i32* %224, align 4
  br label %230

225:                                              ; preds = %204
  %226 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %227 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 13
  store i32 2, i32* %229, align 4
  br label %230

230:                                              ; preds = %225, %220, %215, %210
  %231 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %232 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %231, i32 0, i32 3
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  switch i32 %235, label %252 [
    i32 129, label %236
    i32 131, label %241
    i32 130, label %246
    i32 128, label %251
  ]

236:                                              ; preds = %230
  %237 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %238 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 14
  store i32 2, i32* %240, align 4
  br label %257

241:                                              ; preds = %230
  %242 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %243 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 14
  store i32 0, i32* %245, align 4
  br label %257

246:                                              ; preds = %230
  %247 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %248 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 14
  store i32 1, i32* %250, align 4
  br label %257

251:                                              ; preds = %230
  br label %252

252:                                              ; preds = %230, %251
  %253 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %254 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %253, i32 0, i32 0
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 14
  store i32 2, i32* %256, align 4
  br label %257

257:                                              ; preds = %252, %246, %241, %236
  %258 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %259 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %258, i32 0, i32 3
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 8
  switch i32 %262, label %278 [
    i32 137, label %263
    i32 136, label %268
    i32 135, label %273
  ]

263:                                              ; preds = %257
  %264 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %265 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %264, i32 0, i32 0
  %266 = load i32*, i32** %265, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 15
  store i32 0, i32* %267, align 4
  br label %278

268:                                              ; preds = %257
  %269 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %270 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %269, i32 0, i32 0
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 15
  store i32 0, i32* %272, align 4
  br label %278

273:                                              ; preds = %257
  %274 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %275 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 15
  store i32 1, i32* %277, align 4
  br label %278

278:                                              ; preds = %257, %273, %268, %263
  br label %292

279:                                              ; preds = %196
  %280 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %281 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %280, i32 0, i32 0
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 13
  store i32 1, i32* %283, align 4
  %284 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %285 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %284, i32 0, i32 0
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 14
  store i32 255, i32* %287, align 4
  %288 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %289 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %288, i32 0, i32 0
  %290 = load i32*, i32** %289, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 15
  store i32 255, i32* %291, align 4
  br label %292

292:                                              ; preds = %279, %278
  store i32 16, i32* %3, align 4
  br label %294

293:                                              ; preds = %190
  store i32 13, i32* %3, align 4
  br label %294

294:                                              ; preds = %293, %292
  %295 = load i32, i32* %3, align 4
  ret i32 %295
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
