; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_hw_ecc_read_extra_oob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_hw_ecc_read_extra_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.nand_ecc_ctrl }
%struct.nand_ecc_ctrl = type { i32, i32 }
%struct.mtd_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32*, i32*, i32, i32)* @sunxi_nfc_hw_ecc_read_extra_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunxi_nfc_hw_ecc_read_extra_oob(%struct.nand_chip* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mtd_info*, align 8
  %12 = alloca %struct.nand_ecc_ctrl*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %16 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %15)
  store %struct.mtd_info* %16, %struct.mtd_info** %11, align 8
  %17 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %18 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %17, i32 0, i32 0
  store %struct.nand_ecc_ctrl* %18, %struct.nand_ecc_ctrl** %12, align 8
  %19 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %12, align 8
  %20 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 4
  %23 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %12, align 8
  %24 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  store i32 %26, i32* %13, align 4
  %27 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %28 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %13, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %5
  br label %81

35:                                               ; preds = %5
  %36 = load i32*, i32** %8, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %38, %35
  %44 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %45 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %46 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @nand_change_read_column_op(%struct.nand_chip* %44, i32 %47, i32* null, i32 0, i32 0)
  br label %49

49:                                               ; preds = %43, %38
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %49
  %53 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @sunxi_nfc_read_buf(%struct.nand_chip* %53, i32* %57, i32 %58)
  br label %69

60:                                               ; preds = %49
  %61 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @sunxi_nfc_randomizer_read_buf(%struct.nand_chip* %61, i32* %65, i32 %66, i32 0, i32 %67)
  br label %69

69:                                               ; preds = %60, %52
  %70 = load i32*, i32** %8, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %74 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %77 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %75, %78
  %80 = load i32*, i32** %8, align 8
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %34, %72, %69
  ret void
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @nand_change_read_column_op(%struct.nand_chip*, i32, i32*, i32, i32) #1

declare dso_local i32 @sunxi_nfc_read_buf(%struct.nand_chip*, i32*, i32) #1

declare dso_local i32 @sunxi_nfc_randomizer_read_buf(%struct.nand_chip*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
