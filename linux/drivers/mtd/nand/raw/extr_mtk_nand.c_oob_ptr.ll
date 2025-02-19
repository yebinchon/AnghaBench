; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_oob_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_oob_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32* }
%struct.mtk_nfc_nand_chip = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.nand_chip*, i32)* @oob_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @oob_ptr(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtk_nfc_nand_chip*, align 8
  %6 = alloca i32*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %8 = call %struct.mtk_nfc_nand_chip* @to_mtk_nand(%struct.nand_chip* %7)
  store %struct.mtk_nfc_nand_chip* %8, %struct.mtk_nfc_nand_chip** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.mtk_nfc_nand_chip*, %struct.mtk_nfc_nand_chip** %5, align 8
  %11 = getelementptr inbounds %struct.mtk_nfc_nand_chip, %struct.mtk_nfc_nand_chip* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %17 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  %21 = load %struct.mtk_nfc_nand_chip*, %struct.mtk_nfc_nand_chip** %5, align 8
  %22 = getelementptr inbounds %struct.mtk_nfc_nand_chip, %struct.mtk_nfc_nand_chip* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %20, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %18, i64 %26
  store i32* %27, i32** %6, align 8
  br label %52

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.mtk_nfc_nand_chip*, %struct.mtk_nfc_nand_chip** %5, align 8
  %31 = getelementptr inbounds %struct.mtk_nfc_nand_chip, %struct.mtk_nfc_nand_chip* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %29, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %37 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %6, align 8
  br label %51

39:                                               ; preds = %28
  %40 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %41 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.mtk_nfc_nand_chip*, %struct.mtk_nfc_nand_chip** %5, align 8
  %45 = getelementptr inbounds %struct.mtk_nfc_nand_chip, %struct.mtk_nfc_nand_chip* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %43, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %42, i64 %49
  store i32* %50, i32** %6, align 8
  br label %51

51:                                               ; preds = %39, %35
  br label %52

52:                                               ; preds = %51, %15
  %53 = load i32*, i32** %6, align 8
  ret i32* %53
}

declare dso_local %struct.mtk_nfc_nand_chip* @to_mtk_nand(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
