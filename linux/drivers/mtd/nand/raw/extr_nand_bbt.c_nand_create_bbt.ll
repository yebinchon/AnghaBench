; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_bbt.c_nand_create_bbt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_bbt.c_nand_create_bbt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32, i32*, i32* }

@NAND_BBT_USE_FLASH = common dso_local global i32 0, align 4
@NAND_BBT_NO_OOB = common dso_local global i32 0, align 4
@bbt_main_no_oob_descr = common dso_local global i32 0, align 4
@bbt_mirror_no_oob_descr = common dso_local global i32 0, align 4
@bbt_main_descr = common dso_local global i32 0, align 4
@bbt_mirror_descr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nand_create_bbt(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %5 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %6 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @NAND_BBT_USE_FLASH, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %1
  %12 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %13 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %34, label %16

16:                                               ; preds = %11
  %17 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %18 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @NAND_BBT_NO_OOB, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %25 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %24, i32 0, i32 3
  store i32* @bbt_main_no_oob_descr, i32** %25, align 8
  %26 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %27 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %26, i32 0, i32 2
  store i32* @bbt_mirror_no_oob_descr, i32** %27, align 8
  br label %33

28:                                               ; preds = %16
  %29 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %30 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %29, i32 0, i32 3
  store i32* @bbt_main_descr, i32** %30, align 8
  %31 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %32 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %31, i32 0, i32 2
  store i32* @bbt_mirror_descr, i32** %32, align 8
  br label %33

33:                                               ; preds = %28, %23
  br label %34

34:                                               ; preds = %33, %11
  br label %40

35:                                               ; preds = %1
  %36 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %37 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %36, i32 0, i32 3
  store i32* null, i32** %37, align 8
  %38 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %39 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %38, i32 0, i32 2
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %35, %34
  %41 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %42 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %40
  %46 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %47 = call i32 @nand_create_badblock_pattern(%struct.nand_chip* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %59

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %40
  %54 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %55 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %56 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @nand_scan_bbt(%struct.nand_chip* %54, i32 %57)
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %53, %50
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @nand_create_badblock_pattern(%struct.nand_chip*) #1

declare dso_local i32 @nand_scan_bbt(%struct.nand_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
