; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32, i32, i32, %struct.TYPE_2__, i32, i32, i64, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@BT848_INT_STAT = common dso_local global i32 0, align 4
@BT848_INT_MASK = common dso_local global i32 0, align 4
@BT848_DSTATUS = common dso_local global i32 0, align 4
@irq_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"%d: irq loop=%d fc=%d riscs=%x, riscc=%08x, \00", align 1
@BT848_RISC_COUNT = common dso_local global i32 0, align 4
@BT848_INT_HLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"   HLOC => %s\00", align 1
@BT848_DSTATUS_HLOC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@BT848_INT_VPRES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"   PRES => %s\00", align 1
@BT848_DSTATUS_PRES = common dso_local global i32 0, align 4
@BT848_INT_FMTCHG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"   NUML => %s\00", align 1
@BT848_DSTATUS_NUML = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"625\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"525\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@BT848_INT_VSYNC = common dso_local global i32 0, align 4
@BT848_INT_GPINT = common dso_local global i32 0, align 4
@BT848_INT_I2CDONE = common dso_local global i32 0, align 4
@BT848_INT_RISCI = common dso_local global i32 0, align 4
@BT848_INT_SCERR = common dso_local global i32 0, align 4
@BT848_INT_OCERR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"%d: %s%s @ %08x,\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"SCERR\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"OCERR\00", align 1
@bttv_debug = common dso_local global i64 0, align 8
@fdsr = common dso_local global i64 0, align 8
@BT848_INT_FDSR = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"%d: FDSR @ %08x\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"%d: IRQ lockup, cleared int mask [\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"%d: IRQ lockup, clearing GPINT from int mask [\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bttv_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bttv*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.bttv*
  store %struct.bttv* %12, %struct.bttv** %9, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %2, %276
  %14 = load i32, i32* @BT848_INT_STAT, align 4
  %15 = call i32 @btread(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @BT848_INT_MASK, align 4
  %18 = call i32 @btread(i32 %17)
  %19 = and i32 %16, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  br label %277

23:                                               ; preds = %13
  store i32 1, i32* %10, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @BT848_INT_STAT, align 4
  %26 = call i32 @btwrite(i32 %24, i32 %25)
  %27 = load i32, i32* @BT848_DSTATUS, align 4
  %28 = call i32 @btread(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i64, i64* @irq_debug, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %88

31:                                               ; preds = %23
  %32 = load %struct.bttv*, %struct.bttv** %9, align 8
  %33 = getelementptr inbounds %struct.bttv, %struct.bttv* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.bttv*, %struct.bttv** %9, align 8
  %38 = getelementptr inbounds %struct.bttv, %struct.bttv* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = ashr i32 %40, 28
  %42 = load i32, i32* @BT848_RISC_COUNT, align 4
  %43 = call i32 @btread(i32 %42)
  %44 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36, i32 %39, i32 %41, i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @bttv_print_irqbits(i32 %45, i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @BT848_INT_HLOCK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %31
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @BT848_DSTATUS_HLOC, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %59 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %52, %31
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @BT848_INT_VPRES, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @BT848_DSTATUS_PRES, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %72 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %65, %60
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @BT848_INT_FMTCHG, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @BT848_DSTATUS_NUML, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  %85 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %84)
  br label %86

86:                                               ; preds = %78, %73
  %87 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %23
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @BT848_INT_VSYNC, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.bttv*, %struct.bttv** %9, align 8
  %95 = getelementptr inbounds %struct.bttv, %struct.bttv* %94, i32 0, i32 9
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %93, %88
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @BT848_INT_GPINT, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %98
  %104 = load %struct.bttv*, %struct.bttv** %9, align 8
  %105 = getelementptr inbounds %struct.bttv, %struct.bttv* %104, i32 0, i32 8
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load %struct.bttv*, %struct.bttv** %9, align 8
  %110 = call i32 @bttv_input_irq(%struct.bttv* %109)
  br label %111

111:                                              ; preds = %108, %103, %98
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @BT848_INT_I2CDONE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %111
  %117 = load i32, i32* %5, align 4
  %118 = load %struct.bttv*, %struct.bttv** %9, align 8
  %119 = getelementptr inbounds %struct.bttv, %struct.bttv* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.bttv*, %struct.bttv** %9, align 8
  %121 = getelementptr inbounds %struct.bttv, %struct.bttv* %120, i32 0, i32 7
  %122 = call i32 @wake_up(i32* %121)
  br label %123

123:                                              ; preds = %116, %111
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @BT848_INT_RISCI, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %123
  %129 = load i32, i32* %5, align 4
  %130 = and i32 %129, 1073741824
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load %struct.bttv*, %struct.bttv** %9, align 8
  %134 = call i32 @bttv_irq_switch_vbi(%struct.bttv* %133)
  br label %135

135:                                              ; preds = %132, %128, %123
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* @BT848_INT_RISCI, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %135
  %141 = load i32, i32* %5, align 4
  %142 = and i32 %141, 536870912
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load %struct.bttv*, %struct.bttv** %9, align 8
  %146 = call i32 @bttv_irq_wakeup_top(%struct.bttv* %145)
  br label %147

147:                                              ; preds = %144, %140, %135
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* @BT848_INT_RISCI, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %147
  %153 = load i32, i32* %5, align 4
  %154 = and i32 %153, 268435456
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load %struct.bttv*, %struct.bttv** %9, align 8
  %158 = call i32 @bttv_irq_switch_video(%struct.bttv* %157)
  br label %159

159:                                              ; preds = %156, %152, %147
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* @BT848_INT_HLOCK, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %178

164:                                              ; preds = %159
  %165 = load %struct.bttv*, %struct.bttv** %9, align 8
  %166 = getelementptr inbounds %struct.bttv, %struct.bttv* %165, i32 0, i32 6
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %178

169:                                              ; preds = %164
  %170 = load %struct.bttv*, %struct.bttv** %9, align 8
  %171 = load %struct.bttv*, %struct.bttv** %9, align 8
  %172 = getelementptr inbounds %struct.bttv, %struct.bttv* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.bttv*, %struct.bttv** %9, align 8
  %175 = getelementptr inbounds %struct.bttv, %struct.bttv* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @audio_mux_gpio(%struct.bttv* %170, i32 %173, i32 %176)
  br label %178

178:                                              ; preds = %169, %164, %159
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* @BT848_INT_SCERR, align 4
  %181 = load i32, i32* @BT848_INT_OCERR, align 4
  %182 = or i32 %180, %181
  %183 = and i32 %179, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %215

185:                                              ; preds = %178
  %186 = load %struct.bttv*, %struct.bttv** %9, align 8
  %187 = getelementptr inbounds %struct.bttv, %struct.bttv* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* @BT848_INT_SCERR, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  %194 = zext i1 %193 to i64
  %195 = select i1 %193, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* @BT848_INT_OCERR, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  %200 = zext i1 %199 to i64
  %201 = select i1 %199, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %202 = load i32, i32* @BT848_RISC_COUNT, align 4
  %203 = call i32 @btread(i32 %202)
  %204 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %189, i8* %195, i8* %201, i32 %203)
  %205 = load i32, i32* %5, align 4
  %206 = load i32, i32* %6, align 4
  %207 = call i32 @bttv_print_irqbits(i32 %205, i32 %206)
  %208 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %209 = load i64, i64* @bttv_debug, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %185
  %212 = load %struct.bttv*, %struct.bttv** %9, align 8
  %213 = call i32 @bttv_print_riscaddr(%struct.bttv* %212)
  br label %214

214:                                              ; preds = %211, %185
  br label %215

215:                                              ; preds = %214, %178
  %216 = load i64, i64* @fdsr, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %237

218:                                              ; preds = %215
  %219 = load i32, i32* %6, align 4
  %220 = load i32, i32* @BT848_INT_FDSR, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %237

223:                                              ; preds = %218
  %224 = load %struct.bttv*, %struct.bttv** %9, align 8
  %225 = getelementptr inbounds %struct.bttv, %struct.bttv* %224, i32 0, i32 3
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @BT848_RISC_COUNT, align 4
  %229 = call i32 @btread(i32 %228)
  %230 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 %227, i32 %229)
  %231 = load i64, i64* @bttv_debug, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %223
  %234 = load %struct.bttv*, %struct.bttv** %9, align 8
  %235 = call i32 @bttv_print_riscaddr(%struct.bttv* %234)
  br label %236

236:                                              ; preds = %233, %223
  br label %237

237:                                              ; preds = %236, %218, %215
  %238 = load i32, i32* %8, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %8, align 4
  %240 = load i32, i32* %8, align 4
  %241 = icmp sgt i32 %240, 4
  br i1 %241, label %242, label %276

242:                                              ; preds = %237
  %243 = load i32, i32* %8, align 4
  %244 = icmp sgt i32 %243, 8
  br i1 %244, label %250, label %245

245:                                              ; preds = %242
  %246 = load i32, i32* %6, align 4
  %247 = load i32, i32* @BT848_INT_GPINT, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %258, label %250

250:                                              ; preds = %245, %242
  %251 = load i32, i32* @BT848_INT_MASK, align 4
  %252 = call i32 @btwrite(i32 0, i32 %251)
  %253 = load %struct.bttv*, %struct.bttv** %9, align 8
  %254 = getelementptr inbounds %struct.bttv, %struct.bttv* %253, i32 0, i32 3
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0), i32 %256)
  br label %271

258:                                              ; preds = %245
  %259 = load %struct.bttv*, %struct.bttv** %9, align 8
  %260 = getelementptr inbounds %struct.bttv, %struct.bttv* %259, i32 0, i32 3
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.15, i64 0, i64 0), i32 %262)
  %264 = load i32, i32* @BT848_INT_MASK, align 4
  %265 = call i32 @btread(i32 %264)
  %266 = load i32, i32* @BT848_INT_GPINT, align 4
  %267 = xor i32 -1, %266
  %268 = and i32 %265, %267
  %269 = load i32, i32* @BT848_INT_MASK, align 4
  %270 = call i32 @btwrite(i32 %268, i32 %269)
  br label %271

271:                                              ; preds = %258, %250
  %272 = load i32, i32* %5, align 4
  %273 = load i32, i32* %6, align 4
  %274 = call i32 @bttv_print_irqbits(i32 %272, i32 %273)
  %275 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  br label %276

276:                                              ; preds = %271, %237
  br label %13

277:                                              ; preds = %22
  %278 = load %struct.bttv*, %struct.bttv** %9, align 8
  %279 = getelementptr inbounds %struct.bttv, %struct.bttv* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %279, align 8
  %282 = load i32, i32* %10, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %289

284:                                              ; preds = %277
  %285 = load %struct.bttv*, %struct.bttv** %9, align 8
  %286 = getelementptr inbounds %struct.bttv, %struct.bttv* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %286, align 4
  br label %289

289:                                              ; preds = %284, %277
  %290 = load i32, i32* %10, align 4
  %291 = call i32 @IRQ_RETVAL(i32 %290)
  ret i32 %291
}

declare dso_local i32 @btread(i32) #1

declare dso_local i32 @btwrite(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bttv_print_irqbits(i32, i32) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i32 @bttv_input_irq(%struct.bttv*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @bttv_irq_switch_vbi(%struct.bttv*) #1

declare dso_local i32 @bttv_irq_wakeup_top(%struct.bttv*) #1

declare dso_local i32 @bttv_irq_switch_video(%struct.bttv*) #1

declare dso_local i32 @audio_mux_gpio(%struct.bttv*, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i32 @bttv_print_riscaddr(%struct.bttv*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
