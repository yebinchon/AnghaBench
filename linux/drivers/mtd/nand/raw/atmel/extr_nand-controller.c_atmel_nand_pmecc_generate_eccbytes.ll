; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_pmecc_generate_eccbytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_pmecc_generate_eccbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__, i8*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.atmel_nand = type { i32 }
%struct.mtd_info = type { i32 }
%struct.atmel_nand_controller = type { i32 }
%struct.mtd_oob_region = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"Failed to transfer NAND page data (err = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32)* @atmel_nand_pmecc_generate_eccbytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_nand_pmecc_generate_eccbytes(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.atmel_nand*, align 8
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca %struct.atmel_nand_controller*, align 8
  %9 = alloca %struct.mtd_oob_region, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %14 = call %struct.atmel_nand* @to_atmel_nand(%struct.nand_chip* %13)
  store %struct.atmel_nand* %14, %struct.atmel_nand** %6, align 8
  %15 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %16 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %15)
  store %struct.mtd_info* %16, %struct.mtd_info** %7, align 8
  %17 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %18 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.atmel_nand_controller* @to_nand_controller(i32 %19)
  store %struct.atmel_nand_controller* %20, %struct.atmel_nand_controller** %8, align 8
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %73

24:                                               ; preds = %2
  %25 = load %struct.atmel_nand*, %struct.atmel_nand** %6, align 8
  %26 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @atmel_pmecc_wait_rdy(i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %8, align 8
  %33 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %3, align 4
  br label %73

38:                                               ; preds = %24
  %39 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %40 = call i32 @mtd_ooblayout_ecc(%struct.mtd_info* %39, i32 0, %struct.mtd_oob_region* %9)
  %41 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %42 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %9, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr i8, i8* %43, i64 %46
  store i8* %47, i8** %10, align 8
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %69, %38
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %51 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %49, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %48
  %56 = load %struct.atmel_nand*, %struct.atmel_nand** %6, align 8
  %57 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @atmel_pmecc_get_generated_eccbytes(i32 %58, i32 %59, i8* %60)
  %62 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %63 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %10, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr i8, i8* %66, i64 %67
  store i8* %68, i8** %10, align 8
  br label %69

69:                                               ; preds = %55
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %48

72:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %31, %23
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.atmel_nand* @to_atmel_nand(%struct.nand_chip*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.atmel_nand_controller* @to_nand_controller(i32) #1

declare dso_local i32 @atmel_pmecc_wait_rdy(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mtd_ooblayout_ecc(%struct.mtd_info*, i32, %struct.mtd_oob_region*) #1

declare dso_local i32 @atmel_pmecc_get_generated_eccbytes(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
