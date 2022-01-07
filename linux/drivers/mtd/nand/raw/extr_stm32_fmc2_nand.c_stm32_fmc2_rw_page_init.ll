; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_rw_page_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_rw_page_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.stm32_fmc2_nfc = type { i64, i32 }
%struct.mtd_info = type { i32 }

@FMC2_BBM_LEN = common dso_local global i32 0, align 4
@FMC2_PCR = common dso_local global i64 0, align 8
@FMC2_PCR_WEN = common dso_local global i32 0, align 4
@FMC2_CSQCFGR1_DMADEN = common dso_local global i32 0, align 4
@FMC2_CSQCFGR1_CMD1T = common dso_local global i32 0, align 4
@NAND_CMD_SEQIN = common dso_local global i32 0, align 4
@NAND_CMD_READ0 = common dso_local global i32 0, align 4
@FMC2_CSQCFGR1_CMD2EN = common dso_local global i32 0, align 4
@NAND_CMD_READSTART = common dso_local global i32 0, align 4
@FMC2_CSQCFGR1_CMD2T = common dso_local global i32 0, align 4
@NAND_CMD_RNDIN = common dso_local global i32 0, align 4
@NAND_CMD_RNDOUT = common dso_local global i32 0, align 4
@FMC2_CSQCFGR2_RCMD2EN = common dso_local global i32 0, align 4
@NAND_CMD_RNDOUTSTART = common dso_local global i32 0, align 4
@FMC2_CSQCFGR2_RCMD1T = common dso_local global i32 0, align 4
@FMC2_CSQCFGR2_RCMD2T = common dso_local global i32 0, align 4
@FMC2_CSQCFGR2_DMASEN = common dso_local global i32 0, align 4
@FMC2_CSQCFGR2_SQSDTEN = common dso_local global i32 0, align 4
@FMC2_CSQCFGR3_RAC2T = common dso_local global i32 0, align 4
@NAND_ROW_ADDR_3 = common dso_local global i32 0, align 4
@FMC2_CSQCFGR3_AC5T = common dso_local global i32 0, align 4
@FMC2_CSQCFGR3_AC4T = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@FMC2_CSQCFGR1 = common dso_local global i64 0, align 8
@FMC2_CSQCFGR2 = common dso_local global i64 0, align 8
@FMC2_CSQCFGR3 = common dso_local global i64 0, align 8
@FMC2_CSQAR1 = common dso_local global i64 0, align 8
@FMC2_CSQAR2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32, i32, i32)* @stm32_fmc2_rw_page_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_fmc2_rw_page_init(%struct.nand_chip* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stm32_fmc2_nfc*, align 8
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %19 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.stm32_fmc2_nfc* @to_stm32_nfc(i32 %20)
  store %struct.stm32_fmc2_nfc* %21, %struct.stm32_fmc2_nfc** %9, align 8
  %22 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %23 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %22)
  store %struct.mtd_info* %23, %struct.mtd_info** %10, align 8
  %24 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %25 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @FMC2_BBM_LEN, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %16, align 4
  %29 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %9, align 8
  %30 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @FMC2_PCR, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readl_relaxed(i64 %33)
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %4
  %38 = load i32, i32* @FMC2_PCR_WEN, align 4
  %39 = load i32, i32* %17, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %17, align 4
  br label %46

41:                                               ; preds = %4
  %42 = load i32, i32* @FMC2_PCR_WEN, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %17, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %17, align 4
  br label %46

46:                                               ; preds = %41, %37
  %47 = load i32, i32* %17, align 4
  %48 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %9, align 8
  %49 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @FMC2_PCR, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel_relaxed(i32 %47, i64 %52)
  %54 = load i32, i32* @FMC2_CSQCFGR1_DMADEN, align 4
  %55 = load i32, i32* @FMC2_CSQCFGR1_CMD1T, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %46
  %60 = load i32, i32* @NAND_CMD_SEQIN, align 4
  %61 = call i32 @FMC2_CSQCFGR1_CMD1(i32 %60)
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %11, align 4
  br label %76

64:                                               ; preds = %46
  %65 = load i32, i32* @NAND_CMD_READ0, align 4
  %66 = call i32 @FMC2_CSQCFGR1_CMD1(i32 %65)
  %67 = load i32, i32* @FMC2_CSQCFGR1_CMD2EN, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @NAND_CMD_READSTART, align 4
  %70 = call i32 @FMC2_CSQCFGR1_CMD2(i32 %69)
  %71 = or i32 %68, %70
  %72 = load i32, i32* @FMC2_CSQCFGR1_CMD2T, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* %11, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %64, %59
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* @NAND_CMD_RNDIN, align 4
  %81 = call i32 @FMC2_CSQCFGR2_RCMD1(i32 %80)
  store i32 %81, i32* %12, align 4
  br label %94

82:                                               ; preds = %76
  %83 = load i32, i32* @NAND_CMD_RNDOUT, align 4
  %84 = call i32 @FMC2_CSQCFGR2_RCMD1(i32 %83)
  %85 = load i32, i32* @FMC2_CSQCFGR2_RCMD2EN, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @NAND_CMD_RNDOUTSTART, align 4
  %88 = call i32 @FMC2_CSQCFGR2_RCMD2(i32 %87)
  %89 = or i32 %86, %88
  %90 = load i32, i32* @FMC2_CSQCFGR2_RCMD1T, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @FMC2_CSQCFGR2_RCMD2T, align 4
  %93 = or i32 %91, %92
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %82, %79
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %110, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %103

101:                                              ; preds = %97
  %102 = load i32, i32* @FMC2_CSQCFGR2_DMASEN, align 4
  br label %103

103:                                              ; preds = %101, %100
  %104 = phi i32 [ 0, %100 ], [ %102, %101 ]
  %105 = load i32, i32* %12, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* @FMC2_CSQCFGR2_SQSDTEN, align 4
  %108 = load i32, i32* %12, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %12, align 4
  br label %110

110:                                              ; preds = %103, %94
  %111 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %112 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = sub nsw i64 %114, 1
  %116 = call i32 @FMC2_CSQCFGR3_SNBR(i64 %115)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %138

119:                                              ; preds = %110
  %120 = load i32, i32* @FMC2_CSQCFGR3_RAC2T, align 4
  %121 = load i32, i32* %13, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %13, align 4
  %123 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %124 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @NAND_ROW_ADDR_3, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %119
  %130 = load i32, i32* @FMC2_CSQCFGR3_AC5T, align 4
  %131 = load i32, i32* %13, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %13, align 4
  br label %137

133:                                              ; preds = %119
  %134 = load i32, i32* @FMC2_CSQCFGR3_AC4T, align 4
  %135 = load i32, i32* %13, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %13, align 4
  br label %137

137:                                              ; preds = %133, %129
  br label %138

138:                                              ; preds = %137, %110
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @FMC2_CSQCAR1_ADDC3(i32 %139)
  store i32 %140, i32* %14, align 4
  %141 = load i32, i32* %6, align 4
  %142 = ashr i32 %141, 8
  %143 = call i32 @FMC2_CSQCAR1_ADDC4(i32 %142)
  %144 = load i32, i32* %14, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %14, align 4
  %146 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %9, align 8
  %147 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @FMC2_CSQCAR2_NANDCEN(i32 %148)
  store i32 %149, i32* %15, align 4
  %150 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %151 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %138
  %157 = load i32, i32* %16, align 4
  %158 = ashr i32 %157, 1
  %159 = call i32 @FMC2_CSQCAR2_SAO(i32 %158)
  %160 = load i32, i32* %15, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %15, align 4
  br label %167

162:                                              ; preds = %138
  %163 = load i32, i32* %16, align 4
  %164 = call i32 @FMC2_CSQCAR2_SAO(i32 %163)
  %165 = load i32, i32* %15, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %15, align 4
  br label %167

167:                                              ; preds = %162, %156
  %168 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %169 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @NAND_ROW_ADDR_3, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %167
  %175 = call i32 @FMC2_CSQCFGR1_ACYNBR(i32 5)
  %176 = load i32, i32* %11, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %11, align 4
  %178 = load i32, i32* %6, align 4
  %179 = ashr i32 %178, 16
  %180 = call i32 @FMC2_CSQCAR2_ADDC5(i32 %179)
  %181 = load i32, i32* %15, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %15, align 4
  br label %187

183:                                              ; preds = %167
  %184 = call i32 @FMC2_CSQCFGR1_ACYNBR(i32 4)
  %185 = load i32, i32* %11, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %11, align 4
  br label %187

187:                                              ; preds = %183, %174
  %188 = load i32, i32* %11, align 4
  %189 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %9, align 8
  %190 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @FMC2_CSQCFGR1, align 8
  %193 = add nsw i64 %191, %192
  %194 = call i32 @writel_relaxed(i32 %188, i64 %193)
  %195 = load i32, i32* %12, align 4
  %196 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %9, align 8
  %197 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @FMC2_CSQCFGR2, align 8
  %200 = add nsw i64 %198, %199
  %201 = call i32 @writel_relaxed(i32 %195, i64 %200)
  %202 = load i32, i32* %13, align 4
  %203 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %9, align 8
  %204 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @FMC2_CSQCFGR3, align 8
  %207 = add nsw i64 %205, %206
  %208 = call i32 @writel_relaxed(i32 %202, i64 %207)
  %209 = load i32, i32* %14, align 4
  %210 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %9, align 8
  %211 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @FMC2_CSQAR1, align 8
  %214 = add nsw i64 %212, %213
  %215 = call i32 @writel_relaxed(i32 %209, i64 %214)
  %216 = load i32, i32* %15, align 4
  %217 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %9, align 8
  %218 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @FMC2_CSQAR2, align 8
  %221 = add nsw i64 %219, %220
  %222 = call i32 @writel_relaxed(i32 %216, i64 %221)
  ret void
}

declare dso_local %struct.stm32_fmc2_nfc* @to_stm32_nfc(i32) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @FMC2_CSQCFGR1_CMD1(i32) #1

declare dso_local i32 @FMC2_CSQCFGR1_CMD2(i32) #1

declare dso_local i32 @FMC2_CSQCFGR2_RCMD1(i32) #1

declare dso_local i32 @FMC2_CSQCFGR2_RCMD2(i32) #1

declare dso_local i32 @FMC2_CSQCFGR3_SNBR(i64) #1

declare dso_local i32 @FMC2_CSQCAR1_ADDC3(i32) #1

declare dso_local i32 @FMC2_CSQCAR1_ADDC4(i32) #1

declare dso_local i32 @FMC2_CSQCAR2_NANDCEN(i32) #1

declare dso_local i32 @FMC2_CSQCAR2_SAO(i32) #1

declare dso_local i32 @FMC2_CSQCFGR1_ACYNBR(i32) #1

declare dso_local i32 @FMC2_CSQCAR2_ADDC5(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
