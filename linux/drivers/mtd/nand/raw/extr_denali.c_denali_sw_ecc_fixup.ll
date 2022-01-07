; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_sw_ecc_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_sw_ecc_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.denali_controller = type { i32, i64 }
%struct.mtd_ecc_stats = type { i32 }
%struct.TYPE_4__ = type { %struct.mtd_ecc_stats }

@ECC_ERROR_ADDRESS = common dso_local global i64 0, align 8
@ECC_ERROR_ADDRESS__SECTOR = common dso_local global i32 0, align 4
@ECC_ERROR_ADDRESS__OFFSET = common dso_local global i32 0, align 4
@ERR_CORRECTION_INFO = common dso_local global i64 0, align 8
@ERR_CORRECTION_INFO__BYTE = common dso_local global i32 0, align 4
@ERR_CORRECTION_INFO__DEVICE = common dso_local global i32 0, align 4
@ERR_CORRECTION_INFO__UNCOR = common dso_local global i32 0, align 4
@ERR_CORRECTION_INFO__LAST_ERR = common dso_local global i32 0, align 4
@INTR__ECC_TRANSACTION_DONE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i64*, i32*)* @denali_sw_ecc_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @denali_sw_ecc_fixup(%struct.nand_chip* %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.denali_controller*, align 8
  %9 = alloca %struct.mtd_ecc_stats*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %23 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %24 = call %struct.denali_controller* @to_denali_controller(%struct.nand_chip* %23)
  store %struct.denali_controller* %24, %struct.denali_controller** %8, align 8
  %25 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %26 = call %struct.TYPE_4__* @nand_to_mtd(%struct.nand_chip* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store %struct.mtd_ecc_stats* %27, %struct.mtd_ecc_stats** %9, align 8
  %28 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %29 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %19, align 4
  %32 = load %struct.denali_controller*, %struct.denali_controller** %8, align 8
  %33 = call i32 @denali_reset_irq(%struct.denali_controller* %32)
  br label %34

34:                                               ; preds = %123, %3
  %35 = load %struct.denali_controller*, %struct.denali_controller** %8, align 8
  %36 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ECC_ERROR_ADDRESS, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @ioread32(i64 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* @ECC_ERROR_ADDRESS__SECTOR, align 4
  %42 = load i32, i32* %13, align 4
  %43 = call i8* @FIELD_GET(i32 %41, i32 %42)
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* @ECC_ERROR_ADDRESS__OFFSET, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i8* @FIELD_GET(i32 %45, i32 %46)
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* %15, align 4
  %49 = load %struct.denali_controller*, %struct.denali_controller** %8, align 8
  %50 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ERR_CORRECTION_INFO, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @ioread32(i64 %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* @ERR_CORRECTION_INFO__BYTE, align 4
  %56 = load i32, i32* %14, align 4
  %57 = call i8* @FIELD_GET(i32 %55, i32 %56)
  %58 = ptrtoint i8* %57 to i32
  store i32 %58, i32* %18, align 4
  %59 = load i32, i32* @ERR_CORRECTION_INFO__DEVICE, align 4
  %60 = load i32, i32* %14, align 4
  %61 = call i8* @FIELD_GET(i32 %59, i32 %60)
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %19, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %66, %34
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @ERR_CORRECTION_INFO__UNCOR, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load i32, i32* %16, align 4
  %74 = call i64 @BIT(i32 %73)
  %75 = load i64*, i64** %6, align 8
  %76 = load i64, i64* %75, align 8
  %77 = or i64 %76, %74
  store i64 %77, i64* %75, align 8
  br label %121

78:                                               ; preds = %67
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %120

82:                                               ; preds = %78
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %10, align 4
  %85 = mul i32 %83, %84
  %86 = load i32, i32* %15, align 4
  %87 = add i32 %85, %86
  %88 = load %struct.denali_controller*, %struct.denali_controller** %8, align 8
  %89 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = mul i32 %87, %90
  %92 = load i32, i32* %17, align 4
  %93 = add i32 %91, %92
  store i32 %93, i32* %21, align 4
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* %21, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %18, align 4
  %100 = xor i32 %98, %99
  %101 = call i32 @hweight8(i32 %100)
  store i32 %101, i32* %22, align 4
  %102 = load i32, i32* %18, align 4
  %103 = load i32*, i32** %7, align 8
  %104 = load i32, i32* %21, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = xor i32 %107, %102
  store i32 %108, i32* %106, align 4
  %109 = load i32, i32* %22, align 4
  %110 = load %struct.mtd_ecc_stats*, %struct.mtd_ecc_stats** %9, align 8
  %111 = getelementptr inbounds %struct.mtd_ecc_stats, %struct.mtd_ecc_stats* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = add i32 %112, %109
  store i32 %113, i32* %111, align 4
  %114 = load i32, i32* %22, align 4
  %115 = load i32, i32* %11, align 4
  %116 = add i32 %115, %114
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @max(i32 %117, i32 %118)
  store i32 %119, i32* %12, align 4
  br label %120

120:                                              ; preds = %82, %78
  br label %121

121:                                              ; preds = %120, %72
  %122 = load i32, i32* %16, align 4
  store i32 %122, i32* %19, align 4
  br label %123

123:                                              ; preds = %121
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* @ERR_CORRECTION_INFO__LAST_ERR, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  br i1 %128, label %34, label %129

129:                                              ; preds = %123
  %130 = load %struct.denali_controller*, %struct.denali_controller** %8, align 8
  %131 = load i32, i32* @INTR__ECC_TRANSACTION_DONE, align 4
  %132 = call i32 @denali_wait_for_irq(%struct.denali_controller* %130, i32 %131)
  store i32 %132, i32* %20, align 4
  %133 = load i32, i32* %20, align 4
  %134 = load i32, i32* @INTR__ECC_TRANSACTION_DONE, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %129
  %138 = load i32, i32* @EIO, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %4, align 4
  br label %142

140:                                              ; preds = %129
  %141 = load i32, i32* %12, align 4
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %140, %137
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local %struct.denali_controller* @to_denali_controller(%struct.nand_chip*) #1

declare dso_local %struct.TYPE_4__* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @denali_reset_irq(%struct.denali_controller*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i8* @FIELD_GET(i32, i32) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @hweight8(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @denali_wait_for_irq(%struct.denali_controller*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
