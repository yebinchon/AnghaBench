; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_hsmc_nand_pmecc_write_pg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_hsmc_nand_pmecc_write_pg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32 (%struct.nand_chip.0*)* }
%struct.nand_chip.0 = type opaque
%struct.mtd_info = type { i32 }
%struct.atmel_nand = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.atmel_hsmc_nand_controller = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32*, i32 }

@NAND_CMD_SEQIN = common dso_local global i32 0, align 4
@ATMEL_NFC_WRITE_DATA = common dso_local global i32 0, align 4
@NAND_ECC_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Failed to transfer NAND page data (err = %d)\0A\00", align 1
@NAND_CMD_PAGEPROG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to program NAND page (err = %d)\0A\00", align 1
@NAND_STATUS_FAIL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32, i32)* @atmel_hsmc_nand_pmecc_write_pg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_hsmc_nand_pmecc_write_pg(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %16 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %18 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %17)
  store %struct.mtd_info* %18, %struct.mtd_info** %12, align 8
  %19 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %20 = call %struct.atmel_nand* @to_atmel_nand(%struct.nand_chip* %19)
  store %struct.atmel_nand* %20, %struct.atmel_nand** %13, align 8
  %21 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %22 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.atmel_hsmc_nand_controller* @to_hsmc_nand_controller(i32 %23)
  store %struct.atmel_hsmc_nand_controller* %24, %struct.atmel_hsmc_nand_controller** %14, align 8
  %25 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @atmel_nfc_copy_to_sram(%struct.nand_chip* %25, i32* %26, i32 0)
  %28 = load i32, i32* @NAND_CMD_SEQIN, align 4
  %29 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %14, align 8
  %30 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %28, i32* %33, align 4
  %34 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %14, align 8
  %35 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @atmel_nfc_set_op_addr(%struct.nand_chip* %37, i32 %38, i32 0)
  %40 = load %struct.atmel_nand*, %struct.atmel_nand** %13, align 8
  %41 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %14, align 8
  %46 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* @ATMEL_NFC_WRITE_DATA, align 4
  %49 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %14, align 8
  %50 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  store i32 %48, i32* %51, align 8
  %52 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %53 = load i32, i32* @NAND_ECC_WRITE, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @atmel_nand_pmecc_enable(%struct.nand_chip* %52, i32 %53, i32 %54)
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %5
  %59 = load i32, i32* %15, align 4
  store i32 %59, i32* %6, align 4
  br label %141

60:                                               ; preds = %5
  %61 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %14, align 8
  %62 = call i32 @atmel_nfc_exec_op(%struct.atmel_hsmc_nand_controller* %61, i32 0)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %60
  %66 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @atmel_nand_pmecc_disable(%struct.nand_chip* %66, i32 %67)
  %69 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %14, align 8
  %70 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %15, align 4
  store i32 %75, i32* %6, align 4
  br label %141

76:                                               ; preds = %60
  %77 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @atmel_nand_pmecc_generate_eccbytes(%struct.nand_chip* %77, i32 %78)
  store i32 %79, i32* %15, align 4
  %80 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @atmel_nand_pmecc_disable(%struct.nand_chip* %80, i32 %81)
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i32, i32* %15, align 4
  store i32 %86, i32* %6, align 4
  br label %141

87:                                               ; preds = %76
  %88 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %89 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %90 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %93 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @atmel_nand_write_buf(%struct.nand_chip* %88, i32 %91, i32 %94)
  %96 = load i32, i32* @NAND_CMD_PAGEPROG, align 4
  %97 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %14, align 8
  %98 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  store i32 %96, i32* %101, align 4
  %102 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %14, align 8
  %103 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  %105 = load %struct.atmel_nand*, %struct.atmel_nand** %13, align 8
  %106 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %105, i32 0, i32 0
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %14, align 8
  %111 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 4
  %113 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %14, align 8
  %114 = call i32 @atmel_nfc_exec_op(%struct.atmel_hsmc_nand_controller* %113, i32 0)
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %15, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %87
  %118 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %14, align 8
  %119 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %15, align 4
  %123 = call i32 @dev_err(i32 %121, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %117, %87
  %125 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %126 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32 (%struct.nand_chip.0*)*, i32 (%struct.nand_chip.0*)** %127, align 8
  %129 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %130 = bitcast %struct.nand_chip* %129 to %struct.nand_chip.0*
  %131 = call i32 %128(%struct.nand_chip.0* %130)
  store i32 %131, i32* %16, align 4
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* @NAND_STATUS_FAIL, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %124
  %137 = load i32, i32* @EIO, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %6, align 4
  br label %141

139:                                              ; preds = %124
  %140 = load i32, i32* %15, align 4
  store i32 %140, i32* %6, align 4
  br label %141

141:                                              ; preds = %139, %136, %85, %65, %58
  %142 = load i32, i32* %6, align 4
  ret i32 %142
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.atmel_nand* @to_atmel_nand(%struct.nand_chip*) #1

declare dso_local %struct.atmel_hsmc_nand_controller* @to_hsmc_nand_controller(i32) #1

declare dso_local i32 @atmel_nfc_copy_to_sram(%struct.nand_chip*, i32*, i32) #1

declare dso_local i32 @atmel_nfc_set_op_addr(%struct.nand_chip*, i32, i32) #1

declare dso_local i32 @atmel_nand_pmecc_enable(%struct.nand_chip*, i32, i32) #1

declare dso_local i32 @atmel_nfc_exec_op(%struct.atmel_hsmc_nand_controller*, i32) #1

declare dso_local i32 @atmel_nand_pmecc_disable(%struct.nand_chip*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @atmel_nand_pmecc_generate_eccbytes(%struct.nand_chip*, i32) #1

declare dso_local i32 @atmel_nand_write_buf(%struct.nand_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
