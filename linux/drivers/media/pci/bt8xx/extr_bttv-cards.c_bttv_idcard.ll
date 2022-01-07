; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_bttv_idcard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_bttv_idcard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32 }
%struct.TYPE_8__ = type { i32*, i32, i32 }
%struct.bttv = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@cards = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [59 x i8] c"%d: detected: %s [card=%d], PCI subsystem ID is %04x:%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%d: subsystem: %04x:%04x (UNKNOWN)\0A\00", align 1
@.str.2 = private unnamed_addr constant [95 x i8] c"please mail id, board name and the correct card= insmod option to linux-media@vger.kernel.org\0A\00", align 1
@card = common dso_local global i64* null, align 8
@bttv_num_tvcards = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"%d: using: %s [card=%d,%s]\0A\00", align 1
@bttv_tvcards = common dso_local global %struct.TYPE_8__* null, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"insmod option\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"autodetected\00", align 1
@UNSET = common dso_local global i32 0, align 4
@audioall = common dso_local global i32 0, align 4
@audiomux = common dso_local global i32* null, align 8
@gpiomask = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"%d: gpio config override: mask=0x%x, mux=\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%s0x%x\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bttv_idcard(%struct.bttv* %0) #0 {
  %2 = alloca %struct.bttv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %2, align 8
  %6 = load %struct.bttv*, %struct.bttv** %2, align 8
  %7 = getelementptr inbounds %struct.bttv, %struct.bttv* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 %11, 16
  %13 = load %struct.bttv*, %struct.bttv** %2, align 8
  %14 = getelementptr inbounds %struct.bttv, %struct.bttv* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.bttv*, %struct.bttv** %2, align 8
  %16 = getelementptr inbounds %struct.bttv, %struct.bttv* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.bttv*, %struct.bttv** %2, align 8
  %22 = getelementptr inbounds %struct.bttv, %struct.bttv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.bttv*, %struct.bttv** %2, align 8
  %26 = getelementptr inbounds %struct.bttv, %struct.bttv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 0, %27
  br i1 %28, label %29, label %116

29:                                               ; preds = %1
  %30 = load %struct.bttv*, %struct.bttv** %2, align 8
  %31 = getelementptr inbounds %struct.bttv, %struct.bttv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 -1, %32
  br i1 %33, label %34, label %116

34:                                               ; preds = %29
  store i32 -1, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %57, %34
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cards, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %35
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cards, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.bttv*, %struct.bttv** %2, align 8
  %51 = getelementptr inbounds %struct.bttv, %struct.bttv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %54, %43
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %35

60:                                               ; preds = %35
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, -1
  br i1 %62, label %63, label %99

63:                                               ; preds = %60
  %64 = load %struct.bttv*, %struct.bttv** %2, align 8
  %65 = getelementptr inbounds %struct.bttv, %struct.bttv* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cards, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cards, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.bttv*, %struct.bttv** %2, align 8
  %81 = getelementptr inbounds %struct.bttv, %struct.bttv* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, 65535
  %84 = load %struct.bttv*, %struct.bttv** %2, align 8
  %85 = getelementptr inbounds %struct.bttv, %struct.bttv* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = ashr i32 %86, 16
  %88 = and i32 %87, 65535
  %89 = call i32 (i8*, i64, i32, ...) @pr_info(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %67, i32 %73, i64 %79, i32 %83, i32 %88)
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cards, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.bttv*, %struct.bttv** %2, align 8
  %97 = getelementptr inbounds %struct.bttv, %struct.bttv* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  store i64 %95, i64* %98, align 8
  br label %115

99:                                               ; preds = %60
  %100 = load %struct.bttv*, %struct.bttv** %2, align 8
  %101 = getelementptr inbounds %struct.bttv, %struct.bttv* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.bttv*, %struct.bttv** %2, align 8
  %105 = getelementptr inbounds %struct.bttv, %struct.bttv* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %106, 65535
  %108 = load %struct.bttv*, %struct.bttv** %2, align 8
  %109 = getelementptr inbounds %struct.bttv, %struct.bttv* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = ashr i32 %110, 16
  %112 = and i32 %111, 65535
  %113 = call i32 (i8*, i64, i32, ...) @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %103, i32 %107, i32 %112)
  %114 = call i32 @pr_debug(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.2, i64 0, i64 0))
  br label %115

115:                                              ; preds = %99, %63
  br label %116

116:                                              ; preds = %115, %29, %1
  %117 = load i64*, i64** @card, align 8
  %118 = load %struct.bttv*, %struct.bttv** %2, align 8
  %119 = getelementptr inbounds %struct.bttv, %struct.bttv* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds i64, i64* %117, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @bttv_num_tvcards, align 8
  %125 = icmp slt i64 %123, %124
  br i1 %125, label %126, label %137

126:                                              ; preds = %116
  %127 = load i64*, i64** @card, align 8
  %128 = load %struct.bttv*, %struct.bttv** %2, align 8
  %129 = getelementptr inbounds %struct.bttv, %struct.bttv* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds i64, i64* %127, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.bttv*, %struct.bttv** %2, align 8
  %135 = getelementptr inbounds %struct.bttv, %struct.bttv* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  store i64 %133, i64* %136, align 8
  br label %137

137:                                              ; preds = %126, %116
  %138 = load %struct.bttv*, %struct.bttv** %2, align 8
  %139 = getelementptr inbounds %struct.bttv, %struct.bttv* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bttv_tvcards, align 8
  %143 = load %struct.bttv*, %struct.bttv** %2, align 8
  %144 = getelementptr inbounds %struct.bttv, %struct.bttv* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.bttv*, %struct.bttv** %2, align 8
  %151 = getelementptr inbounds %struct.bttv, %struct.bttv* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64*, i64** @card, align 8
  %155 = load %struct.bttv*, %struct.bttv** %2, align 8
  %156 = getelementptr inbounds %struct.bttv, %struct.bttv* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds i64, i64* %154, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @bttv_num_tvcards, align 8
  %162 = icmp slt i64 %160, %161
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0)
  %165 = call i32 (i8*, i64, i32, ...) @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %141, i32 %149, i64 %153, i8* %164)
  %166 = load i32, i32* @UNSET, align 4
  %167 = load i32, i32* @audioall, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %137
  %170 = load i32, i32* @UNSET, align 4
  %171 = load i32*, i32** @audiomux, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp eq i32 %170, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  br label %304

176:                                              ; preds = %169, %137
  %177 = load i32, i32* @UNSET, align 4
  %178 = load i32*, i32** @audiomux, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %177, %180
  br i1 %181, label %182, label %218

182:                                              ; preds = %176
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %183

183:                                              ; preds = %214, %182
  %184 = load i32, i32* %4, align 4
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bttv_tvcards, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = call i32 @ARRAY_SIZE(i32* %187)
  %189 = icmp slt i32 %184, %188
  br i1 %189, label %190, label %217

190:                                              ; preds = %183
  %191 = load i32*, i32** @audiomux, align 8
  %192 = load i32, i32* %4, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bttv_tvcards, align 8
  %197 = load %struct.bttv*, %struct.bttv** %2, align 8
  %198 = getelementptr inbounds %struct.bttv, %struct.bttv* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %4, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  store i32 %195, i32* %206, align 4
  %207 = load i32*, i32** @audiomux, align 8
  %208 = load i32, i32* %4, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %3, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %3, align 4
  br label %214

214:                                              ; preds = %190
  %215 = load i32, i32* %4, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %4, align 4
  br label %183

217:                                              ; preds = %183
  br label %244

218:                                              ; preds = %176
  %219 = load i32, i32* @audioall, align 4
  store i32 %219, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %220

220:                                              ; preds = %240, %218
  %221 = load i32, i32* %4, align 4
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bttv_tvcards, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = call i32 @ARRAY_SIZE(i32* %224)
  %226 = icmp slt i32 %221, %225
  br i1 %226, label %227, label %243

227:                                              ; preds = %220
  %228 = load i32, i32* @audioall, align 4
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bttv_tvcards, align 8
  %230 = load %struct.bttv*, %struct.bttv** %2, align 8
  %231 = getelementptr inbounds %struct.bttv, %struct.bttv* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %4, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  store i32 %228, i32* %239, align 4
  br label %240

240:                                              ; preds = %227
  %241 = load i32, i32* %4, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %4, align 4
  br label %220

243:                                              ; preds = %220
  br label %244

244:                                              ; preds = %243, %217
  %245 = load i32, i32* @UNSET, align 4
  %246 = load i32, i32* @gpiomask, align 4
  %247 = icmp ne i32 %245, %246
  br i1 %247, label %248, label %250

248:                                              ; preds = %244
  %249 = load i32, i32* @gpiomask, align 4
  br label %252

250:                                              ; preds = %244
  %251 = load i32, i32* %3, align 4
  br label %252

252:                                              ; preds = %250, %248
  %253 = phi i32 [ %249, %248 ], [ %251, %250 ]
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bttv_tvcards, align 8
  %255 = load %struct.bttv*, %struct.bttv** %2, align 8
  %256 = getelementptr inbounds %struct.bttv, %struct.bttv* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 1
  store i32 %253, i32* %260, align 8
  %261 = load %struct.bttv*, %struct.bttv** %2, align 8
  %262 = getelementptr inbounds %struct.bttv, %struct.bttv* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bttv_tvcards, align 8
  %266 = load %struct.bttv*, %struct.bttv** %2, align 8
  %267 = getelementptr inbounds %struct.bttv, %struct.bttv* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = call i32 (i8*, i64, i32, ...) @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i64 %264, i32 %272)
  store i32 0, i32* %4, align 4
  br label %274

274:                                              ; preds = %299, %252
  %275 = load i32, i32* %4, align 4
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bttv_tvcards, align 8
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 0
  %278 = load i32*, i32** %277, align 8
  %279 = call i32 @ARRAY_SIZE(i32* %278)
  %280 = icmp slt i32 %275, %279
  br i1 %280, label %281, label %302

281:                                              ; preds = %274
  %282 = load i32, i32* %4, align 4
  %283 = icmp ne i32 %282, 0
  %284 = zext i1 %283 to i64
  %285 = select i1 %283, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %286 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bttv_tvcards, align 8
  %287 = load %struct.bttv*, %struct.bttv** %2, align 8
  %288 = getelementptr inbounds %struct.bttv, %struct.bttv* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 1
  %290 = load i64, i64* %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 0
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %4, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %285, i32 %297)
  br label %299

299:                                              ; preds = %281
  %300 = load i32, i32* %4, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %4, align 4
  br label %274

302:                                              ; preds = %274
  %303 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %304

304:                                              ; preds = %302, %175
  ret void
}

declare dso_local i32 @pr_info(i8*, i64, i32, ...) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
