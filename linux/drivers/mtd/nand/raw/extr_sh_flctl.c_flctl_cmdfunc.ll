; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sh_flctl.c_flctl_cmdfunc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sh_flctl.c_flctl_cmdfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.mtd_info = type { i32, i32 }
%struct.sh_flctl = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@NAND_CMD_READSTART = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@NAND_CMD_RNDOUTSTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Invalid address !?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32, i32, i32)* @flctl_cmdfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flctl_cmdfunc(%struct.nand_chip* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca %struct.sh_flctl*, align 8
  %11 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %13 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %12)
  store %struct.mtd_info* %13, %struct.mtd_info** %9, align 8
  %14 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %15 = call %struct.sh_flctl* @mtd_to_flctl(%struct.mtd_info* %14)
  store %struct.sh_flctl* %15, %struct.sh_flctl** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %17 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %16, i32 0, i32 6
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @pm_runtime_get_sync(i32* %19)
  %21 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %22 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 136
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %27 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %4
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %372 [
    i32 134, label %30
    i32 135, label %30
    i32 132, label %86
    i32 130, label %127
    i32 133, label %166
    i32 138, label %204
    i32 137, label %208
    i32 129, label %223
    i32 136, label %259
    i32 128, label %339
    i32 131, label %358
  ]

30:                                               ; preds = %28, %28
  %31 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %32 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @execmd_read_page_sector(%struct.mtd_info* %36, i32 %37)
  br label %373

39:                                               ; preds = %30
  %40 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %41 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @NAND_CMD_READSTART, align 4
  %48 = shl i32 %47, 8
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @set_cmd_regs(%struct.mtd_info* %45, i32 %46, i32 %50)
  br label %57

52:                                               ; preds = %39
  %53 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @set_cmd_regs(%struct.mtd_info* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %44
  %58 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @set_addr(%struct.mtd_info* %58, i32 0, i32 %59)
  %61 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %62 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %65 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %63, %66
  %68 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %69 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %71 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %70, i32 0, i32 9
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %57
  %78 = load i32, i32* %7, align 4
  %79 = ashr i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %77, %57
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %83 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %374

86:                                               ; preds = %28
  %87 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %88 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @execmd_read_oob(%struct.mtd_info* %92, i32 %93)
  br label %373

95:                                               ; preds = %86
  %96 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %97 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %95
  %101 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @NAND_CMD_READSTART, align 4
  %104 = shl i32 %103, 8
  %105 = or i32 %104, 135
  %106 = call i32 @set_cmd_regs(%struct.mtd_info* %101, i32 %102, i32 %105)
  %107 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %108 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %109 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @set_addr(%struct.mtd_info* %107, i32 %110, i32 %111)
  br label %121

113:                                              ; preds = %95
  %114 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @set_cmd_regs(%struct.mtd_info* %114, i32 %115, i32 %116)
  %118 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @set_addr(%struct.mtd_info* %118, i32 0, i32 %119)
  br label %121

121:                                              ; preds = %113, %100
  %122 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %123 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %126 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  br label %374

127:                                              ; preds = %28
  %128 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %129 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %373

133:                                              ; preds = %127
  %134 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %135 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %134, i32 0, i32 8
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %133
  %139 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* @NAND_CMD_RNDOUTSTART, align 4
  %142 = shl i32 %141, 8
  %143 = load i32, i32* %6, align 4
  %144 = or i32 %142, %143
  %145 = call i32 @set_cmd_regs(%struct.mtd_info* %139, i32 %140, i32 %144)
  br label %151

146:                                              ; preds = %133
  %147 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* %6, align 4
  %150 = call i32 @set_cmd_regs(%struct.mtd_info* %147, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %146, %138
  %152 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %153 = load i32, i32* %7, align 4
  %154 = call i32 @set_addr(%struct.mtd_info* %152, i32 %153, i32 0)
  %155 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %156 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %159 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %157, %160
  %162 = load i32, i32* %7, align 4
  %163 = sub nsw i32 %161, %162
  %164 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %165 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  br label %374

166:                                              ; preds = %28
  %167 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* %6, align 4
  %170 = call i32 @set_cmd_regs(%struct.mtd_info* %167, i32 %168, i32 %169)
  %171 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %172 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %171, i32 0, i32 9
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %166
  %179 = load i32, i32* %7, align 4
  %180 = shl i32 %179, 1
  store i32 %180, i32* %7, align 4
  br label %181

181:                                              ; preds = %178, %166
  %182 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %183 = load i32, i32* %7, align 4
  %184 = call i32 @set_addr(%struct.mtd_info* %182, i32 %183, i32 0)
  %185 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %186 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %185, i32 0, i32 0
  store i32 8, i32* %186, align 8
  %187 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %188 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %191 = call i32 @FLDTCNTR(%struct.sh_flctl* %190)
  %192 = call i32 @writel(i32 %189, i32 %191)
  %193 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %194 = call i32 @empty_fifo(%struct.sh_flctl* %193)
  %195 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %196 = call i32 @start_translation(%struct.sh_flctl* %195)
  %197 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %198 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %199 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @read_fiforeg(%struct.sh_flctl* %197, i32 %200, i32 0)
  %202 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %203 = call i32 @wait_completion(%struct.sh_flctl* %202)
  br label %373

204:                                              ; preds = %28
  %205 = load i32, i32* %8, align 4
  %206 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %207 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %206, i32 0, i32 2
  store i32 %205, i32* %207, align 8
  br label %373

208:                                              ; preds = %28
  %209 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %210 = load i32, i32* %6, align 4
  %211 = shl i32 %210, 8
  %212 = or i32 %211, 138
  %213 = call i32 @set_cmd_regs(%struct.mtd_info* %209, i32 138, i32 %212)
  %214 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %215 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %216 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @set_addr(%struct.mtd_info* %214, i32 -1, i32 %217)
  %219 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %220 = call i32 @start_translation(%struct.sh_flctl* %219)
  %221 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %222 = call i32 @wait_completion(%struct.sh_flctl* %221)
  br label %373

223:                                              ; preds = %28
  %224 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %225 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %224, i32 0, i32 8
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %249, label %228

228:                                              ; preds = %223
  %229 = load i32, i32* %7, align 4
  %230 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %231 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = icmp sge i32 %229, %232
  br i1 %233, label %234, label %240

234:                                              ; preds = %228
  %235 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %236 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %7, align 4
  %239 = sub nsw i32 %238, %237
  store i32 %239, i32* %7, align 4
  store i32 132, i32* %11, align 4
  br label %248

240:                                              ; preds = %228
  %241 = load i32, i32* %7, align 4
  %242 = icmp slt i32 %241, 256
  br i1 %242, label %243, label %244

243:                                              ; preds = %240
  store i32 135, i32* %11, align 4
  br label %247

244:                                              ; preds = %240
  %245 = load i32, i32* %7, align 4
  %246 = sub nsw i32 %245, 256
  store i32 %246, i32* %7, align 4
  store i32 134, i32* %11, align 4
  br label %247

247:                                              ; preds = %244, %243
  br label %248

248:                                              ; preds = %247, %234
  br label %249

249:                                              ; preds = %248, %223
  %250 = load i32, i32* %7, align 4
  %251 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %252 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %251, i32 0, i32 3
  store i32 %250, i32* %252, align 4
  %253 = load i32, i32* %8, align 4
  %254 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %255 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %254, i32 0, i32 4
  store i32 %253, i32* %255, align 8
  %256 = load i32, i32* %11, align 4
  %257 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %258 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %257, i32 0, i32 5
  store i32 %256, i32* %258, align 4
  br label %373

259:                                              ; preds = %28
  %260 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %261 = call i32 @empty_fifo(%struct.sh_flctl* %260)
  %262 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %263 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %262, i32 0, i32 8
  %264 = load i32, i32* %263, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %281, label %266

266:                                              ; preds = %259
  %267 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %268 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %269 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %268, i32 0, i32 5
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @set_cmd_regs(%struct.mtd_info* %267, i32 129, i32 %270)
  %272 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %273 = call i32 @set_addr(%struct.mtd_info* %272, i32 -1, i32 -1)
  %274 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %275 = call i32 @FLDTCNTR(%struct.sh_flctl* %274)
  %276 = call i32 @writel(i32 0, i32 %275)
  %277 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %278 = call i32 @start_translation(%struct.sh_flctl* %277)
  %279 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %280 = call i32 @wait_completion(%struct.sh_flctl* %279)
  br label %281

281:                                              ; preds = %266, %259
  %282 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %283 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %282, i32 0, i32 7
  %284 = load i32, i32* %283, align 8
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %309

286:                                              ; preds = %281
  %287 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %288 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %291 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = icmp eq i32 %289, %292
  br i1 %293, label %294, label %297

294:                                              ; preds = %286
  %295 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %296 = call i32 @execmd_write_oob(%struct.mtd_info* %295)
  br label %308

297:                                              ; preds = %286
  %298 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %299 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %305, label %302

302:                                              ; preds = %297
  %303 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %304 = call i32 @execmd_write_page_sector(%struct.mtd_info* %303)
  br label %307

305:                                              ; preds = %297
  %306 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %307

307:                                              ; preds = %305, %302
  br label %308

308:                                              ; preds = %307, %294
  br label %373

309:                                              ; preds = %281
  %310 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %311 = load i32, i32* %6, align 4
  %312 = load i32, i32* %6, align 4
  %313 = shl i32 %312, 8
  %314 = or i32 %313, 129
  %315 = call i32 @set_cmd_regs(%struct.mtd_info* %310, i32 %311, i32 %314)
  %316 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %317 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %318 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %317, i32 0, i32 3
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %321 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %320, i32 0, i32 4
  %322 = load i32, i32* %321, align 8
  %323 = call i32 @set_addr(%struct.mtd_info* %316, i32 %319, i32 %322)
  %324 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %325 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %328 = call i32 @FLDTCNTR(%struct.sh_flctl* %327)
  %329 = call i32 @writel(i32 %326, i32 %328)
  %330 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %331 = call i32 @start_translation(%struct.sh_flctl* %330)
  %332 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %333 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %334 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = call i32 @write_fiforeg(%struct.sh_flctl* %332, i32 %335, i32 0)
  %337 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %338 = call i32 @wait_completion(%struct.sh_flctl* %337)
  br label %373

339:                                              ; preds = %28
  %340 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %341 = load i32, i32* %6, align 4
  %342 = load i32, i32* %6, align 4
  %343 = call i32 @set_cmd_regs(%struct.mtd_info* %340, i32 %341, i32 %342)
  %344 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %345 = call i32 @set_addr(%struct.mtd_info* %344, i32 -1, i32 -1)
  %346 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %347 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %346, i32 0, i32 0
  store i32 1, i32* %347, align 8
  %348 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %349 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %352 = call i32 @FLDTCNTR(%struct.sh_flctl* %351)
  %353 = call i32 @writel(i32 %350, i32 %352)
  %354 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %355 = call i32 @start_translation(%struct.sh_flctl* %354)
  %356 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %357 = call i32 @read_datareg(%struct.sh_flctl* %356, i32 0)
  br label %373

358:                                              ; preds = %28
  %359 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %360 = load i32, i32* %6, align 4
  %361 = load i32, i32* %6, align 4
  %362 = call i32 @set_cmd_regs(%struct.mtd_info* %359, i32 %360, i32 %361)
  %363 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %364 = call i32 @set_addr(%struct.mtd_info* %363, i32 -1, i32 -1)
  %365 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %366 = call i32 @FLDTCNTR(%struct.sh_flctl* %365)
  %367 = call i32 @writel(i32 0, i32 %366)
  %368 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %369 = call i32 @start_translation(%struct.sh_flctl* %368)
  %370 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %371 = call i32 @wait_completion(%struct.sh_flctl* %370)
  br label %373

372:                                              ; preds = %28
  br label %373

373:                                              ; preds = %372, %358, %339, %309, %308, %249, %208, %204, %181, %132, %91, %35
  br label %392

374:                                              ; preds = %151, %121, %80
  %375 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %376 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %379 = call i32 @FLDTCNTR(%struct.sh_flctl* %378)
  %380 = call i32 @writel(i32 %377, i32 %379)
  %381 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %382 = call i32 @empty_fifo(%struct.sh_flctl* %381)
  %383 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %384 = call i32 @start_translation(%struct.sh_flctl* %383)
  %385 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %386 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %387 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = call i32 @read_fiforeg(%struct.sh_flctl* %385, i32 %388, i32 0)
  %390 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %391 = call i32 @wait_completion(%struct.sh_flctl* %390)
  br label %392

392:                                              ; preds = %374, %373
  %393 = load %struct.sh_flctl*, %struct.sh_flctl** %10, align 8
  %394 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %393, i32 0, i32 6
  %395 = load %struct.TYPE_4__*, %struct.TYPE_4__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %395, i32 0, i32 0
  %397 = call i32 @pm_runtime_put_sync(i32* %396)
  ret void
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.sh_flctl* @mtd_to_flctl(%struct.mtd_info*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @execmd_read_page_sector(%struct.mtd_info*, i32) #1

declare dso_local i32 @set_cmd_regs(%struct.mtd_info*, i32, i32) #1

declare dso_local i32 @set_addr(%struct.mtd_info*, i32, i32) #1

declare dso_local i32 @execmd_read_oob(%struct.mtd_info*, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @FLDTCNTR(%struct.sh_flctl*) #1

declare dso_local i32 @empty_fifo(%struct.sh_flctl*) #1

declare dso_local i32 @start_translation(%struct.sh_flctl*) #1

declare dso_local i32 @read_fiforeg(%struct.sh_flctl*, i32, i32) #1

declare dso_local i32 @wait_completion(%struct.sh_flctl*) #1

declare dso_local i32 @execmd_write_oob(%struct.mtd_info*) #1

declare dso_local i32 @execmd_write_page_sector(%struct.mtd_info*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @write_fiforeg(%struct.sh_flctl*, i32, i32) #1

declare dso_local i32 @read_datareg(%struct.sh_flctl*, i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
