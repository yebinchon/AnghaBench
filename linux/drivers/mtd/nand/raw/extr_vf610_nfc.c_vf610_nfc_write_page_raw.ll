; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_vf610_nfc.c_vf610_nfc_write_page_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_vf610_nfc.c_vf610_nfc_write_page_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.vf610_nfc = type { i32 }
%struct.mtd_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @vf610_nfc_write_page_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vf610_nfc_write_page_raw(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vf610_nfc*, align 8
  %11 = alloca %struct.mtd_info*, align 8
  %12 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %14 = call %struct.vf610_nfc* @chip_to_nfc(%struct.nand_chip* %13)
  store %struct.vf610_nfc* %14, %struct.vf610_nfc** %10, align 8
  %15 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %16 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %15)
  store %struct.mtd_info* %16, %struct.mtd_info** %11, align 8
  %17 = load %struct.vf610_nfc*, %struct.vf610_nfc** %10, align 8
  %18 = getelementptr inbounds %struct.vf610_nfc, %struct.vf610_nfc* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %23 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @nand_prog_page_begin_op(%struct.nand_chip* %19, i32 %20, i32 0, i32* %21, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %33 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %34 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %37 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @nand_write_data_op(%struct.nand_chip* %32, i32 %35, i32 %38, i32 0)
  store i32 %39, i32* %12, align 4
  br label %40

40:                                               ; preds = %31, %28, %4
  %41 = load %struct.vf610_nfc*, %struct.vf610_nfc** %10, align 8
  %42 = getelementptr inbounds %struct.vf610_nfc, %struct.vf610_nfc* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %5, align 4
  br label %50

47:                                               ; preds = %40
  %48 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %49 = call i32 @nand_prog_page_end_op(%struct.nand_chip* %48)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %47, %45
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.vf610_nfc* @chip_to_nfc(%struct.nand_chip*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @nand_prog_page_begin_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @nand_write_data_op(%struct.nand_chip*, i32, i32, i32) #1

declare dso_local i32 @nand_prog_page_end_op(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
