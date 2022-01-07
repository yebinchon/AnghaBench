; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_hsmc_nand_select_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_hsmc_nand_select_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.mtd_info = type { i32, i32 }
%struct.atmel_nand = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.atmel_hsmc_nand_controller = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@ATMEL_HSMC_NFC_CTRL = common dso_local global i32 0, align 4
@ATMEL_HSMC_NFC_CTRL_DIS = common dso_local global i32 0, align 4
@ATMEL_NAND_NATIVE_RB = common dso_local global i64 0, align 8
@atmel_hsmc_nand_dev_ready = common dso_local global i32 0, align 4
@ATMEL_HSMC_NFC_CFG = common dso_local global i32 0, align 4
@ATMEL_HSMC_NFC_CFG_PAGESIZE_MASK = common dso_local global i32 0, align 4
@ATMEL_HSMC_NFC_CFG_SPARESIZE_MASK = common dso_local global i32 0, align 4
@ATMEL_HSMC_NFC_CFG_RSPARE = common dso_local global i32 0, align 4
@ATMEL_HSMC_NFC_CFG_WSPARE = common dso_local global i32 0, align 4
@ATMEL_HSMC_NFC_CTRL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32)* @atmel_hsmc_nand_select_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_hsmc_nand_select_chip(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.atmel_nand*, align 8
  %7 = alloca %struct.atmel_hsmc_nand_controller*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %9 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %8)
  store %struct.mtd_info* %9, %struct.mtd_info** %5, align 8
  %10 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %11 = call %struct.atmel_nand* @to_atmel_nand(%struct.nand_chip* %10)
  store %struct.atmel_nand* %11, %struct.atmel_nand** %6, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %13 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.atmel_hsmc_nand_controller* @to_hsmc_nand_controller(i32 %14)
  store %struct.atmel_hsmc_nand_controller* %15, %struct.atmel_hsmc_nand_controller** %7, align 8
  %16 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @atmel_nand_select_chip(%struct.nand_chip* %16, i32 %17)
  %19 = load %struct.atmel_nand*, %struct.atmel_nand** %6, align 8
  %20 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = icmp ne %struct.TYPE_6__* %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %2
  %24 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %7, align 8
  %25 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ATMEL_HSMC_NFC_CTRL, align 4
  %29 = load i32, i32* @ATMEL_HSMC_NFC_CTRL_DIS, align 4
  %30 = call i32 @regmap_write(i32 %27, i32 %28, i32 %29)
  br label %77

31:                                               ; preds = %2
  %32 = load %struct.atmel_nand*, %struct.atmel_nand** %6, align 8
  %33 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ATMEL_NAND_NATIVE_RB, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load i32, i32* @atmel_hsmc_nand_dev_ready, align 4
  %42 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %43 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  br label %45

45:                                               ; preds = %40, %31
  %46 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %7, align 8
  %47 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ATMEL_HSMC_NFC_CFG, align 4
  %51 = load i32, i32* @ATMEL_HSMC_NFC_CFG_PAGESIZE_MASK, align 4
  %52 = load i32, i32* @ATMEL_HSMC_NFC_CFG_SPARESIZE_MASK, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @ATMEL_HSMC_NFC_CFG_RSPARE, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @ATMEL_HSMC_NFC_CFG_WSPARE, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %59 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ATMEL_HSMC_NFC_CFG_PAGESIZE(i32 %60)
  %62 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %63 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ATMEL_HSMC_NFC_CFG_SPARESIZE(i32 %64)
  %66 = or i32 %61, %65
  %67 = load i32, i32* @ATMEL_HSMC_NFC_CFG_RSPARE, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @regmap_update_bits(i32 %49, i32 %50, i32 %57, i32 %68)
  %70 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %7, align 8
  %71 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @ATMEL_HSMC_NFC_CTRL, align 4
  %75 = load i32, i32* @ATMEL_HSMC_NFC_CTRL_EN, align 4
  %76 = call i32 @regmap_write(i32 %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %45, %23
  ret void
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.atmel_nand* @to_atmel_nand(%struct.nand_chip*) #1

declare dso_local %struct.atmel_hsmc_nand_controller* @to_hsmc_nand_controller(i32) #1

declare dso_local i32 @atmel_nand_select_chip(%struct.nand_chip*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @ATMEL_HSMC_NFC_CFG_PAGESIZE(i32) #1

declare dso_local i32 @ATMEL_HSMC_NFC_CFG_SPARESIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
