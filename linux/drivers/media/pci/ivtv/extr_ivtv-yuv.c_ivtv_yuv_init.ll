; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-yuv.c_ivtv_yuv_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-yuv.c_ivtv_yuv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32, i32, i32, %struct.yuv_playback_info }
%struct.yuv_playback_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"ivtv_yuv_init\0A\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"Clipping yuv output - fb size (%d) exceeds video standard limit (%d)\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to allocate yuv blanking buffer\0A\00", align 1
@IVTV_REG_VDM = common dso_local global i32 0, align 4
@IVTV_F_I_DECODING_YUV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivtv*)* @ivtv_yuv_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivtv_yuv_init(%struct.ivtv* %0) #0 {
  %2 = alloca %struct.ivtv*, align 8
  %3 = alloca %struct.yuv_playback_info*, align 8
  store %struct.ivtv* %0, %struct.ivtv** %2, align 8
  %4 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %5 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %4, i32 0, i32 3
  store %struct.yuv_playback_info* %5, %struct.yuv_playback_info** %3, align 8
  %6 = call i32 @IVTV_DEBUG_YUV(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @read_reg(i32 10292)
  %8 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %9 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = call i32 @read_reg(i32 10296)
  %11 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %12 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = call i32 @read_reg(i32 10300)
  %14 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %15 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = call i32 @read_reg(i32 10304)
  %17 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %18 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = call i32 @read_reg(i32 10308)
  %20 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %21 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = call i32 @read_reg(i32 10312)
  %23 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %24 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 4
  %25 = call i32 @read_reg(i32 10324)
  %26 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %27 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 8
  %28 = call i32 @read_reg(i32 10332)
  %29 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %30 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 4
  %31 = call i32 @read_reg(i32 10340)
  %32 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %33 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %32, i32 0, i32 8
  store i32 %31, i32* %33, align 8
  %34 = call i32 @read_reg(i32 10352)
  %35 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %36 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %35, i32 0, i32 9
  store i32 %34, i32* %36, align 4
  %37 = call i32 @read_reg(i32 10356)
  %38 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %39 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %38, i32 0, i32 10
  store i32 %37, i32* %39, align 8
  %40 = call i32 @read_reg(i32 10392)
  %41 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %42 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %41, i32 0, i32 11
  store i32 %40, i32* %42, align 4
  %43 = call i32 @read_reg(i32 10384)
  %44 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %45 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %44, i32 0, i32 12
  store i32 %43, i32* %45, align 8
  %46 = call i32 @read_reg(i32 10396)
  %47 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %48 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %47, i32 0, i32 13
  store i32 %46, i32* %48, align 4
  %49 = call i32 @read_reg(i32 10520)
  %50 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %51 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %50, i32 0, i32 14
  store i32 %49, i32* %51, align 8
  %52 = call i32 @read_reg(i32 10524)
  %53 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %54 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %53, i32 0, i32 15
  store i32 %52, i32* %54, align 4
  %55 = call i32 @read_reg(i32 10528)
  %56 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %57 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %56, i32 0, i32 16
  store i32 %55, i32* %57, align 8
  %58 = call i32 @read_reg(i32 10532)
  %59 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %60 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %59, i32 0, i32 17
  store i32 %58, i32* %60, align 4
  %61 = call i32 @read_reg(i32 10536)
  %62 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %63 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %62, i32 0, i32 18
  store i32 %61, i32* %63, align 8
  %64 = call i32 @read_reg(i32 10540)
  %65 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %66 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %65, i32 0, i32 19
  store i32 %64, i32* %66, align 4
  %67 = call i32 @read_reg(i32 10544)
  %68 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %69 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %68, i32 0, i32 20
  store i32 %67, i32* %69, align 8
  %70 = call i32 @read_reg(i32 10548)
  %71 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %72 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %71, i32 0, i32 21
  store i32 %70, i32* %72, align 4
  %73 = call i32 @read_reg(i32 10552)
  %74 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %75 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %74, i32 0, i32 22
  store i32 %73, i32* %75, align 8
  %76 = call i32 @read_reg(i32 10556)
  %77 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %78 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %77, i32 0, i32 23
  store i32 %76, i32* %78, align 4
  %79 = call i32 @read_reg(i32 10560)
  %80 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %81 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %80, i32 0, i32 24
  store i32 %79, i32* %81, align 8
  %82 = call i32 @read_reg(i32 10564)
  %83 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %84 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %83, i32 0, i32 25
  store i32 %82, i32* %84, align 4
  %85 = call i32 @read_reg(i32 10568)
  %86 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %87 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %86, i32 0, i32 26
  store i32 %85, i32* %87, align 8
  %88 = call i32 @read_reg(i32 10572)
  %89 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %90 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %89, i32 0, i32 27
  store i32 %88, i32* %90, align 4
  %91 = call i32 @read_reg(i32 10576)
  %92 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %93 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %92, i32 0, i32 28
  store i32 %91, i32* %93, align 8
  %94 = call i32 @read_reg(i32 10580)
  %95 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %96 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %95, i32 0, i32 29
  store i32 %94, i32* %96, align 4
  %97 = call i32 @read_reg(i32 10584)
  %98 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %99 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %98, i32 0, i32 30
  store i32 %97, i32* %99, align 8
  %100 = call i32 @read_reg(i32 10588)
  %101 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %102 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %101, i32 0, i32 31
  store i32 %100, i32* %102, align 4
  %103 = call i32 @read_reg(i32 10592)
  %104 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %105 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %104, i32 0, i32 32
  store i32 %103, i32* %105, align 8
  %106 = call i32 @read_reg(i32 10596)
  %107 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %108 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %107, i32 0, i32 33
  store i32 %106, i32* %108, align 4
  %109 = call i32 @read_reg(i32 10600)
  %110 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %111 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %110, i32 0, i32 34
  store i32 %109, i32* %111, align 8
  %112 = call i32 @read_reg(i32 10604)
  %113 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %114 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %113, i32 0, i32 35
  store i32 %112, i32* %114, align 4
  %115 = call i32 @read_reg(i32 10608)
  %116 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %117 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %116, i32 0, i32 36
  store i32 %115, i32* %117, align 8
  %118 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %119 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %118, i32 0, i32 37
  store i32 -1, i32* %119, align 4
  %120 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %121 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %120, i32 0, i32 38
  store i32 -1, i32* %121, align 8
  %122 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %123 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %122, i32 0, i32 39
  store i32 -1, i32* %123, align 4
  %124 = call i32 @read_reg(i32 10756)
  %125 = and i32 %124, 4095
  %126 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %127 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %126, i32 0, i32 40
  store i32 %125, i32* %127, align 8
  %128 = call i32 @read_reg(i32 10756)
  %129 = ashr i32 %128, 16
  %130 = and i32 %129, 4095
  %131 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %132 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %131, i32 0, i32 41
  store i32 %130, i32* %132, align 4
  %133 = call i32 @read_reg(i32 10360)
  %134 = and i32 %133, 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %1
  %137 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %138 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %137, i32 0, i32 42
  store i32 576, i32* %138, align 8
  br label %142

139:                                              ; preds = %1
  %140 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %141 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %140, i32 0, i32 42
  store i32 480, i32* %141, align 8
  br label %142

142:                                              ; preds = %139, %136
  %143 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %144 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %163, label %147

147:                                              ; preds = %142
  %148 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %149 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %148, i32 0, i32 40
  %150 = load i32, i32* %149, align 8
  %151 = sub nsw i32 720, %150
  %152 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %153 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %152, i32 0, i32 43
  store i32 %151, i32* %153, align 4
  %154 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %155 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %154, i32 0, i32 42
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %158 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %157, i32 0, i32 41
  %159 = load i32, i32* %158, align 4
  %160 = sub nsw i32 %156, %159
  %161 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %162 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %161, i32 0, i32 44
  store i32 %160, i32* %162, align 8
  br label %225

163:                                              ; preds = %142
  %164 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %165 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %164, i32 0, i32 43
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %175, label %168

168:                                              ; preds = %163
  %169 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %170 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %169, i32 0, i32 40
  %171 = load i32, i32* %170, align 8
  %172 = sub nsw i32 720, %171
  %173 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %174 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %173, i32 0, i32 43
  store i32 %172, i32* %174, align 4
  br label %175

175:                                              ; preds = %168, %163
  %176 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %177 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %176, i32 0, i32 44
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %190, label %180

180:                                              ; preds = %175
  %181 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %182 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %181, i32 0, i32 42
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %185 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %184, i32 0, i32 41
  %186 = load i32, i32* %185, align 4
  %187 = sub nsw i32 %183, %186
  %188 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %189 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %188, i32 0, i32 44
  store i32 %187, i32* %189, align 8
  br label %224

190:                                              ; preds = %175
  %191 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %192 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %191, i32 0, i32 44
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %195 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %194, i32 0, i32 41
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %193, %196
  %198 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %199 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %198, i32 0, i32 42
  %200 = load i32, i32* %199, align 8
  %201 = icmp sgt i32 %197, %200
  br i1 %201, label %202, label %223

202:                                              ; preds = %190
  %203 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %204 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %203, i32 0, i32 44
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %207 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %206, i32 0, i32 41
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %205, %208
  %210 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %211 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %210, i32 0, i32 42
  %212 = load i32, i32* %211, align 8
  %213 = call i32 (i8*, ...) @IVTV_DEBUG_WARN(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %209, i32 %212)
  %214 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %215 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %214, i32 0, i32 42
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %218 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %217, i32 0, i32 41
  %219 = load i32, i32* %218, align 4
  %220 = sub nsw i32 %216, %219
  %221 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %222 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %221, i32 0, i32 44
  store i32 %220, i32* %222, align 8
  br label %223

223:                                              ; preds = %202, %190
  br label %224

224:                                              ; preds = %223, %180
  br label %225

225:                                              ; preds = %224, %147
  %226 = load i32, i32* @GFP_ATOMIC, align 4
  %227 = load i32, i32* @__GFP_NOWARN, align 4
  %228 = or i32 %226, %227
  %229 = call i64 @kzalloc(i32 11520, i32 %228)
  %230 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %231 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %230, i32 0, i32 47
  store i64 %229, i64* %231, align 8
  %232 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %233 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %232, i32 0, i32 47
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %247

236:                                              ; preds = %225
  %237 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %238 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %241 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %240, i32 0, i32 47
  %242 = load i64, i64* %241, align 8
  %243 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %244 = call i64 @pci_map_single(i32 %239, i64 %242, i32 11520, i32 %243)
  %245 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %246 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %245, i32 0, i32 46
  store i64 %244, i64* %246, align 8
  br label %251

247:                                              ; preds = %225
  %248 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %249 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %248, i32 0, i32 46
  store i64 0, i64* %249, align 8
  %250 = call i32 (i8*, ...) @IVTV_DEBUG_WARN(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %251

251:                                              ; preds = %247, %236
  %252 = load i32, i32* @IVTV_REG_VDM, align 4
  %253 = call i32 @write_reg_sync(i32 1, i32 %252)
  %254 = load i32, i32* @IVTV_F_I_DECODING_YUV, align 4
  %255 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %256 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %255, i32 0, i32 0
  %257 = call i32 @set_bit(i32 %254, i32* %256)
  %258 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %259 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %258, i32 0, i32 45
  %260 = call i32 @atomic_set(i32* %259, i32 0)
  ret void
}

declare dso_local i32 @IVTV_DEBUG_YUV(i8*) #1

declare dso_local i32 @read_reg(i32) #1

declare dso_local i32 @IVTV_DEBUG_WARN(i8*, ...) #1

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i64 @pci_map_single(i32, i64, i32, i32) #1

declare dso_local i32 @write_reg_sync(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
