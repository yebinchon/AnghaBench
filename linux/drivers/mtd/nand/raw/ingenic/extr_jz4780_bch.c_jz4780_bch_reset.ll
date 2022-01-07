; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_jz4780_bch.c_jz4780_bch_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_jz4780_bch.c_jz4780_bch_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ingenic_ecc = type { i64 }
%struct.ingenic_ecc_params = type { i32, i32, i32 }

@BCH_BHINT = common dso_local global i64 0, align 8
@BCH_BHCNT_BLOCKSIZE_SHIFT = common dso_local global i32 0, align 4
@BCH_BHCNT_PARITYSIZE_SHIFT = common dso_local global i32 0, align 4
@BCH_BHCNT = common dso_local global i64 0, align 8
@BCH_BHCR_BCHE = common dso_local global i32 0, align 4
@BCH_BHCR_INIT = common dso_local global i32 0, align 4
@BCH_BHCR_BSEL_SHIFT = common dso_local global i32 0, align 4
@BCH_BHCR_ENCE = common dso_local global i32 0, align 4
@BCH_BHCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ingenic_ecc*, %struct.ingenic_ecc_params*, i32)* @jz4780_bch_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jz4780_bch_reset(%struct.ingenic_ecc* %0, %struct.ingenic_ecc_params* %1, i32 %2) #0 {
  %4 = alloca %struct.ingenic_ecc*, align 8
  %5 = alloca %struct.ingenic_ecc_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ingenic_ecc* %0, %struct.ingenic_ecc** %4, align 8
  store %struct.ingenic_ecc_params* %1, %struct.ingenic_ecc_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %4, align 8
  %9 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BCH_BHINT, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  %14 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %4, align 8
  %15 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BCH_BHINT, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 %13, i64 %18)
  %20 = load %struct.ingenic_ecc_params*, %struct.ingenic_ecc_params** %5, align 8
  %21 = getelementptr inbounds %struct.ingenic_ecc_params, %struct.ingenic_ecc_params* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @BCH_BHCNT_BLOCKSIZE_SHIFT, align 4
  %24 = shl i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load %struct.ingenic_ecc_params*, %struct.ingenic_ecc_params** %5, align 8
  %26 = getelementptr inbounds %struct.ingenic_ecc_params, %struct.ingenic_ecc_params* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @BCH_BHCNT_PARITYSIZE_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %4, align 8
  %34 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @BCH_BHCNT, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  %39 = load i32, i32* @BCH_BHCR_BCHE, align 4
  %40 = load i32, i32* @BCH_BHCR_INIT, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %7, align 4
  %42 = load %struct.ingenic_ecc_params*, %struct.ingenic_ecc_params** %5, align 8
  %43 = getelementptr inbounds %struct.ingenic_ecc_params, %struct.ingenic_ecc_params* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @BCH_BHCR_BSEL_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %3
  %52 = load i32, i32* @BCH_BHCR_ENCE, align 4
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %51, %3
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %4, align 8
  %58 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @BCH_BHCR, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 %56, i64 %61)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
