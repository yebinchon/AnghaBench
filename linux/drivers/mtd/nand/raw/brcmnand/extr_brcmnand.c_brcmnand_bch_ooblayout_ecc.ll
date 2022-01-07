; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_bch_ooblayout_ecc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_bch_ooblayout_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.mtd_oob_region = type { i64, i64 }
%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.brcmnand_host = type { %struct.brcmnand_cfg }
%struct.brcmnand_cfg = type { i32, i32, i32 }

@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)* @brcmnand_bch_ooblayout_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmnand_bch_ooblayout_ecc(%struct.mtd_info* %0, i32 %1, %struct.mtd_oob_region* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_oob_region*, align 8
  %8 = alloca %struct.nand_chip*, align 8
  %9 = alloca %struct.brcmnand_host*, align 8
  %10 = alloca %struct.brcmnand_cfg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mtd_oob_region* %2, %struct.mtd_oob_region** %7, align 8
  %13 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %14 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %13)
  store %struct.nand_chip* %14, %struct.nand_chip** %8, align 8
  %15 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %16 = call %struct.brcmnand_host* @nand_get_controller_data(%struct.nand_chip* %15)
  store %struct.brcmnand_host* %16, %struct.brcmnand_host** %9, align 8
  %17 = load %struct.brcmnand_host*, %struct.brcmnand_host** %9, align 8
  %18 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %17, i32 0, i32 0
  store %struct.brcmnand_cfg* %18, %struct.brcmnand_cfg** %10, align 8
  %19 = load %struct.brcmnand_cfg*, %struct.brcmnand_cfg** %10, align 8
  %20 = getelementptr inbounds %struct.brcmnand_cfg, %struct.brcmnand_cfg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.brcmnand_cfg*, %struct.brcmnand_cfg** %10, align 8
  %23 = getelementptr inbounds %struct.brcmnand_cfg, %struct.brcmnand_cfg* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %21, %24
  store i32 %25, i32* %11, align 4
  %26 = load %struct.brcmnand_cfg*, %struct.brcmnand_cfg** %10, align 8
  %27 = getelementptr inbounds %struct.brcmnand_cfg, %struct.brcmnand_cfg* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.brcmnand_cfg*, %struct.brcmnand_cfg** %10, align 8
  %30 = getelementptr inbounds %struct.brcmnand_cfg, %struct.brcmnand_cfg* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 512, %31
  %33 = sdiv i32 %28, %32
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load i32, i32* @ERANGE, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %59

40:                                               ; preds = %3
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  %43 = load i32, i32* %11, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %47 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %45, %49
  %51 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %52 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %54 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %58 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %40, %37
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.brcmnand_host* @nand_get_controller_data(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
