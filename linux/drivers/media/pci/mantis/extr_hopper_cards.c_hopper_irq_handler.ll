; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_hopper_cards.c_hopper_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_hopper_cards.c_hopper_irq_handler.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hopper_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hopper_irq_handler(i32 %0, i8* %1) #0 {
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
  %15 = icmp ne %struct.mantis_pci* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @MANTIS_ERROR, align 4
  %22 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %21, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %3, align 4
  br label %265

24:                                               ; preds = %2
  %25 = load %struct.mantis_pci*, %struct.mantis_pci** %10, align 8
  %26 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %25, i32 0, i32 8
  %27 = load %struct.mantis_ca*, %struct.mantis_ca** %26, align 8
  store %struct.mantis_ca* %27, %struct.mantis_ca** %11, align 8
  %28 = load i32, i32* @MANTIS_INT_STAT, align 4
  %29 = call i32 @mmread(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @MANTIS_INT_MASK, align 4
  %31 = call i32 @mmread(i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %24
  %37 = load i32, i32* @IRQ_NONE, align 4
  store i32 %37, i32* %3, align 4
  br label %265

38:                                               ; preds = %24
  %39 = load i32, i32* @MANTIS_GPIF_WRACK, align 4
  %40 = load i32, i32* @MANTIS_GPIF_OTHERR, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @MANTIS_SBUF_WSTO, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @MANTIS_GPIF_EXTIRQ, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* @MANTIS_GPIF_STATUS, align 4
  %47 = call i32 @mmread(i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @MANTIS_GPIF_STATUS, align 4
  %53 = call i32 @mmwrite(i32 %51, i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.mantis_pci*, %struct.mantis_pci** %10, align 8
  %56 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.mantis_pci*, %struct.mantis_pci** %10, align 8
  %59 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @MANTIS_DEBUG, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %60, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @MANTIS_INT_RISCEN, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %38
  %69 = load i32, i32* @MANTIS_DEBUG, align 4
  %70 = load i32*, i32** @label, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %69, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %68, %38
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @MANTIS_INT_IRQ0, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %74
  %80 = load i32, i32* @MANTIS_DEBUG, align 4
  %81 = load i32*, i32** @label, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %80, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.mantis_pci*, %struct.mantis_pci** %10, align 8
  %87 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.mantis_ca*, %struct.mantis_ca** %11, align 8
  %89 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %88, i32 0, i32 1
  %90 = call i32 @wake_up(i32* %89)
  %91 = load %struct.mantis_ca*, %struct.mantis_ca** %11, align 8
  %92 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %91, i32 0, i32 0
  %93 = call i32 @schedule_work(i32* %92)
  br label %94

94:                                               ; preds = %79, %74
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @MANTIS_INT_IRQ1, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %121

99:                                               ; preds = %94
  %100 = load i32, i32* @MANTIS_DEBUG, align 4
  %101 = load i32*, i32** @label, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %100, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load %struct.mantis_pci*, %struct.mantis_pci** %10, align 8
  %106 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %105, i32 0, i32 7
  %107 = call i32 @spin_lock(i32* %106)
  %108 = load i32, i32* @MANTIS_INT_MASK, align 4
  %109 = call i32 @mmread(i32 %108)
  %110 = load i32, i32* @MANTIS_INT_IRQ1, align 4
  %111 = xor i32 %110, -1
  %112 = and i32 %109, %111
  %113 = load i32, i32* @MANTIS_INT_MASK, align 4
  %114 = call i32 @mmwrite(i32 %112, i32 %113)
  %115 = load %struct.mantis_pci*, %struct.mantis_pci** %10, align 8
  %116 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %115, i32 0, i32 7
  %117 = call i32 @spin_unlock(i32* %116)
  %118 = load %struct.mantis_pci*, %struct.mantis_pci** %10, align 8
  %119 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %118, i32 0, i32 6
  %120 = call i32 @schedule_work(i32* %119)
  br label %121

121:                                              ; preds = %99, %94
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @MANTIS_INT_OCERR, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load i32, i32* @MANTIS_DEBUG, align 4
  %128 = load i32*, i32** @label, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 3
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %127, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %126, %121
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* @MANTIS_INT_PABORT, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = load i32, i32* @MANTIS_DEBUG, align 4
  %139 = load i32*, i32** @label, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 4
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %138, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %137, %132
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* @MANTIS_INT_RIPERR, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load i32, i32* @MANTIS_DEBUG, align 4
  %150 = load i32*, i32** @label, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 5
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %149, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %148, %143
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* @MANTIS_INT_PPERR, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %154
  %160 = load i32, i32* @MANTIS_DEBUG, align 4
  %161 = load i32*, i32** @label, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 6
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %160, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %159, %154
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* @MANTIS_INT_FTRGT, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %165
  %171 = load i32, i32* @MANTIS_DEBUG, align 4
  %172 = load i32*, i32** @label, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 7
  %174 = load i32, i32* %173, align 4
  %175 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %171, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %170, %165
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* @MANTIS_INT_RISCI, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %196

181:                                              ; preds = %176
  %182 = load i32, i32* @MANTIS_DEBUG, align 4
  %183 = load i32*, i32** @label, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 8
  %185 = load i32, i32* %184, align 4
  %186 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %182, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %185)
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* @MANTIS_INT_RISCSTAT, align 4
  %189 = and i32 %187, %188
  %190 = ashr i32 %189, 28
  %191 = load %struct.mantis_pci*, %struct.mantis_pci** %10, align 8
  %192 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %191, i32 0, i32 3
  store i32 %190, i32* %192, align 4
  %193 = load %struct.mantis_pci*, %struct.mantis_pci** %10, align 8
  %194 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %193, i32 0, i32 5
  %195 = call i32 @tasklet_schedule(i32* %194)
  br label %196

196:                                              ; preds = %181, %176
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* @MANTIS_INT_I2CDONE, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %210

201:                                              ; preds = %196
  %202 = load i32, i32* @MANTIS_DEBUG, align 4
  %203 = load i32*, i32** @label, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 9
  %205 = load i32, i32* %204, align 4
  %206 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %202, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %205)
  %207 = load %struct.mantis_pci*, %struct.mantis_pci** %10, align 8
  %208 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %207, i32 0, i32 4
  %209 = call i32 @wake_up(i32* %208)
  br label %210

210:                                              ; preds = %201, %196
  %211 = load i32, i32* %6, align 4
  %212 = load i32, i32* @MANTIS_INT_STAT, align 4
  %213 = call i32 @mmwrite(i32 %211, i32 %212)
  %214 = load i32, i32* @MANTIS_INT_RISCEN, align 4
  %215 = load i32, i32* @MANTIS_INT_I2CDONE, align 4
  %216 = or i32 %214, %215
  %217 = load i32, i32* @MANTIS_INT_I2CRACK, align 4
  %218 = or i32 %216, %217
  %219 = load i32, i32* @MANTIS_INT_PCMCIA7, align 4
  %220 = or i32 %218, %219
  %221 = load i32, i32* @MANTIS_INT_PCMCIA6, align 4
  %222 = or i32 %220, %221
  %223 = load i32, i32* @MANTIS_INT_PCMCIA5, align 4
  %224 = or i32 %222, %223
  %225 = load i32, i32* @MANTIS_INT_PCMCIA4, align 4
  %226 = or i32 %224, %225
  %227 = load i32, i32* @MANTIS_INT_PCMCIA3, align 4
  %228 = or i32 %226, %227
  %229 = load i32, i32* @MANTIS_INT_PCMCIA2, align 4
  %230 = or i32 %228, %229
  %231 = load i32, i32* @MANTIS_INT_PCMCIA1, align 4
  %232 = or i32 %230, %231
  %233 = load i32, i32* @MANTIS_INT_PCMCIA0, align 4
  %234 = or i32 %232, %233
  %235 = load i32, i32* @MANTIS_INT_IRQ1, align 4
  %236 = or i32 %234, %235
  %237 = load i32, i32* @MANTIS_INT_IRQ0, align 4
  %238 = or i32 %236, %237
  %239 = load i32, i32* @MANTIS_INT_OCERR, align 4
  %240 = or i32 %238, %239
  %241 = load i32, i32* @MANTIS_INT_PABORT, align 4
  %242 = or i32 %240, %241
  %243 = load i32, i32* @MANTIS_INT_RIPERR, align 4
  %244 = or i32 %242, %243
  %245 = load i32, i32* @MANTIS_INT_PPERR, align 4
  %246 = or i32 %244, %245
  %247 = load i32, i32* @MANTIS_INT_FTRGT, align 4
  %248 = or i32 %246, %247
  %249 = load i32, i32* @MANTIS_INT_RISCI, align 4
  %250 = or i32 %248, %249
  %251 = xor i32 %250, -1
  %252 = load i32, i32* %6, align 4
  %253 = and i32 %252, %251
  store i32 %253, i32* %6, align 4
  %254 = load i32, i32* %6, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %210
  %257 = load i32, i32* @MANTIS_DEBUG, align 4
  %258 = load i32, i32* %6, align 4
  %259 = load i32, i32* %7, align 4
  %260 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %257, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %258, i32 %259)
  br label %261

261:                                              ; preds = %256, %210
  %262 = load i32, i32* @MANTIS_DEBUG, align 4
  %263 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %262, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %264 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %264, i32* %3, align 4
  br label %265

265:                                              ; preds = %261, %36, %20
  %266 = load i32, i32* %3, align 4
  ret i32 %266
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
