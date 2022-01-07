; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_ecc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_ecc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.atmel_nand_controller = type { i32 }

@atmel_nand_pmecc_read_page = common dso_local global i32 0, align 4
@atmel_nand_pmecc_write_page = common dso_local global i32 0, align 4
@atmel_nand_pmecc_read_page_raw = common dso_local global i32 0, align 4
@atmel_nand_pmecc_write_page_raw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unsupported ECC mode: %d\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @atmel_nand_ecc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_nand_ecc_init(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.atmel_nand_controller*, align 8
  %5 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %6 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %7 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.atmel_nand_controller* @to_nand_controller(i32 %8)
  store %struct.atmel_nand_controller* %9, %struct.atmel_nand_controller** %4, align 8
  %10 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %11 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %39 [
    i32 129, label %14
    i32 128, label %14
    i32 130, label %15
  ]

14:                                               ; preds = %1, %1
  br label %50

15:                                               ; preds = %1
  %16 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %17 = call i32 @atmel_nand_pmecc_init(%struct.nand_chip* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %51

22:                                               ; preds = %15
  %23 = load i32, i32* @atmel_nand_pmecc_read_page, align 4
  %24 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %25 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @atmel_nand_pmecc_write_page, align 4
  %28 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %29 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @atmel_nand_pmecc_read_page_raw, align 4
  %32 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %33 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @atmel_nand_pmecc_write_page_raw, align 4
  %36 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %37 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  br label %50

39:                                               ; preds = %1
  %40 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %4, align 8
  %41 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %44 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @ENOTSUPP, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %51

50:                                               ; preds = %22, %14
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %39, %20
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.atmel_nand_controller* @to_nand_controller(i32) #1

declare dso_local i32 @atmel_nand_pmecc_init(%struct.nand_chip*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
