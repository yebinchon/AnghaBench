; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_hw_ecc_hmg_read_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_hw_ecc_hmg_read_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32*, i32 }
%struct.marvell_hw_ecc_layout = type { i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.marvell_hw_ecc_layout* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @marvell_nfc_hw_ecc_hmg_read_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_nfc_hw_ecc_hmg_read_page(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.marvell_hw_ecc_layout*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %16 = call %struct.TYPE_2__* @to_marvell_nand(%struct.nand_chip* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %17, align 8
  store %struct.marvell_hw_ecc_layout* %18, %struct.marvell_hw_ecc_layout** %10, align 8
  %19 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %10, align 8
  %20 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %10, align 8
  %23 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add i32 %21, %24
  %26 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %10, align 8
  %27 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = add i32 %25, %28
  store i32 %29, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %30 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %31 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %32 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @marvell_nfc_select_target(%struct.nand_chip* %30, i32 %33)
  %35 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %36 = call i32 @marvell_nfc_enable_hw_ecc(%struct.nand_chip* %35)
  %37 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %40 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @marvell_nfc_hw_ecc_hmg_do_read_page(%struct.nand_chip* %37, i32* %38, i32* %41, i32 0, i32 %42)
  %44 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %45 = call i32 @marvell_nfc_hw_ecc_correct(%struct.nand_chip* %44, i32* %12)
  store i32 %45, i32* %13, align 4
  %46 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %47 = call i32 @marvell_nfc_disable_hw_ecc(%struct.nand_chip* %46)
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %4
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %5, align 4
  br label %79

52:                                               ; preds = %4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i32* @kmalloc(i32 %53, i32 %54)
  store i32* %55, i32** %14, align 8
  %56 = load i32*, i32** %14, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %79

61:                                               ; preds = %52
  %62 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %63 = load i32*, i32** %14, align 8
  %64 = load i32*, i32** %14, align 8
  %65 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %10, align 8
  %66 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @marvell_nfc_hw_ecc_hmg_do_read_page(%struct.nand_chip* %62, i32* %63, i32* %69, i32 1, i32 %70)
  %72 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %73 = load i32*, i32** %14, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @marvell_nfc_check_empty_chunk(%struct.nand_chip* %72, i32* %73, i32 %74, i32* null, i32 0, i32* null, i32 0, i32* %12)
  %76 = load i32*, i32** %14, align 8
  %77 = call i32 @kfree(i32* %76)
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %61, %58, %50
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local %struct.TYPE_2__* @to_marvell_nand(%struct.nand_chip*) #1

declare dso_local i32 @marvell_nfc_select_target(%struct.nand_chip*, i32) #1

declare dso_local i32 @marvell_nfc_enable_hw_ecc(%struct.nand_chip*) #1

declare dso_local i32 @marvell_nfc_hw_ecc_hmg_do_read_page(%struct.nand_chip*, i32*, i32*, i32, i32) #1

declare dso_local i32 @marvell_nfc_hw_ecc_correct(%struct.nand_chip*, i32*) #1

declare dso_local i32 @marvell_nfc_disable_hw_ecc(%struct.nand_chip*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @marvell_nfc_check_empty_chunk(%struct.nand_chip*, i32*, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
