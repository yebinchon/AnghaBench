; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_buffer_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_buffer_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i64, i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64, i64, i64, i64, i64, i64, i32, i64 }
%struct.saa7134_buf = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.saa7134_dmaqueue* }
%struct.saa7134_dmaqueue = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"buffer_activate buf=%p\0A\00", align 1
@TASK_A = common dso_local global i32 0, align 4
@SAA7134_OFMT_VIDEO_A = common dso_local global i32 0, align 4
@SAA7134_RS_CONTROL_BURST_16 = common dso_local global i32 0, align 4
@SAA7134_RS_CONTROL_ME = common dso_local global i32 0, align 4
@SAA7134_RS_CONTROL_BSWAP = common dso_local global i64 0, align 8
@SAA7134_RS_CONTROL_WSWAP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"uv: bpl=%ld lines=%ld base2/3=%ld/%ld\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@BUFFER_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7134_dev*, %struct.saa7134_buf*, %struct.saa7134_buf*)* @buffer_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_activate(%struct.saa7134_dev* %0, %struct.saa7134_buf* %1, %struct.saa7134_buf* %2) #0 {
  %4 = alloca %struct.saa7134_dev*, align 8
  %5 = alloca %struct.saa7134_buf*, align 8
  %6 = alloca %struct.saa7134_buf*, align 8
  %7 = alloca %struct.saa7134_dmaqueue*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %4, align 8
  store %struct.saa7134_buf* %1, %struct.saa7134_buf** %5, align 8
  store %struct.saa7134_buf* %2, %struct.saa7134_buf** %6, align 8
  %16 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %17 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %21, align 8
  store %struct.saa7134_dmaqueue* %22, %struct.saa7134_dmaqueue** %7, align 8
  %23 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %24 = call i32 (i8*, ...) @video_dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.saa7134_buf* %23)
  %25 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %26 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %28 = load i32, i32* @TASK_A, align 4
  %29 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %30 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %33 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %36 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @V4L2_FIELD_HAS_BOTH(i32 %37)
  %39 = call i32 @set_size(%struct.saa7134_dev* %27, i32 %28, i64 %31, i64 %34, i64 %38)
  %40 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %41 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %40, i32 0, i32 3
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 8
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %3
  %47 = load i32, i32* @TASK_A, align 4
  %48 = call i32 @SAA7134_DATA_PATH(i32 %47)
  %49 = call i32 @saa_andorb(i32 %48, i32 63, i32 3)
  br label %54

50:                                               ; preds = %3
  %51 = load i32, i32* @TASK_A, align 4
  %52 = call i32 @SAA7134_DATA_PATH(i32 %51)
  %53 = call i32 @saa_andorb(i32 %52, i32 63, i32 1)
  br label %54

54:                                               ; preds = %50, %46
  %55 = load i32, i32* @SAA7134_OFMT_VIDEO_A, align 4
  %56 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %57 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %56, i32 0, i32 3
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @saa_writeb(i32 %55, i32 %60)
  %62 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %63 = call i64 @saa7134_buffer_base(%struct.saa7134_buf* %62)
  store i64 %63, i64* %8, align 8
  %64 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %65 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %64, i32 0, i32 3
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %54
  %71 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %72 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %10, align 8
  br label %86

74:                                               ; preds = %54
  %75 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %76 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %79 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %78, i32 0, i32 3
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = mul i64 %77, %83
  %85 = udiv i64 %84, 8
  store i64 %85, i64* %10, align 8
  br label %86

86:                                               ; preds = %74, %70
  %87 = load i32, i32* @SAA7134_RS_CONTROL_BURST_16, align 4
  %88 = load i32, i32* @SAA7134_RS_CONTROL_ME, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %7, align 8
  %91 = getelementptr inbounds %struct.saa7134_dmaqueue, %struct.saa7134_dmaqueue* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = ashr i32 %93, 12
  %95 = or i32 %89, %94
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %9, align 8
  %97 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %98 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %97, i32 0, i32 3
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 6
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %86
  %104 = load i64, i64* @SAA7134_RS_CONTROL_BSWAP, align 8
  %105 = load i64, i64* %9, align 8
  %106 = or i64 %105, %104
  store i64 %106, i64* %9, align 8
  br label %107

107:                                              ; preds = %103, %86
  %108 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %109 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %108, i32 0, i32 3
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load i64, i64* @SAA7134_RS_CONTROL_WSWAP, align 8
  %116 = load i64, i64* %9, align 8
  %117 = or i64 %116, %115
  store i64 %117, i64* %9, align 8
  br label %118

118:                                              ; preds = %114, %107
  %119 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %120 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @V4L2_FIELD_HAS_BOTH(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %118
  %125 = call i32 @SAA7134_RS_BA1(i32 0)
  %126 = load i64, i64* %8, align 8
  %127 = call i32 @saa_writel(i32 %125, i64 %126)
  %128 = call i32 @SAA7134_RS_BA2(i32 0)
  %129 = load i64, i64* %8, align 8
  %130 = load i64, i64* %10, align 8
  %131 = add i64 %129, %130
  %132 = call i32 @saa_writel(i32 %128, i64 %131)
  %133 = call i32 @SAA7134_RS_PITCH(i32 0)
  %134 = load i64, i64* %10, align 8
  %135 = mul i64 %134, 2
  %136 = call i32 @saa_writel(i32 %133, i64 %135)
  br label %147

137:                                              ; preds = %118
  %138 = call i32 @SAA7134_RS_BA1(i32 0)
  %139 = load i64, i64* %8, align 8
  %140 = call i32 @saa_writel(i32 %138, i64 %139)
  %141 = call i32 @SAA7134_RS_BA2(i32 0)
  %142 = load i64, i64* %8, align 8
  %143 = call i32 @saa_writel(i32 %141, i64 %142)
  %144 = call i32 @SAA7134_RS_PITCH(i32 0)
  %145 = load i64, i64* %10, align 8
  %146 = call i32 @saa_writel(i32 %144, i64 %145)
  br label %147

147:                                              ; preds = %137, %124
  %148 = call i32 @SAA7134_RS_CONTROL(i32 0)
  %149 = load i64, i64* %9, align 8
  %150 = call i32 @saa_writel(i32 %148, i64 %149)
  %151 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %152 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %151, i32 0, i32 3
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %258

157:                                              ; preds = %147
  %158 = load i64, i64* %10, align 8
  %159 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %160 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %159, i32 0, i32 3
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = lshr i64 %158, %163
  store i64 %164, i64* %11, align 8
  %165 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %166 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %169 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %168, i32 0, i32 3
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = lshr i64 %167, %172
  store i64 %173, i64* %12, align 8
  %174 = load i64, i64* %8, align 8
  %175 = load i64, i64* %10, align 8
  %176 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %177 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = mul i64 %175, %178
  %180 = add i64 %174, %179
  store i64 %180, i64* %13, align 8
  %181 = load i64, i64* %13, align 8
  %182 = load i64, i64* %11, align 8
  %183 = load i64, i64* %12, align 8
  %184 = mul i64 %182, %183
  %185 = add i64 %181, %184
  store i64 %185, i64* %14, align 8
  %186 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %187 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %186, i32 0, i32 3
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %157
  %193 = load i64, i64* %13, align 8
  store i64 %193, i64* %15, align 8
  %194 = load i64, i64* %14, align 8
  store i64 %194, i64* %13, align 8
  %195 = load i64, i64* %15, align 8
  store i64 %195, i64* %14, align 8
  br label %196

196:                                              ; preds = %192, %157
  %197 = load i64, i64* %11, align 8
  %198 = load i64, i64* %12, align 8
  %199 = load i64, i64* %13, align 8
  %200 = load i64, i64* %14, align 8
  %201 = call i32 (i8*, ...) @video_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %197, i64 %198, i64 %199, i64 %200)
  %202 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %203 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = call i64 @V4L2_FIELD_HAS_BOTH(i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %232

207:                                              ; preds = %196
  %208 = call i32 @SAA7134_RS_BA1(i32 4)
  %209 = load i64, i64* %13, align 8
  %210 = call i32 @saa_writel(i32 %208, i64 %209)
  %211 = call i32 @SAA7134_RS_BA2(i32 4)
  %212 = load i64, i64* %13, align 8
  %213 = load i64, i64* %11, align 8
  %214 = add i64 %212, %213
  %215 = call i32 @saa_writel(i32 %211, i64 %214)
  %216 = call i32 @SAA7134_RS_PITCH(i32 4)
  %217 = load i64, i64* %11, align 8
  %218 = mul i64 %217, 2
  %219 = call i32 @saa_writel(i32 %216, i64 %218)
  %220 = call i32 @SAA7134_RS_BA1(i32 5)
  %221 = load i64, i64* %14, align 8
  %222 = call i32 @saa_writel(i32 %220, i64 %221)
  %223 = call i32 @SAA7134_RS_BA2(i32 5)
  %224 = load i64, i64* %14, align 8
  %225 = load i64, i64* %11, align 8
  %226 = add i64 %224, %225
  %227 = call i32 @saa_writel(i32 %223, i64 %226)
  %228 = call i32 @SAA7134_RS_PITCH(i32 5)
  %229 = load i64, i64* %11, align 8
  %230 = mul i64 %229, 2
  %231 = call i32 @saa_writel(i32 %228, i64 %230)
  br label %251

232:                                              ; preds = %196
  %233 = call i32 @SAA7134_RS_BA1(i32 4)
  %234 = load i64, i64* %13, align 8
  %235 = call i32 @saa_writel(i32 %233, i64 %234)
  %236 = call i32 @SAA7134_RS_BA2(i32 4)
  %237 = load i64, i64* %13, align 8
  %238 = call i32 @saa_writel(i32 %236, i64 %237)
  %239 = call i32 @SAA7134_RS_PITCH(i32 4)
  %240 = load i64, i64* %11, align 8
  %241 = call i32 @saa_writel(i32 %239, i64 %240)
  %242 = call i32 @SAA7134_RS_BA1(i32 5)
  %243 = load i64, i64* %14, align 8
  %244 = call i32 @saa_writel(i32 %242, i64 %243)
  %245 = call i32 @SAA7134_RS_BA2(i32 5)
  %246 = load i64, i64* %14, align 8
  %247 = call i32 @saa_writel(i32 %245, i64 %246)
  %248 = call i32 @SAA7134_RS_PITCH(i32 5)
  %249 = load i64, i64* %11, align 8
  %250 = call i32 @saa_writel(i32 %248, i64 %249)
  br label %251

251:                                              ; preds = %232, %207
  %252 = call i32 @SAA7134_RS_CONTROL(i32 4)
  %253 = load i64, i64* %9, align 8
  %254 = call i32 @saa_writel(i32 %252, i64 %253)
  %255 = call i32 @SAA7134_RS_CONTROL(i32 5)
  %256 = load i64, i64* %9, align 8
  %257 = call i32 @saa_writel(i32 %255, i64 %256)
  br label %258

258:                                              ; preds = %251, %147
  %259 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %260 = call i32 @saa7134_set_dmabits(%struct.saa7134_dev* %259)
  %261 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %7, align 8
  %262 = getelementptr inbounds %struct.saa7134_dmaqueue, %struct.saa7134_dmaqueue* %261, i32 0, i32 0
  %263 = load i64, i64* @jiffies, align 8
  %264 = load i64, i64* @BUFFER_TIMEOUT, align 8
  %265 = add nsw i64 %263, %264
  %266 = call i32 @mod_timer(i32* %262, i64 %265)
  ret i32 0
}

declare dso_local i32 @video_dbg(i8*, ...) #1

declare dso_local i32 @set_size(%struct.saa7134_dev*, i32, i64, i64, i64) #1

declare dso_local i64 @V4L2_FIELD_HAS_BOTH(i32) #1

declare dso_local i32 @saa_andorb(i32, i32, i32) #1

declare dso_local i32 @SAA7134_DATA_PATH(i32) #1

declare dso_local i32 @saa_writeb(i32, i32) #1

declare dso_local i64 @saa7134_buffer_base(%struct.saa7134_buf*) #1

declare dso_local i32 @saa_writel(i32, i64) #1

declare dso_local i32 @SAA7134_RS_BA1(i32) #1

declare dso_local i32 @SAA7134_RS_BA2(i32) #1

declare dso_local i32 @SAA7134_RS_PITCH(i32) #1

declare dso_local i32 @SAA7134_RS_CONTROL(i32) #1

declare dso_local i32 @saa7134_set_dmabits(%struct.saa7134_dev*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
