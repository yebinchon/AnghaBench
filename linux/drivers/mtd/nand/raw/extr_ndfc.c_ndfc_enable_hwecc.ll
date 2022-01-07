; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_ndfc.c_ndfc_enable_hwecc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_ndfc.c_ndfc_enable_hwecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.ndfc_controller = type { i64 }

@NDFC_CCR = common dso_local global i64 0, align 8
@NDFC_CCR_RESET_ECC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32)* @ndfc_enable_hwecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ndfc_enable_hwecc(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ndfc_controller*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %8 = call %struct.ndfc_controller* @nand_get_controller_data(%struct.nand_chip* %7)
  store %struct.ndfc_controller* %8, %struct.ndfc_controller** %6, align 8
  %9 = load %struct.ndfc_controller*, %struct.ndfc_controller** %6, align 8
  %10 = getelementptr inbounds %struct.ndfc_controller, %struct.ndfc_controller* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NDFC_CCR, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @in_be32(i64 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @NDFC_CCR_RESET_ECC, align 4
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load %struct.ndfc_controller*, %struct.ndfc_controller** %6, align 8
  %19 = getelementptr inbounds %struct.ndfc_controller, %struct.ndfc_controller* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NDFC_CCR, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @out_be32(i64 %22, i32 %23)
  %25 = call i32 (...) @wmb()
  ret void
}

declare dso_local %struct.ndfc_controller* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @in_be32(i64) #1

declare dso_local i32 @out_be32(i64, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
