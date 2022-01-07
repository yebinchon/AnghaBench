; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_pmecc_read_pg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_pmecc_read_pg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32* }
%struct.mtd_info = type { i32, i32 }

@NAND_ECC_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32, i32)* @atmel_nand_pmecc_read_pg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_nand_pmecc_read_pg(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mtd_info*, align 8
  %13 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %15 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %14)
  store %struct.mtd_info* %15, %struct.mtd_info** %12, align 8
  %16 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @nand_read_page_op(%struct.nand_chip* %16, i32 %17, i32 0, i32* null, i32 0)
  %19 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %20 = load i32, i32* @NAND_ECC_READ, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @atmel_nand_pmecc_enable(%struct.nand_chip* %19, i32 %20, i32 %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %6, align 4
  br label %50

27:                                               ; preds = %5
  %28 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %31 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @atmel_nand_read_buf(%struct.nand_chip* %28, i32* %29, i32 %32)
  %34 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %35 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %36 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %39 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @atmel_nand_read_buf(%struct.nand_chip* %34, i32* %37, i32 %40)
  %42 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @atmel_nand_pmecc_correct_data(%struct.nand_chip* %42, i32* %43, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @atmel_nand_pmecc_disable(%struct.nand_chip* %46, i32 %47)
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %27, %25
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @nand_read_page_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @atmel_nand_pmecc_enable(%struct.nand_chip*, i32, i32) #1

declare dso_local i32 @atmel_nand_read_buf(%struct.nand_chip*, i32*, i32) #1

declare dso_local i32 @atmel_nand_pmecc_correct_data(%struct.nand_chip*, i32*, i32) #1

declare dso_local i32 @atmel_nand_pmecc_disable(%struct.nand_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
