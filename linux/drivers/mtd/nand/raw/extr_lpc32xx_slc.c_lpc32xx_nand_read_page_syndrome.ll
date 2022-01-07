; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_slc.c_lpc32xx_nand_read_page_syndrome.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_slc.c_lpc32xx_nand_read_page_syndrome.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_6__, i32*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 (%struct.nand_chip.0*, i32*, i32*, i32*)*, i32, i32 }
%struct.nand_chip.0 = type opaque
%struct.TYPE_4__ = type { i32 (%struct.nand_chip.1*, i32*, i32)* }
%struct.nand_chip.1 = type opaque
%struct.mtd_info = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.lpc32xx_nand_host = type { i64 }
%struct.mtd_oob_region = type { i32 }

@LPC32XX_ECC_SAVE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @lpc32xx_nand_read_page_syndrome to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_nand_read_page_syndrome(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca %struct.lpc32xx_nand_host*, align 8
  %12 = alloca %struct.mtd_oob_region, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %21 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %22 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %21)
  store %struct.mtd_info* %22, %struct.mtd_info** %10, align 8
  %23 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %24 = call %struct.lpc32xx_nand_host* @nand_get_controller_data(%struct.nand_chip* %23)
  store %struct.lpc32xx_nand_host* %24, %struct.lpc32xx_nand_host** %11, align 8
  %25 = bitcast %struct.mtd_oob_region* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 4, i1 false)
  %26 = load i32, i32* @LPC32XX_ECC_SAVE_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %18, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %19, align 8
  %30 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @nand_read_page_op(%struct.nand_chip* %30, i32 %31, i32 0, i32* null, i32 0)
  %33 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %36 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @lpc32xx_xfer(%struct.mtd_info* %33, i32* %34, i32 %38, i32 1)
  store i32 %39, i32* %15, align 4
  %40 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %41 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32 (%struct.nand_chip.1*, i32*, i32)*, i32 (%struct.nand_chip.1*, i32*, i32)** %42, align 8
  %44 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %45 = bitcast %struct.nand_chip* %44 to %struct.nand_chip.1*
  %46 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %47 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %50 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 %43(%struct.nand_chip.1* %45, i32* %48, i32 %51)
  %53 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %54 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i32*
  %57 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %58 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @lpc32xx_slc_ecc_copy(i32* %29, i32* %56, i32 %60)
  %62 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %63 = call i32 @mtd_ooblayout_ecc(%struct.mtd_info* %62, i32 0, %struct.mtd_oob_region* %12)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %4
  %67 = load i32, i32* %16, align 4
  store i32 %67, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %136

68:                                               ; preds = %4
  %69 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %70 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %12, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  store i32* %75, i32** %17, align 8
  store i32 0, i32* %14, align 4
  br label %76

76:                                               ; preds = %131, %68
  %77 = load i32, i32* %14, align 4
  %78 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %79 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %77, %81
  br i1 %82, label %83, label %134

83:                                               ; preds = %76
  %84 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %85 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32 (%struct.nand_chip.0*, i32*, i32*, i32*)*, i32 (%struct.nand_chip.0*, i32*, i32*, i32*)** %86, align 8
  %88 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %89 = bitcast %struct.nand_chip* %88 to %struct.nand_chip.0*
  %90 = load i32*, i32** %7, align 8
  %91 = load i32*, i32** %17, align 8
  %92 = load i32, i32* %14, align 4
  %93 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %94 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = mul nsw i32 %92, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %29, i64 %98
  %100 = call i32 %87(%struct.nand_chip.0* %89, i32* %90, i32* %91, i32* %99)
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %13, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %83
  %104 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %105 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  br label %116

109:                                              ; preds = %83
  %110 = load i32, i32* %13, align 4
  %111 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %112 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, %110
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %109, %103
  %117 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %118 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %7, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32* %123, i32** %7, align 8
  %124 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %125 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32*, i32** %17, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32* %130, i32** %17, align 8
  br label %131

131:                                              ; preds = %116
  %132 = load i32, i32* %14, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %14, align 4
  br label %76

134:                                              ; preds = %76
  %135 = load i32, i32* %15, align 4
  store i32 %135, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %136

136:                                              ; preds = %134, %66
  %137 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %137)
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.lpc32xx_nand_host* @nand_get_controller_data(%struct.nand_chip*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @nand_read_page_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @lpc32xx_xfer(%struct.mtd_info*, i32*, i32, i32) #1

declare dso_local i32 @lpc32xx_slc_ecc_copy(i32*, i32*, i32) #1

declare dso_local i32 @mtd_ooblayout_ecc(%struct.mtd_info*, i32, %struct.mtd_oob_region*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
