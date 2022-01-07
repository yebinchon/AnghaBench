; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_force_byte_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_force_byte_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32 }
%struct.marvell_nfc = type { i64 }

@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@NDCR = common dso_local global i64 0, align 8
@NDCR_DWIDTH_M = common dso_local global i32 0, align 4
@NDCR_DWIDTH_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32)* @marvell_nfc_force_byte_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @marvell_nfc_force_byte_access(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.marvell_nfc*, align 8
  %6 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %8 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.marvell_nfc* @to_marvell_nfc(i32 %9)
  store %struct.marvell_nfc* %10, %struct.marvell_nfc** %5, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %12 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %48

18:                                               ; preds = %2
  %19 = load %struct.marvell_nfc*, %struct.marvell_nfc** %5, align 8
  %20 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NDCR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl_relaxed(i64 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %18
  %28 = load i32, i32* @NDCR_DWIDTH_M, align 4
  %29 = load i32, i32* @NDCR_DWIDTH_C, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %40

34:                                               ; preds = %18
  %35 = load i32, i32* @NDCR_DWIDTH_M, align 4
  %36 = load i32, i32* @NDCR_DWIDTH_C, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %34, %27
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.marvell_nfc*, %struct.marvell_nfc** %5, align 8
  %43 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NDCR, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel_relaxed(i32 %41, i64 %46)
  br label %48

48:                                               ; preds = %40, %17
  ret void
}

declare dso_local %struct.marvell_nfc* @to_marvell_nfc(i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
