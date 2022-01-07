; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_cards.c_mantis_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_cards.c_mantis_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mantis_pci = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.mantis_ca* }
%struct.mantis_ca = type { i32, i32 }

@MANTIS_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Mantis == NULL\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@MANTIS_INT_STAT = common dso_local global i32 0, align 4
@MANTIS_INT_MASK = common dso_local global i32 0, align 4
@MANTIS_GPIF_WRACK = common dso_local global i32 0, align 4
@MANTIS_GPIF_OTHERR = common dso_local global i32 0, align 4
@MANTIS_SBUF_WSTO = common dso_local global i32 0, align 4
@MANTIS_GPIF_EXTIRQ = common dso_local global i32 0, align 4
@MANTIS_GPIF_STATUS = common dso_local global i32 0, align 4
@MANTIS_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"\0A-- Stat=<%02x> Mask=<%02x> --\00", align 1
@MANTIS_INT_RISCEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"<%s>\00", align 1
@label = common dso_local global i32* null, align 8
@MANTIS_INT_IRQ0 = common dso_local global i32 0, align 4
@MANTIS_INT_IRQ1 = common dso_local global i32 0, align 4
@MANTIS_INT_OCERR = common dso_local global i32 0, align 4
@MANTIS_INT_PABORT = common dso_local global i32 0, align 4
@MANTIS_INT_RIPERR = common dso_local global i32 0, align 4
@MANTIS_INT_PPERR = common dso_local global i32 0, align 4
@MANTIS_INT_FTRGT = common dso_local global i32 0, align 4
@MANTIS_INT_RISCI = common dso_local global i32 0, align 4
@MANTIS_INT_RISCSTAT = common dso_local global i32 0, align 4
@MANTIS_INT_I2CDONE = common dso_local global i32 0, align 4
@MANTIS_INT_I2CRACK = common dso_local global i32 0, align 4
@MANTIS_INT_PCMCIA7 = common dso_local global i32 0, align 4
@MANTIS_INT_PCMCIA6 = common dso_local global i32 0, align 4
@MANTIS_INT_PCMCIA5 = common dso_local global i32 0, align 4
@MANTIS_INT_PCMCIA4 = common dso_local global i32 0, align 4
@MANTIS_INT_PCMCIA3 = common dso_local global i32 0, align 4
@MANTIS_INT_PCMCIA2 = common dso_local global i32 0, align 4
@MANTIS_INT_PCMCIA1 = common dso_local global i32 0, align 4
@MANTIS_INT_PCMCIA0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"<Unknown> Stat=<%02x> Mask=<%02x>\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mantis_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mantis_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mantis_pci*, align 8
  %11 = alloca %struct.mantis_ca*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.mantis_pci*
  store %struct.mantis_pci* %13, %struct.mantis_pci** %10, align 8
  %14 = load %struct.mantis_pci*, %struct.mantis_pci** %10, align 8
  %15 = icmp eq %struct.mantis_pci* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @MANTIS_ERROR, align 4
  %21 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %20, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @IRQ_NONE, align 4
  store i32 %22, i32* %3, align 4
  br label %264

23:                                               ; preds = %2
  %24 = load %struct.mantis_pci*, %struct.mantis_pci** %10, align 8
  %25 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %24, i32 0, i32 8
  %26 = load %struct.mantis_ca*, %struct.mantis_ca** %25, align 8
  store %struct.mantis_ca* %26, %struct.mantis_ca** %11, align 8
  %27 = load i32, i32* @MANTIS_INT_STAT, align 4
  %28 = call i32 @mmread(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @MANTIS_INT_MASK, align 4
  %30 = call i32 @mmread(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %23
  %36 = load i32, i32* @IRQ_NONE, align 4
  store i32 %36, i32* %3, align 4
  br label %264

37:                                               ; preds = %23
  %38 = load i32, i32* @MANTIS_GPIF_WRACK, align 4
  %39 = load i32, i32* @MANTIS_GPIF_OTHERR, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @MANTIS_SBUF_WSTO, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @MANTIS_GPIF_EXTIRQ, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* @MANTIS_GPIF_STATUS, align 4
  %46 = call i32 @mmread(i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @MANTIS_GPIF_STATUS, align 4
  %52 = call i32 @mmwrite(i32 %50, i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.mantis_pci*, %struct.mantis_pci** %10, align 8
  %55 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.mantis_pci*, %struct.mantis_pci** %10, align 8
  %58 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @MANTIS_DEBUG, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %59, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @MANTIS_INT_RISCEN, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %37
  %68 = load i32, i32* @MANTIS_DEBUG, align 4
  %69 = load i32*, i32** @label, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %68, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %67, %37
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @MANTIS_INT_IRQ0, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %73
  %79 = load i32, i32* @MANTIS_DEBUG, align 4
  %80 = load i32*, i32** @label, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %79, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.mantis_pci*, %struct.mantis_pci** %10, align 8
  %86 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load %struct.mantis_ca*, %struct.mantis_ca** %11, align 8
  %88 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %87, i32 0, i32 1
  %89 = call i32 @wake_up(i32* %88)
  %90 = load %struct.mantis_ca*, %struct.mantis_ca** %11, align 8
  %91 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %90, i32 0, i32 0
  %92 = call i32 @schedule_work(i32* %91)
  br label %93

93:                                               ; preds = %78, %73
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @MANTIS_INT_IRQ1, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %120

98:                                               ; preds = %93
  %99 = load i32, i32* @MANTIS_DEBUG, align 4
  %100 = load i32*, i32** @label, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %99, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = load %struct.mantis_pci*, %struct.mantis_pci** %10, align 8
  %105 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %104, i32 0, i32 7
  %106 = call i32 @spin_lock(i32* %105)
  %107 = load i32, i32* @MANTIS_INT_MASK, align 4
  %108 = call i32 @mmread(i32 %107)
  %109 = load i32, i32* @MANTIS_INT_IRQ1, align 4
  %110 = xor i32 %109, -1
  %111 = and i32 %108, %110
  %112 = load i32, i32* @MANTIS_INT_MASK, align 4
  %113 = call i32 @mmwrite(i32 %111, i32 %112)
  %114 = load %struct.mantis_pci*, %struct.mantis_pci** %10, align 8
  %115 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %114, i32 0, i32 7
  %116 = call i32 @spin_unlock(i32* %115)
  %117 = load %struct.mantis_pci*, %struct.mantis_pci** %10, align 8
  %118 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %117, i32 0, i32 6
  %119 = call i32 @schedule_work(i32* %118)
  br label %120

120:                                              ; preds = %98, %93
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @MANTIS_INT_OCERR, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = load i32, i32* @MANTIS_DEBUG, align 4
  %127 = load i32*, i32** @label, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 3
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %126, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %125, %120
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @MANTIS_INT_PABORT, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = load i32, i32* @MANTIS_DEBUG, align 4
  %138 = load i32*, i32** @label, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 4
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %137, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %136, %131
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* @MANTIS_INT_RIPERR, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %142
  %148 = load i32, i32* @MANTIS_DEBUG, align 4
  %149 = load i32*, i32** @label, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 5
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %148, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %151)
  br label %153

153:                                              ; preds = %147, %142
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* @MANTIS_INT_PPERR, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %153
  %159 = load i32, i32* @MANTIS_DEBUG, align 4
  %160 = load i32*, i32** @label, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 6
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %159, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %158, %153
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* @MANTIS_INT_FTRGT, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %164
  %170 = load i32, i32* @MANTIS_DEBUG, align 4
  %171 = load i32*, i32** @label, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 7
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %170, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %173)
  br label %175

175:                                              ; preds = %169, %164
  %176 = load i32, i32* %6, align 4
  %177 = load i32, i32* @MANTIS_INT_RISCI, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %195

180:                                              ; preds = %175
  %181 = load i32, i32* @MANTIS_DEBUG, align 4
  %182 = load i32*, i32** @label, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 8
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %181, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* @MANTIS_INT_RISCSTAT, align 4
  %188 = and i32 %186, %187
  %189 = ashr i32 %188, 28
  %190 = load %struct.mantis_pci*, %struct.mantis_pci** %10, align 8
  %191 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %190, i32 0, i32 3
  store i32 %189, i32* %191, align 4
  %192 = load %struct.mantis_pci*, %struct.mantis_pci** %10, align 8
  %193 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %192, i32 0, i32 5
  %194 = call i32 @tasklet_schedule(i32* %193)
  br label %195

195:                                              ; preds = %180, %175
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* @MANTIS_INT_I2CDONE, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %209

200:                                              ; preds = %195
  %201 = load i32, i32* @MANTIS_DEBUG, align 4
  %202 = load i32*, i32** @label, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 9
  %204 = load i32, i32* %203, align 4
  %205 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %201, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %204)
  %206 = load %struct.mantis_pci*, %struct.mantis_pci** %10, align 8
  %207 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %206, i32 0, i32 4
  %208 = call i32 @wake_up(i32* %207)
  br label %209

209:                                              ; preds = %200, %195
  %210 = load i32, i32* %6, align 4
  %211 = load i32, i32* @MANTIS_INT_STAT, align 4
  %212 = call i32 @mmwrite(i32 %210, i32 %211)
  %213 = load i32, i32* @MANTIS_INT_RISCEN, align 4
  %214 = load i32, i32* @MANTIS_INT_I2CDONE, align 4
  %215 = or i32 %213, %214
  %216 = load i32, i32* @MANTIS_INT_I2CRACK, align 4
  %217 = or i32 %215, %216
  %218 = load i32, i32* @MANTIS_INT_PCMCIA7, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* @MANTIS_INT_PCMCIA6, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* @MANTIS_INT_PCMCIA5, align 4
  %223 = or i32 %221, %222
  %224 = load i32, i32* @MANTIS_INT_PCMCIA4, align 4
  %225 = or i32 %223, %224
  %226 = load i32, i32* @MANTIS_INT_PCMCIA3, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* @MANTIS_INT_PCMCIA2, align 4
  %229 = or i32 %227, %228
  %230 = load i32, i32* @MANTIS_INT_PCMCIA1, align 4
  %231 = or i32 %229, %230
  %232 = load i32, i32* @MANTIS_INT_PCMCIA0, align 4
  %233 = or i32 %231, %232
  %234 = load i32, i32* @MANTIS_INT_IRQ1, align 4
  %235 = or i32 %233, %234
  %236 = load i32, i32* @MANTIS_INT_IRQ0, align 4
  %237 = or i32 %235, %236
  %238 = load i32, i32* @MANTIS_INT_OCERR, align 4
  %239 = or i32 %237, %238
  %240 = load i32, i32* @MANTIS_INT_PABORT, align 4
  %241 = or i32 %239, %240
  %242 = load i32, i32* @MANTIS_INT_RIPERR, align 4
  %243 = or i32 %241, %242
  %244 = load i32, i32* @MANTIS_INT_PPERR, align 4
  %245 = or i32 %243, %244
  %246 = load i32, i32* @MANTIS_INT_FTRGT, align 4
  %247 = or i32 %245, %246
  %248 = load i32, i32* @MANTIS_INT_RISCI, align 4
  %249 = or i32 %247, %248
  %250 = xor i32 %249, -1
  %251 = load i32, i32* %6, align 4
  %252 = and i32 %251, %250
  store i32 %252, i32* %6, align 4
  %253 = load i32, i32* %6, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %260

255:                                              ; preds = %209
  %256 = load i32, i32* @MANTIS_DEBUG, align 4
  %257 = load i32, i32* %6, align 4
  %258 = load i32, i32* %7, align 4
  %259 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %256, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %257, i32 %258)
  br label %260

260:                                              ; preds = %255, %209
  %261 = load i32, i32* @MANTIS_DEBUG, align 4
  %262 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %261, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %263 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %263, i32* %3, align 4
  br label %264

264:                                              ; preds = %260, %35, %19
  %265 = load i32, i32* %3, align 4
  ret i32 %265
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*, ...) #1

declare dso_local i32 @mmread(i32) #1

declare dso_local i32 @mmwrite(i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
