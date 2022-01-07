; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_randomizer_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_randomizer_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.mtd_info = type { i32, i32 }

@sunxi_nfc_randomizer_page_seeds = common dso_local global i32* null, align 8
@sunxi_nfc_randomizer_ecc512_seeds = common dso_local global i32* null, align 8
@sunxi_nfc_randomizer_ecc1024_seeds = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32, i32)* @sunxi_nfc_randomizer_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_nfc_randomizer_state(%struct.nand_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %11 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %10)
  store %struct.mtd_info* %11, %struct.mtd_info** %7, align 8
  %12 = load i32*, i32** @sunxi_nfc_randomizer_page_seeds, align 8
  store i32* %12, i32** %8, align 8
  %13 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %14 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %17 = call i32 @mtd_div_by_ws(i32 %15, %struct.mtd_info* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32*, i32** @sunxi_nfc_randomizer_page_seeds, align 8
  %20 = call i32 @ARRAY_SIZE(i32* %19)
  %21 = icmp sgt i32 %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32*, i32** @sunxi_nfc_randomizer_page_seeds, align 8
  %24 = call i32 @ARRAY_SIZE(i32* %23)
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %22, %3
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %30 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 512
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32*, i32** @sunxi_nfc_randomizer_ecc512_seeds, align 8
  store i32* %34, i32** %8, align 8
  br label %37

35:                                               ; preds = %28
  %36 = load i32*, i32** @sunxi_nfc_randomizer_ecc1024_seeds, align 8
  store i32* %36, i32** %8, align 8
  br label %37

37:                                               ; preds = %35, %33
  br label %38

38:                                               ; preds = %37, %25
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %9, align 4
  %42 = srem i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = load i32, i32* %44, align 4
  ret i32 %45
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @mtd_div_by_ws(i32, %struct.mtd_info*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
