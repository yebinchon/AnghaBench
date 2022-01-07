; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-core.c_saa7134_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-core.c_saa7134_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 (%struct.saa7134_dev*, i64)* }
%struct.TYPE_4__ = type { i32* }

@SAA7134_IRQ_REPORT = common dso_local global i32 0, align 4
@SAA7134_IRQ_STATUS = common dso_local global i32 0, align 4
@SAA7134_IRQ_REPORT_DONE_RA3 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"preserving DMA sound interrupt\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"no (more) work\0A\00", align 1
@irq_debug = common dso_local global i64 0, align 8
@SAA7134_IRQ_REPORT_RDCAP = common dso_local global i64 0, align 8
@SAA7134_IRQ_REPORT_INTL = common dso_local global i64 0, align 8
@SAA7134_IRQ_REPORT_DONE_RA0 = common dso_local global i64 0, align 8
@SAA7134_IRQ_REPORT_DONE_RA2 = common dso_local global i64 0, align 8
@SAA7134_IRQ_REPORT_GPIO16 = common dso_local global i64 0, align 8
@SAA7134_IRQ_REPORT_GPIO18 = common dso_local global i64 0, align 8
@SAA7134_IRQ_REPORT_PE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [59 x i8] c"%s/irq: looping -- clearing PE (parity error!) enable bit\0A\00", align 1
@SAA7134_IRQ2 = common dso_local global i32 0, align 4
@SAA7134_IRQ2_INTE_PE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"%s/irq: looping -- clearing GPIO16 enable bit\0A\00", align 1
@SAA7134_IRQ2_INTE_GPIO16_P = common dso_local global i32 0, align 4
@SAA7134_IRQ2_INTE_GPIO16_N = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"%s/irq: looping -- clearing GPIO18 enable bit\0A\00", align 1
@SAA7134_IRQ2_INTE_GPIO18_P = common dso_local global i32 0, align 4
@SAA7134_IRQ2_INTE_GPIO18_N = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"%s/irq: looping -- clearing all enable bits\0A\00", align 1
@SAA7134_IRQ1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @saa7134_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.saa7134_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.saa7134_dev*
  store %struct.saa7134_dev* %11, %struct.saa7134_dev** %5, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %13 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %266

17:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %197, %17
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 10
  br i1 %20, label %21, label %200

21:                                               ; preds = %18
  %22 = load i32, i32* @SAA7134_IRQ_REPORT, align 4
  %23 = call i64 @saa_readl(i32 %22)
  store i64 %23, i64* %6, align 8
  %24 = load i32, i32* @SAA7134_IRQ_STATUS, align 4
  %25 = call i64 @saa_readl(i32 %24)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @SAA7134_IRQ_REPORT_DONE_RA3, align 8
  %28 = and i64 %26, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %21
  %31 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %32 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = call i32 @irq_dbg(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %38 = load i64, i64* @SAA7134_IRQ_REPORT_DONE_RA3, align 8
  %39 = xor i64 %38, -1
  %40 = load i64, i64* %6, align 8
  %41 = and i64 %40, %39
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %36, %30, %21
  %43 = load i64, i64* %6, align 8
  %44 = icmp eq i64 0, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 @irq_dbg(i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %266

47:                                               ; preds = %42
  store i32 1, i32* %9, align 4
  %48 = load i32, i32* @SAA7134_IRQ_REPORT, align 4
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @saa_writel(i32 %48, i64 %49)
  %51 = load i64, i64* @irq_debug, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @print_irqstatus(%struct.saa7134_dev* %54, i32 %55, i64 %56, i64 %57)
  br label %59

59:                                               ; preds = %53, %47
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @SAA7134_IRQ_REPORT_RDCAP, align 8
  %62 = and i64 %60, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* @SAA7134_IRQ_REPORT_INTL, align 8
  %67 = and i64 %65, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64, %59
  %70 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %71 = call i32 @saa7134_irq_video_signalchange(%struct.saa7134_dev* %70)
  br label %72

72:                                               ; preds = %69, %64
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* @SAA7134_IRQ_REPORT_DONE_RA0, align 8
  %75 = and i64 %73, %74
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load i64, i64* %7, align 8
  %79 = and i64 %78, 96
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @saa7134_irq_video_done(%struct.saa7134_dev* %82, i64 %83)
  br label %85

85:                                               ; preds = %81, %77, %72
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* @SAA7134_IRQ_REPORT_DONE_RA0, align 8
  %88 = and i64 %86, %87
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load i64, i64* %7, align 8
  %92 = and i64 %91, 64
  %93 = icmp eq i64 %92, 64
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %96 = load i64, i64* %7, align 8
  %97 = call i32 @saa7134_irq_vbi_done(%struct.saa7134_dev* %95, i64 %96)
  br label %98

98:                                               ; preds = %94, %90, %85
  %99 = load i64, i64* %6, align 8
  %100 = load i64, i64* @SAA7134_IRQ_REPORT_DONE_RA2, align 8
  %101 = and i64 %99, %100
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %128

103:                                              ; preds = %98
  %104 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %105 = call i64 @card_has_mpeg(%struct.saa7134_dev* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %128

107:                                              ; preds = %103
  %108 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %109 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %108, i32 0, i32 3
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32 (%struct.saa7134_dev*, i64)*, i32 (%struct.saa7134_dev*, i64)** %111, align 8
  %113 = icmp ne i32 (%struct.saa7134_dev*, i64)* %112, null
  br i1 %113, label %114, label %123

114:                                              ; preds = %107
  %115 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %116 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %115, i32 0, i32 3
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32 (%struct.saa7134_dev*, i64)*, i32 (%struct.saa7134_dev*, i64)** %118, align 8
  %120 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %121 = load i64, i64* %7, align 8
  %122 = call i32 %119(%struct.saa7134_dev* %120, i64 %121)
  br label %127

123:                                              ; preds = %107
  %124 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %125 = load i64, i64* %7, align 8
  %126 = call i32 @saa7134_irq_ts_done(%struct.saa7134_dev* %124, i64 %125)
  br label %127

127:                                              ; preds = %123, %114
  br label %128

128:                                              ; preds = %127, %103, %98
  %129 = load i64, i64* %6, align 8
  %130 = load i64, i64* @SAA7134_IRQ_REPORT_GPIO16, align 8
  %131 = and i64 %129, %130
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %158

133:                                              ; preds = %128
  %134 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %135 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  switch i32 %136, label %156 [
    i32 129, label %137
    i32 128, label %155
  ]

137:                                              ; preds = %133
  %138 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %139 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %138, i32 0, i32 2
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = icmp ne %struct.TYPE_6__* %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %137
  br label %157

143:                                              ; preds = %137
  %144 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %145 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %144, i32 0, i32 2
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, 65536
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %143
  %152 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %153 = call i32 @saa7134_input_irq(%struct.saa7134_dev* %152)
  br label %154

154:                                              ; preds = %151, %143
  br label %157

155:                                              ; preds = %133
  br label %157

156:                                              ; preds = %133
  br label %157

157:                                              ; preds = %156, %155, %154, %142
  br label %158

158:                                              ; preds = %157, %128
  %159 = load i64, i64* %6, align 8
  %160 = load i64, i64* @SAA7134_IRQ_REPORT_GPIO18, align 8
  %161 = and i64 %159, %160
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %196

163:                                              ; preds = %158
  %164 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %165 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  switch i32 %166, label %194 [
    i32 129, label %167
    i32 128, label %193
  ]

167:                                              ; preds = %163
  %168 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %169 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %168, i32 0, i32 2
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %169, align 8
  %171 = icmp ne %struct.TYPE_6__* %170, null
  br i1 %171, label %173, label %172

172:                                              ; preds = %167
  br label %195

173:                                              ; preds = %167
  %174 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %175 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %174, i32 0, i32 2
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = and i32 %178, 262144
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %189, label %181

181:                                              ; preds = %173
  %182 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %183 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %182, i32 0, i32 2
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = and i32 %186, 262144
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %181, %173
  %190 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %191 = call i32 @saa7134_input_irq(%struct.saa7134_dev* %190)
  br label %192

192:                                              ; preds = %189, %181
  br label %195

193:                                              ; preds = %163
  br label %195

194:                                              ; preds = %163
  br label %195

195:                                              ; preds = %194, %193, %192, %172
  br label %196

196:                                              ; preds = %195, %158
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %8, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %8, align 4
  br label %18

200:                                              ; preds = %18
  %201 = load i32, i32* %8, align 4
  %202 = icmp eq i32 10, %201
  br i1 %202, label %203, label %265

203:                                              ; preds = %200
  %204 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %205 = load i32, i32* %8, align 4
  %206 = load i64, i64* %6, align 8
  %207 = load i64, i64* %7, align 8
  %208 = call i32 @print_irqstatus(%struct.saa7134_dev* %204, i32 %205, i64 %206, i64 %207)
  %209 = load i64, i64* %6, align 8
  %210 = load i64, i64* @SAA7134_IRQ_REPORT_PE, align 8
  %211 = and i64 %209, %210
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %221

213:                                              ; preds = %203
  %214 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %215 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @pr_warn(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %216)
  %218 = load i32, i32* @SAA7134_IRQ2, align 4
  %219 = load i32, i32* @SAA7134_IRQ2_INTE_PE, align 4
  %220 = call i32 @saa_clearl(i32 %218, i32 %219)
  br label %264

221:                                              ; preds = %203
  %222 = load i64, i64* %6, align 8
  %223 = load i64, i64* @SAA7134_IRQ_REPORT_GPIO16, align 8
  %224 = and i64 %222, %223
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %237

226:                                              ; preds = %221
  %227 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %228 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @pr_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %229)
  %231 = load i32, i32* @SAA7134_IRQ2, align 4
  %232 = load i32, i32* @SAA7134_IRQ2_INTE_GPIO16_P, align 4
  %233 = call i32 @saa_clearl(i32 %231, i32 %232)
  %234 = load i32, i32* @SAA7134_IRQ2, align 4
  %235 = load i32, i32* @SAA7134_IRQ2_INTE_GPIO16_N, align 4
  %236 = call i32 @saa_clearl(i32 %234, i32 %235)
  br label %263

237:                                              ; preds = %221
  %238 = load i64, i64* %6, align 8
  %239 = load i64, i64* @SAA7134_IRQ_REPORT_GPIO18, align 8
  %240 = and i64 %238, %239
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %253

242:                                              ; preds = %237
  %243 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %244 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @pr_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %245)
  %247 = load i32, i32* @SAA7134_IRQ2, align 4
  %248 = load i32, i32* @SAA7134_IRQ2_INTE_GPIO18_P, align 4
  %249 = call i32 @saa_clearl(i32 %247, i32 %248)
  %250 = load i32, i32* @SAA7134_IRQ2, align 4
  %251 = load i32, i32* @SAA7134_IRQ2_INTE_GPIO18_N, align 4
  %252 = call i32 @saa_clearl(i32 %250, i32 %251)
  br label %262

253:                                              ; preds = %237
  %254 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %255 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %256)
  %258 = load i32, i32* @SAA7134_IRQ1, align 4
  %259 = call i32 @saa_writel(i32 %258, i64 0)
  %260 = load i32, i32* @SAA7134_IRQ2, align 4
  %261 = call i32 @saa_writel(i32 %260, i64 0)
  br label %262

262:                                              ; preds = %253, %242
  br label %263

263:                                              ; preds = %262, %226
  br label %264

264:                                              ; preds = %263, %213
  br label %265

265:                                              ; preds = %264, %200
  br label %266

266:                                              ; preds = %265, %45, %16
  %267 = load i32, i32* %9, align 4
  %268 = call i32 @IRQ_RETVAL(i32 %267)
  ret i32 %268
}

declare dso_local i64 @saa_readl(i32) #1

declare dso_local i32 @irq_dbg(i32, i8*) #1

declare dso_local i32 @saa_writel(i32, i64) #1

declare dso_local i32 @print_irqstatus(%struct.saa7134_dev*, i32, i64, i64) #1

declare dso_local i32 @saa7134_irq_video_signalchange(%struct.saa7134_dev*) #1

declare dso_local i32 @saa7134_irq_video_done(%struct.saa7134_dev*, i64) #1

declare dso_local i32 @saa7134_irq_vbi_done(%struct.saa7134_dev*, i64) #1

declare dso_local i64 @card_has_mpeg(%struct.saa7134_dev*) #1

declare dso_local i32 @saa7134_irq_ts_done(%struct.saa7134_dev*, i64) #1

declare dso_local i32 @saa7134_input_irq(%struct.saa7134_dev*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @saa_clearl(i32, i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
