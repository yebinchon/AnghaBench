; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_read_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_read_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio = type { i64, i64, i64, i64, i32, i32*, i32*, %struct.TYPE_5__, %struct.TYPE_6__*, i32*, i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@SDIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@BRCMF_FIRSTREAD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"%d-byte control read exceeds %d-byte buffer\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"%d-byte ctl frame (%d-byte ctl data) exceeds %d-byte limit\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"read %d control bytes failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"RxCtrl:\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"last control frame is being processed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_sdio*, i32*, i64, i64)* @brcmf_sdio_read_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_sdio_read_control(%struct.brcmf_sdio* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.brcmf_sdio*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.brcmf_sdio* %0, %struct.brcmf_sdio** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32* null, i32** %11, align 8
  %14 = load i32, i32* @SDIO, align 4
  %15 = call i32 @brcmf_dbg(i32 %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %17 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %16, i32 0, i32 10
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %22 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %21, i32 0, i32 10
  %23 = load i64, i64* %22, align 8
  %24 = call i32* @vzalloc(i64 %23)
  store i32* %24, i32** %11, align 8
  br label %25

25:                                               ; preds = %20, %4
  %26 = load i32*, i32** %11, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  br label %267

29:                                               ; preds = %25
  %30 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %31 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %30, i32 0, i32 9
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %12, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = ptrtoint i32* %33 to i64
  %35 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %36 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = urem i64 %34, %37
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %29
  %42 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %43 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %10, align 8
  %46 = sub i64 %44, %45
  %47 = load i32*, i32** %12, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 %46
  store i32* %48, i32** %12, align 8
  br label %49

49:                                               ; preds = %41, %29
  %50 = load i32*, i32** %11, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i64, i64* @BRCMF_FIRSTREAD, align 8
  %53 = call i32 @memcpy(i32* %50, i32* %51, i64 %52)
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* @BRCMF_FIRSTREAD, align 8
  %56 = icmp sle i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %224

58:                                               ; preds = %49
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* @BRCMF_FIRSTREAD, align 8
  %61 = sub nsw i64 %59, %60
  store i64 %61, i64* %9, align 8
  %62 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %63 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %115

66:                                               ; preds = %58
  %67 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %68 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %115

71:                                               ; preds = %66
  %72 = load i64, i64* %9, align 8
  %73 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %74 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %72, %75
  br i1 %76, label %77, label %115

77:                                               ; preds = %71
  %78 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %79 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %83 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = srem i64 %81, %84
  %86 = sub nsw i64 %80, %85
  store i64 %86, i64* %10, align 8
  %87 = load i64, i64* %10, align 8
  %88 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %89 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp sle i64 %87, %90
  br i1 %91, label %92, label %114

92:                                               ; preds = %77
  %93 = load i64, i64* %10, align 8
  %94 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %95 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp slt i64 %93, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %92
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* %10, align 8
  %101 = add nsw i64 %99, %100
  %102 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %103 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %102, i32 0, i32 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp slt i64 %101, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %98
  %111 = load i64, i64* %10, align 8
  %112 = load i64, i64* %9, align 8
  %113 = add nsw i64 %112, %111
  store i64 %113, i64* %9, align 8
  br label %114

114:                                              ; preds = %110, %98, %92, %77
  br label %135

115:                                              ; preds = %71, %66, %58
  %116 = load i64, i64* %9, align 8
  %117 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %118 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = urem i64 %116, %119
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %115
  %123 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %124 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %9, align 8
  %127 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %128 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = urem i64 %126, %129
  %131 = sub i64 %125, %130
  %132 = load i64, i64* %9, align 8
  %133 = add i64 %132, %131
  store i64 %133, i64* %9, align 8
  br label %134

134:                                              ; preds = %122, %115
  br label %135

135:                                              ; preds = %134, %114
  %136 = load i64, i64* %9, align 8
  %137 = load i64, i64* @BRCMF_FIRSTREAD, align 8
  %138 = add nsw i64 %136, %137
  %139 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %140 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %139, i32 0, i32 8
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp sgt i64 %138, %145
  br i1 %146, label %147, label %159

147:                                              ; preds = %135
  %148 = load i64, i64* %9, align 8
  %149 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %150 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %149, i32 0, i32 8
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %148, i64 %155)
  %157 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %158 = call i32 @brcmf_sdio_rxfail(%struct.brcmf_sdio* %157, i32 0, i32 0)
  br label %267

159:                                              ; preds = %135
  %160 = load i64, i64* %7, align 8
  %161 = load i64, i64* %8, align 8
  %162 = sub nsw i64 %160, %161
  %163 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %164 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %163, i32 0, i32 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp sgt i64 %162, %169
  br i1 %170, label %171, label %191

171:                                              ; preds = %159
  %172 = load i64, i64* %7, align 8
  %173 = load i64, i64* %7, align 8
  %174 = load i64, i64* %8, align 8
  %175 = sub nsw i64 %173, %174
  %176 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %177 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %176, i32 0, i32 8
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i64 %172, i64 %175, i64 %182)
  %184 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %185 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %184, i32 0, i32 7
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %186, align 8
  %189 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %190 = call i32 @brcmf_sdio_rxfail(%struct.brcmf_sdio* %189, i32 0, i32 0)
  br label %267

191:                                              ; preds = %159
  %192 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %193 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %192, i32 0, i32 8
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %193, align 8
  %195 = load i32*, i32** %12, align 8
  %196 = load i64, i64* %9, align 8
  %197 = call i32 @brcmf_sdiod_recv_buf(%struct.TYPE_6__* %194, i32* %195, i64 %196)
  store i32 %197, i32* %13, align 4
  %198 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %199 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %198, i32 0, i32 7
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %200, align 4
  %203 = load i32, i32* %13, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %216

205:                                              ; preds = %191
  %206 = load i64, i64* %9, align 8
  %207 = load i32, i32* %13, align 4
  %208 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %206, i32 %207)
  %209 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %210 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %209, i32 0, i32 7
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %211, align 8
  %214 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %215 = call i32 @brcmf_sdio_rxfail(%struct.brcmf_sdio* %214, i32 1, i32 1)
  br label %267

216:                                              ; preds = %191
  %217 = load i32*, i32** %11, align 8
  %218 = load i64, i64* @BRCMF_FIRSTREAD, align 8
  %219 = getelementptr inbounds i32, i32* %217, i64 %218
  %220 = load i32*, i32** %12, align 8
  %221 = load i64, i64* %9, align 8
  %222 = call i32 @memcpy(i32* %219, i32* %220, i64 %221)
  br label %223

223:                                              ; preds = %216
  br label %224

224:                                              ; preds = %223, %57
  %225 = call i64 (...) @BRCMF_BYTES_ON()
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = call i64 (...) @BRCMF_CTL_ON()
  %229 = icmp ne i64 %228, 0
  br label %230

230:                                              ; preds = %227, %224
  %231 = phi i1 [ false, %224 ], [ %229, %227 ]
  %232 = zext i1 %231 to i32
  %233 = load i32*, i32** %11, align 8
  %234 = load i64, i64* %7, align 8
  %235 = call i32 @brcmf_dbg_hex_dump(i32 %232, i32* %233, i64 %234, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %236 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %237 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %236, i32 0, i32 4
  %238 = call i32 @spin_lock_bh(i32* %237)
  %239 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %240 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %239, i32 0, i32 6
  %241 = load i32*, i32** %240, align 8
  %242 = icmp ne i32* %241, null
  br i1 %242, label %243, label %250

243:                                              ; preds = %230
  %244 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %245 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %246 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %245, i32 0, i32 4
  %247 = call i32 @spin_unlock_bh(i32* %246)
  %248 = load i32*, i32** %11, align 8
  %249 = call i32 @vfree(i32* %248)
  br label %267

250:                                              ; preds = %230
  %251 = load i32*, i32** %11, align 8
  %252 = load i64, i64* %8, align 8
  %253 = getelementptr inbounds i32, i32* %251, i64 %252
  %254 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %255 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %254, i32 0, i32 6
  store i32* %253, i32** %255, align 8
  %256 = load i32*, i32** %11, align 8
  %257 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %258 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %257, i32 0, i32 5
  store i32* %256, i32** %258, align 8
  %259 = load i64, i64* %7, align 8
  %260 = load i64, i64* %8, align 8
  %261 = sub nsw i64 %259, %260
  %262 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %263 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %262, i32 0, i32 3
  store i64 %261, i64* %263, align 8
  %264 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %265 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %264, i32 0, i32 4
  %266 = call i32 @spin_unlock_bh(i32* %265)
  br label %267

267:                                              ; preds = %250, %243, %205, %171, %147, %28
  %268 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %269 = call i32 @brcmf_sdio_dcmd_resp_wake(%struct.brcmf_sdio* %268)
  ret void
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32* @vzalloc(i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @brcmf_err(i8*, ...) #1

declare dso_local i32 @brcmf_sdio_rxfail(%struct.brcmf_sdio*, i32, i32) #1

declare dso_local i32 @brcmf_sdiod_recv_buf(%struct.TYPE_6__*, i32*, i64) #1

declare dso_local i32 @brcmf_dbg_hex_dump(i32, i32*, i64, i8*) #1

declare dso_local i64 @BRCMF_BYTES_ON(...) #1

declare dso_local i64 @BRCMF_CTL_ON(...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @brcmf_sdio_dcmd_resp_wake(%struct.brcmf_sdio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
