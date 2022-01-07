; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_read_fdm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_read_fdm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.mtk_nfc = type { i32 }
%struct.mtk_nfc_nand_chip = type { %struct.mtk_nfc_fdm }
%struct.mtk_nfc_fdm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32, i32)* @mtk_nfc_read_fdm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_nfc_read_fdm(%struct.nand_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtk_nfc*, align 8
  %8 = alloca %struct.mtk_nfc_nand_chip*, align 8
  %9 = alloca %struct.mtk_nfc_fdm*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %16 = call %struct.mtk_nfc* @nand_get_controller_data(%struct.nand_chip* %15)
  store %struct.mtk_nfc* %16, %struct.mtk_nfc** %7, align 8
  %17 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %18 = call %struct.mtk_nfc_nand_chip* @to_mtk_nand(%struct.nand_chip* %17)
  store %struct.mtk_nfc_nand_chip* %18, %struct.mtk_nfc_nand_chip** %8, align 8
  %19 = load %struct.mtk_nfc_nand_chip*, %struct.mtk_nfc_nand_chip** %8, align 8
  %20 = getelementptr inbounds %struct.mtk_nfc_nand_chip, %struct.mtk_nfc_nand_chip* %19, i32 0, i32 0
  store %struct.mtk_nfc_fdm* %20, %struct.mtk_nfc_fdm** %9, align 8
  store i32 0, i32* %13, align 4
  br label %21

21:                                               ; preds = %66, %3
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %69

25:                                               ; preds = %21
  %26 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %13, align 4
  %29 = add nsw i32 %27, %28
  %30 = call i32* @oob_ptr(%struct.nand_chip* %26, i32 %29)
  store i32* %30, i32** %12, align 8
  %31 = load %struct.mtk_nfc*, %struct.mtk_nfc** %7, align 8
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @NFI_FDML(i32 %32)
  %34 = call i32 @nfi_readl(%struct.mtk_nfc* %31, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.mtk_nfc*, %struct.mtk_nfc** %7, align 8
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @NFI_FDMM(i32 %36)
  %38 = call i32 @nfi_readl(%struct.mtk_nfc* %35, i32 %37)
  store i32 %38, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %39

39:                                               ; preds = %62, %25
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.mtk_nfc_fdm*, %struct.mtk_nfc_fdm** %9, align 8
  %42 = getelementptr inbounds %struct.mtk_nfc_fdm, %struct.mtk_nfc_fdm* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %39
  %46 = load i32, i32* %14, align 4
  %47 = icmp sge i32 %46, 4
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* %11, align 4
  br label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = load i32, i32* %14, align 4
  %55 = srem i32 %54, 4
  %56 = mul nsw i32 %55, 8
  %57 = ashr i32 %53, %56
  %58 = load i32*, i32** %12, align 8
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %57, i32* %61, align 4
  br label %62

62:                                               ; preds = %52
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %14, align 4
  br label %39

65:                                               ; preds = %39
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %13, align 4
  br label %21

69:                                               ; preds = %21
  ret void
}

declare dso_local %struct.mtk_nfc* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local %struct.mtk_nfc_nand_chip* @to_mtk_nand(%struct.nand_chip*) #1

declare dso_local i32* @oob_ptr(%struct.nand_chip*, i32) #1

declare dso_local i32 @nfi_readl(%struct.mtk_nfc*, i32) #1

declare dso_local i32 @NFI_FDML(i32) #1

declare dso_local i32 @NFI_FDMM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
