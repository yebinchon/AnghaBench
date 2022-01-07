; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_pmecc_write_pg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_pmecc_write_pg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32* }
%struct.mtd_info = type { i32, i32 }
%struct.atmel_nand = type { i32 }

@NAND_ECC_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32, i32)* @atmel_nand_pmecc_write_pg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_nand_pmecc_write_pg(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mtd_info*, align 8
  %13 = alloca %struct.atmel_nand*, align 8
  %14 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %16 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %15)
  store %struct.mtd_info* %16, %struct.mtd_info** %12, align 8
  %17 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %18 = call %struct.atmel_nand* @to_atmel_nand(%struct.nand_chip* %17)
  store %struct.atmel_nand* %18, %struct.atmel_nand** %13, align 8
  %19 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @nand_prog_page_begin_op(%struct.nand_chip* %19, i32 %20, i32 0, i32* null, i32 0)
  %22 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %23 = load i32, i32* @NAND_ECC_WRITE, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @atmel_nand_pmecc_enable(%struct.nand_chip* %22, i32 %23, i32 %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %6, align 4
  br label %62

30:                                               ; preds = %5
  %31 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %34 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @atmel_nand_write_buf(%struct.nand_chip* %31, i32* %32, i32 %35)
  %37 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @atmel_nand_pmecc_generate_eccbytes(%struct.nand_chip* %37, i32 %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %30
  %43 = load %struct.atmel_nand*, %struct.atmel_nand** %13, align 8
  %44 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @atmel_pmecc_disable(i32 %45)
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %6, align 4
  br label %62

48:                                               ; preds = %30
  %49 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @atmel_nand_pmecc_disable(%struct.nand_chip* %49, i32 %50)
  %52 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %53 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %54 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %57 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @atmel_nand_write_buf(%struct.nand_chip* %52, i32* %55, i32 %58)
  %60 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %61 = call i32 @nand_prog_page_end_op(%struct.nand_chip* %60)
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %48, %42, %28
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.atmel_nand* @to_atmel_nand(%struct.nand_chip*) #1

declare dso_local i32 @nand_prog_page_begin_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @atmel_nand_pmecc_enable(%struct.nand_chip*, i32, i32) #1

declare dso_local i32 @atmel_nand_write_buf(%struct.nand_chip*, i32*, i32) #1

declare dso_local i32 @atmel_nand_pmecc_generate_eccbytes(%struct.nand_chip*, i32) #1

declare dso_local i32 @atmel_pmecc_disable(i32) #1

declare dso_local i32 @atmel_nand_pmecc_disable(%struct.nand_chip*, i32) #1

declare dso_local i32 @nand_prog_page_end_op(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
