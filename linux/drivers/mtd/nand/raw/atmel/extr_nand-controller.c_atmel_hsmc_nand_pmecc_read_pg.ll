; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_hsmc_nand_pmecc_read_pg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_hsmc_nand_pmecc_read_pg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.mtd_info = type { i32 }
%struct.atmel_nand = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.atmel_hsmc_nand_controller = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32* }

@ATMEL_NAND_NATIVE_RB = common dso_local global i64 0, align 8
@NAND_CMD_READ0 = common dso_local global i32 0, align 4
@NAND_CMD_READSTART = common dso_local global i32 0, align 4
@ATMEL_NFC_READ_DATA = common dso_local global i32 0, align 4
@NAND_ECC_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to load NAND page data (err = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32, i32)* @atmel_hsmc_nand_pmecc_read_pg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_hsmc_nand_pmecc_read_pg(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mtd_info*, align 8
  %13 = alloca %struct.atmel_nand*, align 8
  %14 = alloca %struct.atmel_hsmc_nand_controller*, align 8
  %15 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %17 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %16)
  store %struct.mtd_info* %17, %struct.mtd_info** %12, align 8
  %18 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %19 = call %struct.atmel_nand* @to_atmel_nand(%struct.nand_chip* %18)
  store %struct.atmel_nand* %19, %struct.atmel_nand** %13, align 8
  %20 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %21 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.atmel_hsmc_nand_controller* @to_hsmc_nand_controller(i32 %22)
  store %struct.atmel_hsmc_nand_controller* %23, %struct.atmel_hsmc_nand_controller** %14, align 8
  %24 = load %struct.atmel_nand*, %struct.atmel_nand** %13, align 8
  %25 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ATMEL_NAND_NATIVE_RB, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %5
  %33 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @nand_read_page_op(%struct.nand_chip* %33, i32 %34, i32 0, i32* null, i32 0)
  %36 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @atmel_nand_pmecc_read_pg(%struct.nand_chip* %36, i32* %37, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %6, align 4
  br label %124

42:                                               ; preds = %5
  %43 = load i32, i32* @NAND_CMD_READ0, align 4
  %44 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %14, align 8
  %45 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %14, align 8
  %49 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %47, i64 %53
  store i32 %43, i32* %54, align 4
  %55 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %56 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %57, 512
  br i1 %58, label %59, label %72

59:                                               ; preds = %42
  %60 = load i32, i32* @NAND_CMD_READSTART, align 4
  %61 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %14, align 8
  %62 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %14, align 8
  %66 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %64, i64 %70
  store i32 %60, i32* %71, align 4
  br label %72

72:                                               ; preds = %59, %42
  %73 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @atmel_nfc_set_op_addr(%struct.nand_chip* %73, i32 %74, i32 0)
  %76 = load %struct.atmel_nand*, %struct.atmel_nand** %13, align 8
  %77 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %14, align 8
  %82 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* @ATMEL_NFC_READ_DATA, align 4
  %85 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %14, align 8
  %86 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 8
  %88 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %89 = load i32, i32* @NAND_ECC_READ, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @atmel_nand_pmecc_enable(%struct.nand_chip* %88, i32 %89, i32 %90)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %72
  %95 = load i32, i32* %15, align 4
  store i32 %95, i32* %6, align 4
  br label %124

96:                                               ; preds = %72
  %97 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %14, align 8
  %98 = call i32 @atmel_nfc_exec_op(%struct.atmel_hsmc_nand_controller* %97, i32 0)
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %15, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %96
  %102 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @atmel_nand_pmecc_disable(%struct.nand_chip* %102, i32 %103)
  %105 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %14, align 8
  %106 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %15, align 4
  %110 = call i32 @dev_err(i32 %108, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %15, align 4
  store i32 %111, i32* %6, align 4
  br label %124

112:                                              ; preds = %96
  %113 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %114 = load i32*, i32** %8, align 8
  %115 = call i32 @atmel_nfc_copy_from_sram(%struct.nand_chip* %113, i32* %114, i32 1)
  %116 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %117 = load i32*, i32** %8, align 8
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @atmel_nand_pmecc_correct_data(%struct.nand_chip* %116, i32* %117, i32 %118)
  store i32 %119, i32* %15, align 4
  %120 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @atmel_nand_pmecc_disable(%struct.nand_chip* %120, i32 %121)
  %123 = load i32, i32* %15, align 4
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %112, %101, %94, %32
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.atmel_nand* @to_atmel_nand(%struct.nand_chip*) #1

declare dso_local %struct.atmel_hsmc_nand_controller* @to_hsmc_nand_controller(i32) #1

declare dso_local i32 @nand_read_page_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @atmel_nand_pmecc_read_pg(%struct.nand_chip*, i32*, i32, i32, i32) #1

declare dso_local i32 @atmel_nfc_set_op_addr(%struct.nand_chip*, i32, i32) #1

declare dso_local i32 @atmel_nand_pmecc_enable(%struct.nand_chip*, i32, i32) #1

declare dso_local i32 @atmel_nfc_exec_op(%struct.atmel_hsmc_nand_controller*, i32) #1

declare dso_local i32 @atmel_nand_pmecc_disable(%struct.nand_chip*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @atmel_nfc_copy_from_sram(%struct.nand_chip*, i32*, i32) #1

declare dso_local i32 @atmel_nand_pmecc_correct_data(%struct.nand_chip*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
