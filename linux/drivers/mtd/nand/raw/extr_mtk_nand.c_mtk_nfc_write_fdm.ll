; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_write_fdm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_write_fdm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mtk_nfc = type { i32 }
%struct.mtk_nfc_nand_chip = type { %struct.mtk_nfc_fdm }
%struct.mtk_nfc_fdm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*)* @mtk_nfc_write_fdm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_nfc_write_fdm(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  %3 = alloca %struct.mtk_nfc*, align 8
  %4 = alloca %struct.mtk_nfc_nand_chip*, align 8
  %5 = alloca %struct.mtk_nfc_fdm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %12 = call %struct.mtk_nfc* @nand_get_controller_data(%struct.nand_chip* %11)
  store %struct.mtk_nfc* %12, %struct.mtk_nfc** %3, align 8
  %13 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %14 = call %struct.mtk_nfc_nand_chip* @to_mtk_nand(%struct.nand_chip* %13)
  store %struct.mtk_nfc_nand_chip* %14, %struct.mtk_nfc_nand_chip** %4, align 8
  %15 = load %struct.mtk_nfc_nand_chip*, %struct.mtk_nfc_nand_chip** %4, align 8
  %16 = getelementptr inbounds %struct.mtk_nfc_nand_chip, %struct.mtk_nfc_nand_chip* %15, i32 0, i32 0
  store %struct.mtk_nfc_fdm* %16, %struct.mtk_nfc_fdm** %5, align 8
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %90, %1
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %20 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %93

24:                                               ; preds = %17
  %25 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32* @oob_ptr(%struct.nand_chip* %25, i32 %26)
  store i32* %27, i32** %8, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %76, %24
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 8
  br i1 %30, label %31, label %79

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %34, label %54

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.mtk_nfc_fdm*, %struct.mtk_nfc_fdm** %5, align 8
  %37 = getelementptr inbounds %struct.mtk_nfc_fdm, %struct.mtk_nfc_fdm* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  br label %47

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %40
  %48 = phi i32 [ %45, %40 ], [ 255, %46 ]
  %49 = load i32, i32* %10, align 4
  %50 = mul nsw i32 %49, 8
  %51 = shl i32 %48, %50
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %75

54:                                               ; preds = %31
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.mtk_nfc_fdm*, %struct.mtk_nfc_fdm** %5, align 8
  %57 = getelementptr inbounds %struct.mtk_nfc_fdm, %struct.mtk_nfc_fdm* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  br label %67

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66, %60
  %68 = phi i32 [ %65, %60 ], [ 255, %66 ]
  %69 = load i32, i32* %10, align 4
  %70 = sub nsw i32 %69, 4
  %71 = mul nsw i32 %70, 8
  %72 = shl i32 %68, %71
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %67, %47
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %28

79:                                               ; preds = %28
  %80 = load %struct.mtk_nfc*, %struct.mtk_nfc** %3, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @NFI_FDML(i32 %82)
  %84 = call i32 @nfi_writel(%struct.mtk_nfc* %80, i32 %81, i32 %83)
  %85 = load %struct.mtk_nfc*, %struct.mtk_nfc** %3, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @NFI_FDMM(i32 %87)
  %89 = call i32 @nfi_writel(%struct.mtk_nfc* %85, i32 %86, i32 %88)
  br label %90

90:                                               ; preds = %79
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %17

93:                                               ; preds = %17
  ret void
}

declare dso_local %struct.mtk_nfc* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local %struct.mtk_nfc_nand_chip* @to_mtk_nand(%struct.nand_chip*) #1

declare dso_local i32* @oob_ptr(%struct.nand_chip*, i32) #1

declare dso_local i32 @nfi_writel(%struct.mtk_nfc*, i32, i32) #1

declare dso_local i32 @NFI_FDML(i32) #1

declare dso_local i32 @NFI_FDMM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
