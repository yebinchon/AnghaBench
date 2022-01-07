; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_select_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_select_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.marvell_nand_chip = type { i32, i32, i32, i32 }
%struct.marvell_nfc = type { %struct.nand_chip*, i64 }

@NDCR = common dso_local global i64 0, align 8
@NDCR_GENERIC_FIELDS_MASK = common dso_local global i32 0, align 4
@NDCR_ND_RUN = common dso_local global i32 0, align 4
@NDCR_ALL_INT = common dso_local global i32 0, align 4
@NDTR0 = common dso_local global i64 0, align 8
@NDTR1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32)* @marvell_nfc_select_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @marvell_nfc_select_target(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.marvell_nand_chip*, align 8
  %6 = alloca %struct.marvell_nfc*, align 8
  %7 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %9 = call %struct.marvell_nand_chip* @to_marvell_nand(%struct.nand_chip* %8)
  store %struct.marvell_nand_chip* %9, %struct.marvell_nand_chip** %5, align 8
  %10 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %11 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.marvell_nfc* @to_marvell_nfc(i32 %12)
  store %struct.marvell_nfc* %13, %struct.marvell_nfc** %6, align 8
  %14 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %15 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NDCR, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl_relaxed(i64 %18)
  %20 = load i32, i32* @NDCR_GENERIC_FIELDS_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @NDCR_ND_RUN, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.marvell_nand_chip*, %struct.marvell_nand_chip** %5, align 8
  %27 = getelementptr inbounds %struct.marvell_nand_chip, %struct.marvell_nand_chip* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %25, %28
  %30 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %31 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NDCR, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel_relaxed(i32 %29, i64 %34)
  %36 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %37 = load i32, i32* @NDCR_ALL_INT, align 4
  %38 = call i32 @marvell_nfc_clear_int(%struct.marvell_nfc* %36, i32 %37)
  %39 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %40 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %41 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %40, i32 0, i32 0
  %42 = load %struct.nand_chip*, %struct.nand_chip** %41, align 8
  %43 = icmp eq %struct.nand_chip* %39, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %2
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.marvell_nand_chip*, %struct.marvell_nand_chip** %5, align 8
  %47 = getelementptr inbounds %struct.marvell_nand_chip, %struct.marvell_nand_chip* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %76

51:                                               ; preds = %44, %2
  %52 = load %struct.marvell_nand_chip*, %struct.marvell_nand_chip** %5, align 8
  %53 = getelementptr inbounds %struct.marvell_nand_chip, %struct.marvell_nand_chip* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %56 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @NDTR0, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel_relaxed(i32 %54, i64 %59)
  %61 = load %struct.marvell_nand_chip*, %struct.marvell_nand_chip** %5, align 8
  %62 = getelementptr inbounds %struct.marvell_nand_chip, %struct.marvell_nand_chip* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %65 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @NDTR1, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel_relaxed(i32 %63, i64 %68)
  %70 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %71 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %72 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %71, i32 0, i32 0
  store %struct.nand_chip* %70, %struct.nand_chip** %72, align 8
  %73 = load i32, i32* %4, align 4
  %74 = load %struct.marvell_nand_chip*, %struct.marvell_nand_chip** %5, align 8
  %75 = getelementptr inbounds %struct.marvell_nand_chip, %struct.marvell_nand_chip* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %51, %50
  ret void
}

declare dso_local %struct.marvell_nand_chip* @to_marvell_nand(%struct.nand_chip*) #1

declare dso_local %struct.marvell_nfc* @to_marvell_nfc(i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @marvell_nfc_clear_int(%struct.marvell_nfc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
