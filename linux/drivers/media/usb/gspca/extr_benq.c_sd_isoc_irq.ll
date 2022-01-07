; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_benq.c_sd_isoc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_benq.c_sd_isoc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.gspca_dev = type { i8*, %struct.urb**, i64, i32 }

@D_PACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"sd isoc irq\0A\00", align 1
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"urb status: %d\0A\00", align 1
@SD_PKT_SZ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"ISOC bad lengths %d / %d\0A\00", align 1
@DISCARD_PACKET = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"ISOC data error: [%d] status=%d\0A\00", align 1
@LAST_PACKET = common dso_local global i32 0, align 4
@FIRST_PACKET = common dso_local global i32 0, align 4
@INTER_PACKET = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"usb_submit_urb(0) ret %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"usb_submit_urb() ret %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @sd_isoc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_isoc_irq(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %8 = load %struct.urb*, %struct.urb** %2, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.gspca_dev*
  store %struct.gspca_dev* %11, %struct.gspca_dev** %3, align 8
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %13 = load i32, i32* @D_PACK, align 4
  %14 = call i32 @gspca_dbg(%struct.gspca_dev* %12, i32 %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %16 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %257

20:                                               ; preds = %1
  %21 = load %struct.urb*, %struct.urb** %2, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load %struct.urb*, %struct.urb** %2, align 8
  %27 = getelementptr inbounds %struct.urb, %struct.urb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ESHUTDOWN, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %257

33:                                               ; preds = %25
  %34 = load %struct.urb*, %struct.urb** %2, align 8
  %35 = getelementptr inbounds %struct.urb, %struct.urb* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %257

38:                                               ; preds = %20
  %39 = load %struct.urb*, %struct.urb** %2, align 8
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %41 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %40, i32 0, i32 1
  %42 = load %struct.urb**, %struct.urb*** %41, align 8
  %43 = getelementptr inbounds %struct.urb*, %struct.urb** %42, i64 0
  %44 = load %struct.urb*, %struct.urb** %43, align 8
  %45 = icmp eq %struct.urb* %39, %44
  br i1 %45, label %54, label %46

46:                                               ; preds = %38
  %47 = load %struct.urb*, %struct.urb** %2, align 8
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %49 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %48, i32 0, i32 1
  %50 = load %struct.urb**, %struct.urb*** %49, align 8
  %51 = getelementptr inbounds %struct.urb*, %struct.urb** %50, i64 2
  %52 = load %struct.urb*, %struct.urb** %51, align 8
  %53 = icmp eq %struct.urb* %47, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46, %38
  br label %257

55:                                               ; preds = %46
  %56 = load %struct.urb*, %struct.urb** %2, align 8
  %57 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %58 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %57, i32 0, i32 1
  %59 = load %struct.urb**, %struct.urb*** %58, align 8
  %60 = getelementptr inbounds %struct.urb*, %struct.urb** %59, i64 1
  %61 = load %struct.urb*, %struct.urb** %60, align 8
  %62 = icmp eq %struct.urb* %56, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %55
  %64 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %65 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %64, i32 0, i32 1
  %66 = load %struct.urb**, %struct.urb*** %65, align 8
  %67 = getelementptr inbounds %struct.urb*, %struct.urb** %66, i64 0
  %68 = load %struct.urb*, %struct.urb** %67, align 8
  store %struct.urb* %68, %struct.urb** %4, align 8
  br label %75

69:                                               ; preds = %55
  %70 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %71 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %70, i32 0, i32 1
  %72 = load %struct.urb**, %struct.urb*** %71, align 8
  %73 = getelementptr inbounds %struct.urb*, %struct.urb** %72, i64 2
  %74 = load %struct.urb*, %struct.urb** %73, align 8
  store %struct.urb* %74, %struct.urb** %4, align 8
  br label %75

75:                                               ; preds = %69, %63
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %236, %75
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.urb*, %struct.urb** %2, align 8
  %79 = getelementptr inbounds %struct.urb, %struct.urb* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %239

82:                                               ; preds = %76
  %83 = load %struct.urb*, %struct.urb** %4, align 8
  %84 = getelementptr inbounds %struct.urb, %struct.urb* %83, i32 0, i32 2
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @SD_PKT_SZ, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %104, label %93

93:                                               ; preds = %82
  %94 = load %struct.urb*, %struct.urb** %2, align 8
  %95 = getelementptr inbounds %struct.urb, %struct.urb* %94, i32 0, i32 2
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @SD_PKT_SZ, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %126

104:                                              ; preds = %93, %82
  %105 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %106 = load %struct.urb*, %struct.urb** %4, align 8
  %107 = getelementptr inbounds %struct.urb, %struct.urb* %106, i32 0, i32 2
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.urb*, %struct.urb** %2, align 8
  %115 = getelementptr inbounds %struct.urb, %struct.urb* %114, i32 0, i32 2
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @gspca_err(%struct.gspca_dev* %105, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %113, i64 %121)
  %123 = load i8*, i8** @DISCARD_PACKET, align 8
  %124 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %125 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  br label %236

126:                                              ; preds = %93
  %127 = load %struct.urb*, %struct.urb** %4, align 8
  %128 = getelementptr inbounds %struct.urb, %struct.urb* %127, i32 0, i32 2
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %126
  %138 = load %struct.urb*, %struct.urb** %2, align 8
  %139 = getelementptr inbounds %struct.urb, %struct.urb* %138, i32 0, i32 2
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  store i32 %145, i32* %7, align 4
  br label %146

146:                                              ; preds = %137, %126
  %147 = load i32, i32* %7, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %146
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* %7, align 4
  %152 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %150, i32 %151)
  %153 = load i8*, i8** @DISCARD_PACKET, align 8
  %154 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %155 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %154, i32 0, i32 0
  store i8* %153, i8** %155, align 8
  br label %236

156:                                              ; preds = %146
  %157 = load %struct.urb*, %struct.urb** %4, align 8
  %158 = getelementptr inbounds %struct.urb, %struct.urb* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = inttoptr i64 %159 to i32*
  %161 = load %struct.urb*, %struct.urb** %4, align 8
  %162 = getelementptr inbounds %struct.urb, %struct.urb* %161, i32 0, i32 2
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = load i32, i32* %6, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %160, i64 %169
  store i32* %170, i32** %5, align 8
  %171 = load i32*, i32** %5, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp eq i32 %173, 128
  br i1 %174, label %175, label %192

175:                                              ; preds = %156
  %176 = load i32*, i32** %5, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = and i32 %178, 254
  %180 = icmp eq i32 %179, 186
  br i1 %180, label %181, label %192

181:                                              ; preds = %175
  %182 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %183 = load i32, i32* @LAST_PACKET, align 4
  %184 = call i32 @gspca_frame_add(%struct.gspca_dev* %182, i32 %183, i32* null, i64 0)
  %185 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %186 = load i32, i32* @FIRST_PACKET, align 4
  %187 = load i32*, i32** %5, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 4
  %189 = load i64, i64* @SD_PKT_SZ, align 8
  %190 = sub nsw i64 %189, 4
  %191 = call i32 @gspca_frame_add(%struct.gspca_dev* %185, i32 %186, i32* %188, i64 %190)
  br label %216

192:                                              ; preds = %175, %156
  %193 = load i32*, i32** %5, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %195, 4
  br i1 %196, label %197, label %211

197:                                              ; preds = %192
  %198 = load i32*, i32** %5, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 1
  %200 = load i32, i32* %199, align 4
  %201 = and i32 %200, 254
  %202 = icmp eq i32 %201, 186
  br i1 %202, label %203, label %211

203:                                              ; preds = %197
  %204 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %205 = load i32, i32* @INTER_PACKET, align 4
  %206 = load i32*, i32** %5, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 4
  %208 = load i64, i64* @SD_PKT_SZ, align 8
  %209 = sub nsw i64 %208, 4
  %210 = call i32 @gspca_frame_add(%struct.gspca_dev* %204, i32 %205, i32* %207, i64 %209)
  br label %215

211:                                              ; preds = %197, %192
  %212 = load i8*, i8** @DISCARD_PACKET, align 8
  %213 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %214 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %213, i32 0, i32 0
  store i8* %212, i8** %214, align 8
  br label %236

215:                                              ; preds = %203
  br label %216

216:                                              ; preds = %215, %181
  %217 = load %struct.urb*, %struct.urb** %2, align 8
  %218 = getelementptr inbounds %struct.urb, %struct.urb* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = inttoptr i64 %219 to i32*
  %221 = load %struct.urb*, %struct.urb** %2, align 8
  %222 = getelementptr inbounds %struct.urb, %struct.urb* %221, i32 0, i32 2
  %223 = load %struct.TYPE_2__*, %struct.TYPE_2__** %222, align 8
  %224 = load i32, i32* %6, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %220, i64 %229
  store i32* %230, i32** %5, align 8
  %231 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %232 = load i32, i32* @INTER_PACKET, align 4
  %233 = load i32*, i32** %5, align 8
  %234 = load i64, i64* @SD_PKT_SZ, align 8
  %235 = call i32 @gspca_frame_add(%struct.gspca_dev* %231, i32 %232, i32* %233, i64 %234)
  br label %236

236:                                              ; preds = %216, %211, %149, %104
  %237 = load i32, i32* %6, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %6, align 4
  br label %76

239:                                              ; preds = %76
  %240 = load %struct.urb*, %struct.urb** %4, align 8
  %241 = load i32, i32* @GFP_ATOMIC, align 4
  %242 = call i32 @usb_submit_urb(%struct.urb* %240, i32 %241)
  store i32 %242, i32* %7, align 4
  %243 = load i32, i32* %7, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %239
  %246 = load i32, i32* %7, align 4
  %247 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %246)
  br label %248

248:                                              ; preds = %245, %239
  %249 = load %struct.urb*, %struct.urb** %2, align 8
  %250 = load i32, i32* @GFP_ATOMIC, align 4
  %251 = call i32 @usb_submit_urb(%struct.urb* %249, i32 %250)
  store i32 %251, i32* %7, align 4
  %252 = load i32, i32* %7, align 4
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %248
  %255 = load i32, i32* %7, align 4
  %256 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %255)
  br label %257

257:                                              ; preds = %19, %32, %33, %54, %254, %248
  ret void
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*, i64, i64) #1

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i32, i32*, i64) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
