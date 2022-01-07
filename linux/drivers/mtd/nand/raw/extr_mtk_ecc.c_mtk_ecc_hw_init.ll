; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_ecc.c_mtk_ecc_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_ecc.c_mtk_ecc_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_ecc = type { i64 }

@ECC_ENCODE = common dso_local global i32 0, align 4
@ECC_OP_DISABLE = common dso_local global i32 0, align 4
@ECC_ENCCON = common dso_local global i64 0, align 8
@ECC_DECODE = common dso_local global i32 0, align 4
@ECC_DECCON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_ecc*)* @mtk_ecc_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_ecc_hw_init(%struct.mtk_ecc* %0) #0 {
  %2 = alloca %struct.mtk_ecc*, align 8
  store %struct.mtk_ecc* %0, %struct.mtk_ecc** %2, align 8
  %3 = load %struct.mtk_ecc*, %struct.mtk_ecc** %2, align 8
  %4 = load i32, i32* @ECC_ENCODE, align 4
  %5 = call i32 @mtk_ecc_wait_idle(%struct.mtk_ecc* %3, i32 %4)
  %6 = load i32, i32* @ECC_OP_DISABLE, align 4
  %7 = load %struct.mtk_ecc*, %struct.mtk_ecc** %2, align 8
  %8 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ECC_ENCCON, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writew(i32 %6, i64 %11)
  %13 = load %struct.mtk_ecc*, %struct.mtk_ecc** %2, align 8
  %14 = load i32, i32* @ECC_DECODE, align 4
  %15 = call i32 @mtk_ecc_wait_idle(%struct.mtk_ecc* %13, i32 %14)
  %16 = load i32, i32* @ECC_OP_DISABLE, align 4
  %17 = load %struct.mtk_ecc*, %struct.mtk_ecc** %2, align 8
  %18 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ECC_DECCON, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %16, i64 %21)
  ret void
}

declare dso_local i32 @mtk_ecc_wait_idle(%struct.mtk_ecc*, i32) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
