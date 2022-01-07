; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_hw_ecc_write_extra_oob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_hw_ecc_write_extra_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.nand_ecc_ctrl }
%struct.nand_ecc_ctrl = type { i32, i32 }
%struct.mtd_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32*, i32*, i32)* @sunxi_nfc_hw_ecc_write_extra_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunxi_nfc_hw_ecc_write_extra_oob(%struct.nand_chip* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca %struct.nand_ecc_ctrl*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %14 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %13)
  store %struct.mtd_info* %14, %struct.mtd_info** %9, align 8
  %15 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %16 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %15, i32 0, i32 0
  store %struct.nand_ecc_ctrl* %16, %struct.nand_ecc_ctrl** %10, align 8
  %17 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %10, align 8
  %18 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 4
  %21 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %10, align 8
  %22 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %20, %23
  store i32 %24, i32* %11, align 4
  %25 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %26 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %11, align 4
  %29 = sub nsw i32 %27, %28
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  br label %69

33:                                               ; preds = %4
  %34 = load i32*, i32** %7, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %36, %33
  %42 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %45 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %43, %46
  %48 = call i32 @nand_change_write_column_op(%struct.nand_chip* %42, i32 %47, i32* null, i32 0, i32 0)
  br label %49

49:                                               ; preds = %41, %36
  %50 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @sunxi_nfc_randomizer_write_buf(%struct.nand_chip* %50, i32* %54, i32 %55, i32 0, i32 %56)
  %58 = load i32*, i32** %7, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %49
  %61 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %62 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %65 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %63, %66
  %68 = load i32*, i32** %7, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %32, %60, %49
  ret void
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @nand_change_write_column_op(%struct.nand_chip*, i32, i32*, i32, i32) #1

declare dso_local i32 @sunxi_nfc_randomizer_write_buf(%struct.nand_chip*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
