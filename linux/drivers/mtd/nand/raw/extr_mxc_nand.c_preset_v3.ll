; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_preset_v3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_preset_v3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32, i32 }
%struct.nand_chip = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.mxc_nand_host = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@NFC_V3_CONFIG1 = common dso_local global i64 0, align 8
@NFC_V3_IPC_CREQ = common dso_local global i32 0, align 4
@NFC_V3_IPC = common dso_local global i64 0, align 8
@NFC_V3_WRPROT_BLS_UNLOCK = common dso_local global i32 0, align 4
@NFC_V3_WRPROT_UNLOCK = common dso_local global i32 0, align 4
@NFC_V3_WRPROT = common dso_local global i64 0, align 8
@NAND_MAX_CHIPS = common dso_local global i32 0, align 4
@NFC_V3_WRPROT_UNLOCK_BLK_ADD0 = common dso_local global i64 0, align 8
@NFC_V3_CONFIG2_ONE_CYCLE = common dso_local global i32 0, align 4
@NFC_V3_CONFIG2_2CMD_PHASES = common dso_local global i32 0, align 4
@NFC_V3_CONFIG2_INT_MSK = common dso_local global i32 0, align 4
@NFC_V3_CONFIG2_NUM_ADDR_PHASE0 = common dso_local global i32 0, align 4
@NFC_V3_CONFIG2_PS_2048 = common dso_local global i32 0, align 4
@NFC_V3_CONFIG2_PS_4096 = common dso_local global i32 0, align 4
@NFC_V3_CONFIG2_PS_512 = common dso_local global i32 0, align 4
@NAND_ECC_HW = common dso_local global i64 0, align 8
@NFC_V3_CONFIG2_ECC_EN = common dso_local global i32 0, align 4
@NFC_V3_CONFIG2_ECC_MODE_8 = common dso_local global i32 0, align 4
@NFC_V3_CONFIG2 = common dso_local global i64 0, align 8
@NFC_V3_CONFIG3_NO_SDMA = common dso_local global i32 0, align 4
@NFC_V3_CONFIG3_RBB_MODE = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@NFC_V3_CONFIG3_FW8 = common dso_local global i32 0, align 4
@NFC_V3_CONFIG3 = common dso_local global i64 0, align 8
@NFC_V3_DELAY_LINE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*)* @preset_v3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @preset_v3(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.mxc_nand_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %9 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %10 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %9)
  store %struct.nand_chip* %10, %struct.nand_chip** %3, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %12 = call %struct.mxc_nand_host* @nand_get_controller_data(%struct.nand_chip* %11)
  store %struct.mxc_nand_host* %12, %struct.mxc_nand_host** %4, align 8
  %13 = call i32 @NFC_V3_CONFIG1_RBA(i32 0)
  %14 = load i64, i64* @NFC_V3_CONFIG1, align 8
  %15 = call i32 @writel(i32 %13, i64 %14)
  %16 = load i32, i32* @NFC_V3_IPC_CREQ, align 4
  %17 = load i64, i64* @NFC_V3_IPC, align 8
  %18 = call i32 @writel(i32 %16, i64 %17)
  %19 = load i32, i32* @NFC_V3_WRPROT_BLS_UNLOCK, align 4
  %20 = load i32, i32* @NFC_V3_WRPROT_UNLOCK, align 4
  %21 = or i32 %19, %20
  %22 = load i64, i64* @NFC_V3_WRPROT, align 8
  %23 = call i32 @writel(i32 %21, i64 %22)
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %35, %1
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @NAND_MAX_CHIPS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load i64, i64* @NFC_V3_WRPROT_UNLOCK_BLK_ADD0, align 8
  %30 = load i32, i32* %7, align 4
  %31 = shl i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %29, %32
  %34 = call i32 @writel(i32 -65536, i64 %33)
  br label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %24

38:                                               ; preds = %24
  %39 = load i64, i64* @NFC_V3_IPC, align 8
  %40 = call i32 @writel(i32 0, i64 %39)
  %41 = load i32, i32* @NFC_V3_CONFIG2_ONE_CYCLE, align 4
  %42 = load i32, i32* @NFC_V3_CONFIG2_2CMD_PHASES, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %45 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 1
  %48 = call i32 @NFC_V3_CONFIG2_SPAS(i32 %47)
  %49 = or i32 %43, %48
  %50 = call i32 @NFC_V3_CONFIG2_ST_CMD(i32 112)
  %51 = or i32 %49, %50
  %52 = load i32, i32* @NFC_V3_CONFIG2_INT_MSK, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @NFC_V3_CONFIG2_NUM_ADDR_PHASE0, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %5, align 4
  %56 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %57 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @fls(i32 %58)
  %60 = ashr i32 %59, 3
  store i32 %60, i32* %8, align 4
  %61 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %62 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 2048
  br i1 %64, label %65, label %73

65:                                               ; preds = %38
  %66 = load i32, i32* @NFC_V3_CONFIG2_PS_2048, align 4
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @NFC_V3_CONFIG2_NUM_ADDR_PHASE1(i32 %69)
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  br label %96

73:                                               ; preds = %38
  %74 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %75 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 4096
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load i32, i32* @NFC_V3_CONFIG2_PS_4096, align 4
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @NFC_V3_CONFIG2_NUM_ADDR_PHASE1(i32 %82)
  %84 = load i32, i32* %5, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %5, align 4
  br label %95

86:                                               ; preds = %73
  %87 = load i32, i32* @NFC_V3_CONFIG2_PS_512, align 4
  %88 = load i32, i32* %5, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %8, align 4
  %91 = sub nsw i32 %90, 1
  %92 = call i32 @NFC_V3_CONFIG2_NUM_ADDR_PHASE1(i32 %91)
  %93 = load i32, i32* %5, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %86, %78
  br label %96

96:                                               ; preds = %95, %65
  %97 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %98 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %143

101:                                              ; preds = %96
  %102 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %103 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @NAND_ECC_HW, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %101
  %109 = load i32, i32* @NFC_V3_CONFIG2_ECC_EN, align 4
  %110 = load i32, i32* %5, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %108, %101
  %113 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %114 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %117 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sdiv i32 %115, %118
  %120 = call i64 @ffs(i32 %119)
  %121 = sub nsw i64 %120, 6
  %122 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %4, align 8
  %123 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %122, i32 0, i32 1
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @NFC_V3_CONFIG2_PPB(i64 %121, i32 %126)
  %128 = load i32, i32* %5, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %5, align 4
  %130 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %131 = call i32 @get_eccsize(%struct.mtd_info* %130)
  %132 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %4, align 8
  %133 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %4, align 8
  %135 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp eq i32 %136, 8
  br i1 %137, label %138, label %142

138:                                              ; preds = %112
  %139 = load i32, i32* @NFC_V3_CONFIG2_ECC_MODE_8, align 4
  %140 = load i32, i32* %5, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %138, %112
  br label %143

143:                                              ; preds = %142, %96
  %144 = load i32, i32* %5, align 4
  %145 = load i64, i64* @NFC_V3_CONFIG2, align 8
  %146 = call i32 @writel(i32 %144, i64 %145)
  %147 = call i32 @NFC_V3_CONFIG3_NUM_OF_DEVICES(i32 0)
  %148 = load i32, i32* @NFC_V3_CONFIG3_NO_SDMA, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @NFC_V3_CONFIG3_RBB_MODE, align 4
  %151 = or i32 %149, %150
  %152 = call i32 @NFC_V3_CONFIG3_SBB(i32 6)
  %153 = or i32 %151, %152
  %154 = call i32 @NFC_V3_CONFIG3_ADD_OP(i32 0)
  %155 = or i32 %153, %154
  store i32 %155, i32* %6, align 4
  %156 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %157 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %143
  %163 = load i32, i32* @NFC_V3_CONFIG3_FW8, align 4
  %164 = load i32, i32* %6, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %6, align 4
  br label %166

166:                                              ; preds = %162, %143
  %167 = load i32, i32* %6, align 4
  %168 = load i64, i64* @NFC_V3_CONFIG3, align 8
  %169 = call i32 @writel(i32 %167, i64 %168)
  %170 = load i64, i64* @NFC_V3_DELAY_LINE, align 8
  %171 = call i32 @writel(i32 0, i64 %170)
  ret void
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.mxc_nand_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @NFC_V3_CONFIG1_RBA(i32) #1

declare dso_local i32 @NFC_V3_CONFIG2_SPAS(i32) #1

declare dso_local i32 @NFC_V3_CONFIG2_ST_CMD(i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @NFC_V3_CONFIG2_NUM_ADDR_PHASE1(i32) #1

declare dso_local i32 @NFC_V3_CONFIG2_PPB(i64, i32) #1

declare dso_local i64 @ffs(i32) #1

declare dso_local i32 @get_eccsize(%struct.mtd_info*) #1

declare dso_local i32 @NFC_V3_CONFIG3_NUM_OF_DEVICES(i32) #1

declare dso_local i32 @NFC_V3_CONFIG3_SBB(i32) #1

declare dso_local i32 @NFC_V3_CONFIG3_ADD_OP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
