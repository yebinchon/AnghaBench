; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_legacy.c_nand_command_lp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_legacy.c_nand_command_lp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 (%struct.nand_chip.0*, i32, i32)* }
%struct.nand_chip.0 = type opaque
%struct.mtd_info = type { i64 }

@NAND_CMD_READOOB = common dso_local global i32 0, align 4
@NAND_NCE = common dso_local global i32 0, align 4
@NAND_CLE = common dso_local global i32 0, align 4
@NAND_CTRL_CHANGE = common dso_local global i32 0, align 4
@NAND_ALE = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@NAND_ROW_ADDR_3 = common dso_local global i32 0, align 4
@NAND_CMD_RNDOUTSTART = common dso_local global i32 0, align 4
@NAND_CMD_READSTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32, i32, i32)* @nand_command_lp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nand_command_lp(%struct.nand_chip* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %12 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %11)
  store %struct.mtd_info* %12, %struct.mtd_info** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @NAND_CMD_READOOB, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %18 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %19
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %7, align 4
  store i32 135, i32* %6, align 4
  br label %24

24:                                               ; preds = %16, %4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 137
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %29 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32 (%struct.nand_chip.0*, i32, i32)*, i32 (%struct.nand_chip.0*, i32, i32)** %30, align 8
  %32 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %33 = bitcast %struct.nand_chip* %32 to %struct.nand_chip.0*
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @NAND_NCE, align 4
  %36 = load i32, i32* @NAND_CLE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %39 = or i32 %37, %38
  %40 = call i32 %31(%struct.nand_chip.0* %33, i32 %34, i32 %39)
  br label %41

41:                                               ; preds = %27, %24
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %144

47:                                               ; preds = %44, %41
  %48 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %49 = load i32, i32* @NAND_NCE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @NAND_ALE, align 4
  %52 = or i32 %50, %51
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, -1
  br i1 %54, label %55, label %98

55:                                               ; preds = %47
  %56 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %57 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @nand_opcode_8bits(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %7, align 4
  %68 = ashr i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %66, %62, %55
  %70 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %71 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i32 (%struct.nand_chip.0*, i32, i32)*, i32 (%struct.nand_chip.0*, i32, i32)** %72, align 8
  %74 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %75 = bitcast %struct.nand_chip* %74 to %struct.nand_chip.0*
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 %73(%struct.nand_chip.0* %75, i32 %76, i32 %77)
  %79 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %10, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @nand_opcode_8bits(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %69
  %87 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %88 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i32 (%struct.nand_chip.0*, i32, i32)*, i32 (%struct.nand_chip.0*, i32, i32)** %89, align 8
  %91 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %92 = bitcast %struct.nand_chip* %91 to %struct.nand_chip.0*
  %93 = load i32, i32* %7, align 4
  %94 = ashr i32 %93, 8
  %95 = load i32, i32* %10, align 4
  %96 = call i32 %90(%struct.nand_chip.0* %92, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %86, %69
  br label %98

98:                                               ; preds = %97, %47
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, -1
  br i1 %100, label %101, label %143

101:                                              ; preds = %98
  %102 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %103 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  %105 = load i32 (%struct.nand_chip.0*, i32, i32)*, i32 (%struct.nand_chip.0*, i32, i32)** %104, align 8
  %106 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %107 = bitcast %struct.nand_chip* %106 to %struct.nand_chip.0*
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %10, align 4
  %110 = call i32 %105(%struct.nand_chip.0* %107, i32 %108, i32 %109)
  %111 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %112 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  %114 = load i32 (%struct.nand_chip.0*, i32, i32)*, i32 (%struct.nand_chip.0*, i32, i32)** %113, align 8
  %115 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %116 = bitcast %struct.nand_chip* %115 to %struct.nand_chip.0*
  %117 = load i32, i32* %8, align 4
  %118 = ashr i32 %117, 8
  %119 = load i32, i32* @NAND_NCE, align 4
  %120 = load i32, i32* @NAND_ALE, align 4
  %121 = or i32 %119, %120
  %122 = call i32 %114(%struct.nand_chip.0* %116, i32 %118, i32 %121)
  %123 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %124 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @NAND_ROW_ADDR_3, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %101
  %130 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %131 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 2
  %133 = load i32 (%struct.nand_chip.0*, i32, i32)*, i32 (%struct.nand_chip.0*, i32, i32)** %132, align 8
  %134 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %135 = bitcast %struct.nand_chip* %134 to %struct.nand_chip.0*
  %136 = load i32, i32* %8, align 4
  %137 = ashr i32 %136, 16
  %138 = load i32, i32* @NAND_NCE, align 4
  %139 = load i32, i32* @NAND_ALE, align 4
  %140 = or i32 %138, %139
  %141 = call i32 %133(%struct.nand_chip.0* %135, i32 %137, i32 %140)
  br label %142

142:                                              ; preds = %129, %101
  br label %143

143:                                              ; preds = %142, %98
  br label %144

144:                                              ; preds = %143, %44
  %145 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %146 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 2
  %148 = load i32 (%struct.nand_chip.0*, i32, i32)*, i32 (%struct.nand_chip.0*, i32, i32)** %147, align 8
  %149 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %150 = bitcast %struct.nand_chip* %149 to %struct.nand_chip.0*
  %151 = load i32, i32* @NAND_NCE, align 4
  %152 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %153 = or i32 %151, %152
  %154 = call i32 %148(%struct.nand_chip.0* %150, i32 137, i32 %153)
  %155 = load i32, i32* %6, align 4
  switch i32 %155, label %254 [
    i32 137, label %156
    i32 140, label %156
    i32 136, label %156
    i32 139, label %156
    i32 138, label %156
    i32 130, label %156
    i32 128, label %156
    i32 134, label %156
    i32 129, label %156
    i32 132, label %157
    i32 133, label %160
    i32 131, label %197
    i32 135, label %223
  ]

156:                                              ; preds = %144, %144, %144, %144, %144, %144, %144, %144, %144
  br label %271

157:                                              ; preds = %144
  %158 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %159 = call i32 @nand_ccs_delay(%struct.nand_chip* %158)
  br label %271

160:                                              ; preds = %144
  %161 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %162 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  br label %267

167:                                              ; preds = %160
  %168 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %169 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @udelay(i32 %171)
  %173 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %174 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 2
  %176 = load i32 (%struct.nand_chip.0*, i32, i32)*, i32 (%struct.nand_chip.0*, i32, i32)** %175, align 8
  %177 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %178 = bitcast %struct.nand_chip* %177 to %struct.nand_chip.0*
  %179 = load i32, i32* @NAND_NCE, align 4
  %180 = load i32, i32* @NAND_CLE, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %183 = or i32 %181, %182
  %184 = call i32 %176(%struct.nand_chip.0* %178, i32 128, i32 %183)
  %185 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %186 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 2
  %188 = load i32 (%struct.nand_chip.0*, i32, i32)*, i32 (%struct.nand_chip.0*, i32, i32)** %187, align 8
  %189 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %190 = bitcast %struct.nand_chip* %189 to %struct.nand_chip.0*
  %191 = load i32, i32* @NAND_NCE, align 4
  %192 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %193 = or i32 %191, %192
  %194 = call i32 %188(%struct.nand_chip.0* %190, i32 137, i32 %193)
  %195 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %196 = call i32 @nand_wait_status_ready(%struct.nand_chip* %195, i32 250)
  br label %271

197:                                              ; preds = %144
  %198 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %199 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 2
  %201 = load i32 (%struct.nand_chip.0*, i32, i32)*, i32 (%struct.nand_chip.0*, i32, i32)** %200, align 8
  %202 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %203 = bitcast %struct.nand_chip* %202 to %struct.nand_chip.0*
  %204 = load i32, i32* @NAND_CMD_RNDOUTSTART, align 4
  %205 = load i32, i32* @NAND_NCE, align 4
  %206 = load i32, i32* @NAND_CLE, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %209 = or i32 %207, %208
  %210 = call i32 %201(%struct.nand_chip.0* %203, i32 %204, i32 %209)
  %211 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %212 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 2
  %214 = load i32 (%struct.nand_chip.0*, i32, i32)*, i32 (%struct.nand_chip.0*, i32, i32)** %213, align 8
  %215 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %216 = bitcast %struct.nand_chip* %215 to %struct.nand_chip.0*
  %217 = load i32, i32* @NAND_NCE, align 4
  %218 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %219 = or i32 %217, %218
  %220 = call i32 %214(%struct.nand_chip.0* %216, i32 137, i32 %219)
  %221 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %222 = call i32 @nand_ccs_delay(%struct.nand_chip* %221)
  br label %271

223:                                              ; preds = %144
  %224 = load i32, i32* %7, align 4
  %225 = icmp eq i32 %224, -1
  br i1 %225, label %226, label %230

226:                                              ; preds = %223
  %227 = load i32, i32* %8, align 4
  %228 = icmp eq i32 %227, -1
  br i1 %228, label %229, label %230

229:                                              ; preds = %226
  br label %271

230:                                              ; preds = %226, %223
  %231 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %232 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 2
  %234 = load i32 (%struct.nand_chip.0*, i32, i32)*, i32 (%struct.nand_chip.0*, i32, i32)** %233, align 8
  %235 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %236 = bitcast %struct.nand_chip* %235 to %struct.nand_chip.0*
  %237 = load i32, i32* @NAND_CMD_READSTART, align 4
  %238 = load i32, i32* @NAND_NCE, align 4
  %239 = load i32, i32* @NAND_CLE, align 4
  %240 = or i32 %238, %239
  %241 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %242 = or i32 %240, %241
  %243 = call i32 %234(%struct.nand_chip.0* %236, i32 %237, i32 %242)
  %244 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %245 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 2
  %247 = load i32 (%struct.nand_chip.0*, i32, i32)*, i32 (%struct.nand_chip.0*, i32, i32)** %246, align 8
  %248 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %249 = bitcast %struct.nand_chip* %248 to %struct.nand_chip.0*
  %250 = load i32, i32* @NAND_NCE, align 4
  %251 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %252 = or i32 %250, %251
  %253 = call i32 %247(%struct.nand_chip.0* %249, i32 137, i32 %252)
  br label %254

254:                                              ; preds = %144, %230
  %255 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %256 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %266, label %260

260:                                              ; preds = %254
  %261 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %262 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @udelay(i32 %264)
  br label %271

266:                                              ; preds = %254
  br label %267

267:                                              ; preds = %266, %166
  %268 = call i32 @ndelay(i32 100)
  %269 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %270 = call i32 @nand_wait_ready(%struct.nand_chip* %269)
  br label %271

271:                                              ; preds = %267, %260, %229, %197, %167, %157, %156
  ret void
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @nand_opcode_8bits(i32) #1

declare dso_local i32 @nand_ccs_delay(%struct.nand_chip*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @nand_wait_status_ready(%struct.nand_chip*, i32) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @nand_wait_ready(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
