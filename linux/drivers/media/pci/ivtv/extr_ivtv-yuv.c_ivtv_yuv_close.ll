; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-yuv.c_ivtv_yuv_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-yuv.c_ivtv_yuv_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32, i32, i32, i32, %struct.yuv_playback_info }
%struct.yuv_playback_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32*, i32, i32, i64 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"ivtv_yuv_close\0A\00", align 1
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@IVTV_F_I_DECODING_YUV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ivtv_yuv_close(%struct.ivtv* %0) #0 {
  %2 = alloca %struct.ivtv*, align 8
  %3 = alloca %struct.yuv_playback_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %2, align 8
  %7 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %8 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %7, i32 0, i32 4
  store %struct.yuv_playback_info* %8, %struct.yuv_playback_info** %3, align 8
  %9 = call i32 @IVTV_DEBUG_YUV(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %11 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %10, i32 0, i32 2
  %12 = call i32 @mutex_unlock(i32* %11)
  %13 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %14 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %13, i32 0, i32 3
  %15 = call i32 @ivtv_waitq(i32* %14)
  %16 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %17 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %16, i32 0, i32 2
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %20 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %19, i32 0, i32 43
  store i64 0, i64* %20, align 8
  %21 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %22 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %21, i32 0, i32 42
  %23 = call i32 @atomic_set(i32* %22, i32 -1)
  %24 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %25 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %24, i32 0, i32 41
  %26 = call i32 @atomic_set(i32* %25, i32 0)
  %27 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %28 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, 16777216
  %31 = call i32 @write_reg(i32 %30, i32 10392)
  %32 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %33 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @write_reg(i32 %34, i32 10292)
  %36 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %37 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @write_reg(i32 %38, i32 10296)
  %40 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %41 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @write_reg(i32 %42, i32 10300)
  %44 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %45 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @write_reg(i32 %46, i32 10304)
  %48 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %49 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @write_reg(i32 %50, i32 10308)
  %52 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %53 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @write_reg(i32 %54, i32 10312)
  %56 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %57 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @write_reg(i32 %58, i32 10324)
  %60 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %61 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @write_reg(i32 %62, i32 10332)
  %64 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %65 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %64, i32 0, i32 9
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @write_reg(i32 %66, i32 10340)
  %68 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %69 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %68, i32 0, i32 10
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @write_reg(i32 %70, i32 10352)
  %72 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %73 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %72, i32 0, i32 11
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @write_reg(i32 %74, i32 10356)
  %76 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %77 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %76, i32 0, i32 12
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @write_reg(i32 %78, i32 10384)
  %80 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %81 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %80, i32 0, i32 13
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @write_reg(i32 %82, i32 10396)
  %84 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %85 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %84, i32 0, i32 14
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @write_reg(i32 %86, i32 10520)
  %88 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %89 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %88, i32 0, i32 15
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @write_reg(i32 %90, i32 10524)
  %92 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %93 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %92, i32 0, i32 16
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @write_reg(i32 %94, i32 10528)
  %96 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %97 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %96, i32 0, i32 17
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @write_reg(i32 %98, i32 10532)
  %100 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %101 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %100, i32 0, i32 18
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @write_reg(i32 %102, i32 10536)
  %104 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %105 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %104, i32 0, i32 19
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @write_reg(i32 %106, i32 10540)
  %108 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %109 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %108, i32 0, i32 20
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @write_reg(i32 %110, i32 10544)
  %112 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %113 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %112, i32 0, i32 21
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @write_reg(i32 %114, i32 10548)
  %116 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %117 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %116, i32 0, i32 22
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @write_reg(i32 %118, i32 10552)
  %120 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %121 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %120, i32 0, i32 23
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @write_reg(i32 %122, i32 10556)
  %124 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %125 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %124, i32 0, i32 24
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @write_reg(i32 %126, i32 10560)
  %128 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %129 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %128, i32 0, i32 25
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @write_reg(i32 %130, i32 10564)
  %132 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %133 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %132, i32 0, i32 26
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @write_reg(i32 %134, i32 10568)
  %136 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %137 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %136, i32 0, i32 27
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @write_reg(i32 %138, i32 10572)
  %140 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %141 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %140, i32 0, i32 28
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @write_reg(i32 %142, i32 10576)
  %144 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %145 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %144, i32 0, i32 29
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @write_reg(i32 %146, i32 10580)
  %148 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %149 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %148, i32 0, i32 30
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @write_reg(i32 %150, i32 10584)
  %152 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %153 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %152, i32 0, i32 31
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @write_reg(i32 %154, i32 10588)
  %156 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %157 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %156, i32 0, i32 32
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @write_reg(i32 %158, i32 10592)
  %160 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %161 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %160, i32 0, i32 33
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @write_reg(i32 %162, i32 10596)
  %164 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %165 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %164, i32 0, i32 34
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @write_reg(i32 %166, i32 10600)
  %168 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %169 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %168, i32 0, i32 35
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @write_reg(i32 %170, i32 10604)
  %172 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %173 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %172, i32 0, i32 36
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @write_reg(i32 %174, i32 10608)
  %176 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %177 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = and i32 %178, 65535
  %180 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %181 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = ashr i32 %182, 16
  %184 = icmp eq i32 %179, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %1
  store i32 0, i32* %4, align 4
  br label %208

186:                                              ; preds = %1
  %187 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %188 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = shl i32 %189, 16
  %191 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %192 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = ashr i32 %193, 16
  %195 = sdiv i32 %190, %194
  %196 = ashr i32 %195, 15
  store i32 %196, i32* %4, align 4
  %197 = load i32, i32* %4, align 4
  %198 = ashr i32 %197, 1
  %199 = load i32, i32* %4, align 4
  %200 = and i32 %199, 1
  %201 = add nsw i32 %198, %200
  store i32 %201, i32* %4, align 4
  %202 = load i32, i32* %4, align 4
  %203 = icmp ne i32 %202, 0
  %204 = xor i1 %203, true
  %205 = zext i1 %204 to i32
  %206 = load i32, i32* %4, align 4
  %207 = add nsw i32 %206, %205
  store i32 %207, i32* %4, align 4
  br label %208

208:                                              ; preds = %186, %185
  %209 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %210 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %209, i32 0, i32 14
  %211 = load i32, i32* %210, align 8
  %212 = and i32 %211, 65535
  %213 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %214 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %213, i32 0, i32 14
  %215 = load i32, i32* %214, align 8
  %216 = ashr i32 %215, 16
  %217 = icmp eq i32 %212, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %208
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %242

219:                                              ; preds = %208
  %220 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %221 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %220, i32 0, i32 14
  %222 = load i32, i32* %221, align 8
  %223 = shl i32 %222, 16
  %224 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %225 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %224, i32 0, i32 14
  %226 = load i32, i32* %225, align 8
  %227 = ashr i32 %226, 16
  %228 = sdiv i32 %223, %227
  %229 = ashr i32 %228, 15
  store i32 %229, i32* %5, align 4
  %230 = load i32, i32* %5, align 4
  %231 = ashr i32 %230, 1
  %232 = load i32, i32* %5, align 4
  %233 = and i32 %232, 1
  %234 = add nsw i32 %231, %233
  store i32 %234, i32* %5, align 4
  %235 = load i32, i32* %5, align 4
  %236 = icmp ne i32 %235, 0
  %237 = xor i1 %236, true
  %238 = zext i1 %237 to i32
  %239 = load i32, i32* %5, align 4
  %240 = add nsw i32 %239, %238
  store i32 %240, i32* %5, align 4
  %241 = load i32, i32* %5, align 4
  store i32 %241, i32* %6, align 4
  br label %242

242:                                              ; preds = %219, %218
  %243 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %244 = load i32, i32* %4, align 4
  %245 = load i32, i32* %5, align 4
  %246 = load i32, i32* %6, align 4
  %247 = call i32 @ivtv_yuv_filter(%struct.ivtv* %243, i32 %244, i32 %245, i32 %246)
  %248 = call i32 @write_reg(i32 0, i32 10260)
  %249 = call i32 @write_reg(i32 0, i32 10284)
  %250 = call i32 @write_reg(i32 0, i32 10500)
  %251 = call i32 @write_reg(i32 0, i32 10512)
  %252 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %253 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %252, i32 0, i32 40
  %254 = load i32*, i32** %253, align 8
  %255 = icmp ne i32* %254, null
  br i1 %255, label %256, label %271

256:                                              ; preds = %242
  %257 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %258 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %257, i32 0, i32 40
  %259 = load i32*, i32** %258, align 8
  %260 = call i32 @kfree(i32* %259)
  %261 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %262 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %261, i32 0, i32 40
  store i32* null, i32** %262, align 8
  %263 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %264 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %267 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %266, i32 0, i32 39
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %270 = call i32 @pci_unmap_single(i32 %265, i32 %268, i32 11520, i32 %269)
  br label %271

271:                                              ; preds = %256, %242
  %272 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %273 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %272, i32 0, i32 38
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 1
  store i64 0, i64* %274, align 8
  %275 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %276 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %275, i32 0, i32 38
  %277 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %276, i32 0, i32 0
  store i64 0, i64* %277, align 8
  %278 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %279 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %278, i32 0, i32 37
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 1
  store i64 0, i64* %280, align 8
  %281 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %282 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %281, i32 0, i32 37
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 0
  store i64 0, i64* %283, align 8
  %284 = load i32, i32* @IVTV_F_I_DECODING_YUV, align 4
  %285 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %286 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %285, i32 0, i32 0
  %287 = call i32 @clear_bit(i32 %284, i32* %286)
  ret void
}

declare dso_local i32 @IVTV_DEBUG_YUV(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ivtv_waitq(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @write_reg(i32, i32) #1

declare dso_local i32 @ivtv_yuv_filter(%struct.ivtv*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
