; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_attach_malloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_attach_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.TYPE_6__*, %struct.brcms_band**, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32* }
%struct.brcms_band = type { i32 }
%struct.TYPE_5__ = type { %struct.brcms_hw_band**, %struct.brcms_c_info* }
%struct.brcms_hw_band = type { i32 }
%struct.TYPE_4__ = type { %struct.brcms_c_info* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@MAXBANDS = common dso_local global i32 0, align 4
@BRCMS_MAXMODULES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.brcms_c_info* (i32, i32*, i32)* @brcms_c_attach_malloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.brcms_c_info* @brcms_c_attach_malloc(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.brcms_c_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.brcms_c_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call i8* @kzalloc(i32 72, i32 %11)
  %13 = bitcast i8* %12 to %struct.brcms_c_info*
  store %struct.brcms_c_info* %13, %struct.brcms_c_info** %8, align 8
  %14 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %15 = icmp eq %struct.brcms_c_info* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  store i32 1002, i32* %17, align 4
  br label %238

18:                                               ; preds = %3
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call i8* @kzalloc(i32 4, i32 %19)
  %21 = bitcast i8* %20 to %struct.TYPE_4__*
  %22 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %23 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %22, i32 0, i32 8
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %23, align 8
  %24 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %25 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %24, i32 0, i32 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = icmp eq %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32*, i32** %6, align 8
  store i32 1003, i32* %29, align 4
  br label %238

30:                                               ; preds = %18
  %31 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %32 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %33 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %32, i32 0, i32 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store %struct.brcms_c_info* %31, %struct.brcms_c_info** %35, align 8
  %36 = load i32, i32* @GFP_ATOMIC, align 4
  %37 = call i8* @kzalloc(i32 4, i32 %36)
  %38 = bitcast i8* %37 to %struct.TYPE_5__*
  %39 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %40 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %39, i32 0, i32 7
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %40, align 8
  %41 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %42 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %41, i32 0, i32 7
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = icmp eq %struct.TYPE_5__* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = load i32*, i32** %6, align 8
  store i32 1005, i32* %46, align 4
  br label %238

47:                                               ; preds = %30
  %48 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %49 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %50 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %49, i32 0, i32 7
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store %struct.brcms_c_info* %48, %struct.brcms_c_info** %52, align 8
  %53 = load i32, i32* @MAXBANDS, align 4
  %54 = load i32, i32* @GFP_ATOMIC, align 4
  %55 = call i8* @kcalloc(i32 %53, i32 4, i32 %54)
  %56 = bitcast i8* %55 to %struct.brcms_hw_band*
  %57 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %58 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %57, i32 0, i32 7
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load %struct.brcms_hw_band**, %struct.brcms_hw_band*** %60, align 8
  %62 = getelementptr inbounds %struct.brcms_hw_band*, %struct.brcms_hw_band** %61, i64 0
  store %struct.brcms_hw_band* %56, %struct.brcms_hw_band** %62, align 8
  %63 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %64 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %63, i32 0, i32 7
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load %struct.brcms_hw_band**, %struct.brcms_hw_band*** %66, align 8
  %68 = getelementptr inbounds %struct.brcms_hw_band*, %struct.brcms_hw_band** %67, i64 0
  %69 = load %struct.brcms_hw_band*, %struct.brcms_hw_band** %68, align 8
  %70 = icmp eq %struct.brcms_hw_band* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %47
  %72 = load i32*, i32** %6, align 8
  store i32 1006, i32* %72, align 4
  br label %238

73:                                               ; preds = %47
  store i32 1, i32* %9, align 4
  br label %74

74:                                               ; preds = %100, %73
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @MAXBANDS, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %103

78:                                               ; preds = %74
  %79 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %80 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %79, i32 0, i32 7
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load %struct.brcms_hw_band**, %struct.brcms_hw_band*** %82, align 8
  %84 = getelementptr inbounds %struct.brcms_hw_band*, %struct.brcms_hw_band** %83, i64 0
  %85 = load %struct.brcms_hw_band*, %struct.brcms_hw_band** %84, align 8
  %86 = ptrtoint %struct.brcms_hw_band* %85 to i64
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 4, %88
  %90 = add i64 %86, %89
  %91 = inttoptr i64 %90 to %struct.brcms_hw_band*
  %92 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %93 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %92, i32 0, i32 7
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load %struct.brcms_hw_band**, %struct.brcms_hw_band*** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.brcms_hw_band*, %struct.brcms_hw_band** %96, i64 %98
  store %struct.brcms_hw_band* %91, %struct.brcms_hw_band** %99, align 8
  br label %100

100:                                              ; preds = %78
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %74

103:                                              ; preds = %74
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* @BRCMS_MAXMODULES, align 4
  %106 = load i32, i32* @GFP_ATOMIC, align 4
  %107 = call i8* @kcalloc(i32 %105, i32 4, i32 %106)
  %108 = bitcast i8* %107 to i32*
  %109 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %110 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %109, i32 0, i32 6
  store i32* %108, i32** %110, align 8
  %111 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %112 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %111, i32 0, i32 6
  %113 = load i32*, i32** %112, align 8
  %114 = icmp eq i32* %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %104
  %116 = load i32*, i32** %6, align 8
  store i32 1009, i32* %116, align 4
  br label %238

117:                                              ; preds = %104
  %118 = load i32, i32* @GFP_ATOMIC, align 4
  %119 = call i8* @kzalloc(i32 4, i32 %118)
  %120 = bitcast i8* %119 to i32*
  %121 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %122 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %121, i32 0, i32 5
  store i32* %120, i32** %122, align 8
  %123 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %124 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %123, i32 0, i32 5
  %125 = load i32*, i32** %124, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %117
  %128 = load i32*, i32** %6, align 8
  store i32 1010, i32* %128, align 4
  br label %238

129:                                              ; preds = %117
  %130 = load i32, i32* %5, align 4
  %131 = call i32* @brcms_c_bsscfg_malloc(i32 %130)
  %132 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %133 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %132, i32 0, i32 4
  store i32* %131, i32** %133, align 8
  %134 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %135 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %129
  %139 = load i32*, i32** %6, align 8
  store i32 1011, i32* %139, align 4
  br label %238

140:                                              ; preds = %129
  %141 = load i32, i32* @GFP_ATOMIC, align 4
  %142 = call i8* @kzalloc(i32 4, i32 %141)
  %143 = bitcast i8* %142 to i32*
  %144 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %145 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %144, i32 0, i32 3
  store i32* %143, i32** %145, align 8
  %146 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %147 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %146, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  %149 = icmp eq i32* %148, null
  br i1 %149, label %150, label %152

150:                                              ; preds = %140
  %151 = load i32*, i32** %6, align 8
  store i32 1016, i32* %151, align 4
  br label %238

152:                                              ; preds = %140
  %153 = load i32, i32* @GFP_ATOMIC, align 4
  %154 = call i8* @kzalloc(i32 4, i32 %153)
  %155 = bitcast i8* %154 to i32*
  %156 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %157 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %156, i32 0, i32 2
  store i32* %155, i32** %157, align 8
  %158 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %159 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = icmp eq i32* %160, null
  br i1 %161, label %162, label %164

162:                                              ; preds = %152
  %163 = load i32*, i32** %6, align 8
  store i32 1017, i32* %163, align 4
  br label %238

164:                                              ; preds = %152
  %165 = load i32, i32* @MAXBANDS, align 4
  %166 = load i32, i32* @GFP_ATOMIC, align 4
  %167 = call i8* @kcalloc(i32 %165, i32 4, i32 %166)
  %168 = bitcast i8* %167 to %struct.brcms_band*
  %169 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %170 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %169, i32 0, i32 1
  %171 = load %struct.brcms_band**, %struct.brcms_band*** %170, align 8
  %172 = getelementptr inbounds %struct.brcms_band*, %struct.brcms_band** %171, i64 0
  store %struct.brcms_band* %168, %struct.brcms_band** %172, align 8
  %173 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %174 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %173, i32 0, i32 1
  %175 = load %struct.brcms_band**, %struct.brcms_band*** %174, align 8
  %176 = getelementptr inbounds %struct.brcms_band*, %struct.brcms_band** %175, i64 0
  %177 = load %struct.brcms_band*, %struct.brcms_band** %176, align 8
  %178 = icmp eq %struct.brcms_band* %177, null
  br i1 %178, label %179, label %181

179:                                              ; preds = %164
  %180 = load i32*, i32** %6, align 8
  store i32 1025, i32* %180, align 4
  br label %238

181:                                              ; preds = %164
  store i32 1, i32* %10, align 4
  br label %182

182:                                              ; preds = %204, %181
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* @MAXBANDS, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %207

186:                                              ; preds = %182
  %187 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %188 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %187, i32 0, i32 1
  %189 = load %struct.brcms_band**, %struct.brcms_band*** %188, align 8
  %190 = getelementptr inbounds %struct.brcms_band*, %struct.brcms_band** %189, i64 0
  %191 = load %struct.brcms_band*, %struct.brcms_band** %190, align 8
  %192 = ptrtoint %struct.brcms_band* %191 to i64
  %193 = load i32, i32* %10, align 4
  %194 = sext i32 %193 to i64
  %195 = mul i64 4, %194
  %196 = add i64 %192, %195
  %197 = inttoptr i64 %196 to %struct.brcms_band*
  %198 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %199 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %198, i32 0, i32 1
  %200 = load %struct.brcms_band**, %struct.brcms_band*** %199, align 8
  %201 = load i32, i32* %10, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.brcms_band*, %struct.brcms_band** %200, i64 %202
  store %struct.brcms_band* %197, %struct.brcms_band** %203, align 8
  br label %204

204:                                              ; preds = %186
  %205 = load i32, i32* %10, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %10, align 4
  br label %182

207:                                              ; preds = %182
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* @GFP_ATOMIC, align 4
  %210 = call i8* @kzalloc(i32 4, i32 %209)
  %211 = bitcast i8* %210 to %struct.TYPE_6__*
  %212 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %213 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %212, i32 0, i32 0
  store %struct.TYPE_6__* %211, %struct.TYPE_6__** %213, align 8
  %214 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %215 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %214, i32 0, i32 0
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %215, align 8
  %217 = icmp eq %struct.TYPE_6__* %216, null
  br i1 %217, label %218, label %220

218:                                              ; preds = %208
  %219 = load i32*, i32** %6, align 8
  store i32 1026, i32* %219, align 4
  br label %238

220:                                              ; preds = %208
  %221 = load i32, i32* @GFP_ATOMIC, align 4
  %222 = call i8* @kzalloc(i32 4, i32 %221)
  %223 = bitcast i8* %222 to i32*
  %224 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %225 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %224, i32 0, i32 0
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  store i32* %223, i32** %227, align 8
  %228 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %229 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %228, i32 0, i32 0
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = icmp eq i32* %232, null
  br i1 %233, label %234, label %236

234:                                              ; preds = %220
  %235 = load i32*, i32** %6, align 8
  store i32 1027, i32* %235, align 4
  br label %238

236:                                              ; preds = %220
  %237 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  store %struct.brcms_c_info* %237, %struct.brcms_c_info** %4, align 8
  br label %241

238:                                              ; preds = %234, %218, %179, %162, %150, %138, %127, %115, %71, %45, %28, %16
  %239 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %240 = call i32 @brcms_c_detach_mfree(%struct.brcms_c_info* %239)
  store %struct.brcms_c_info* null, %struct.brcms_c_info** %4, align 8
  br label %241

241:                                              ; preds = %238, %236
  %242 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  ret %struct.brcms_c_info* %242
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32* @brcms_c_bsscfg_malloc(i32) #1

declare dso_local i32 @brcms_c_detach_mfree(%struct.brcms_c_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
