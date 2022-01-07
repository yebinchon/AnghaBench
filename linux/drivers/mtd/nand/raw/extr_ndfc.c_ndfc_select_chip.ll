; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_ndfc.c_ndfc_select_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_ndfc.c_ndfc_select_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.ndfc_controller = type { i64, i64 }

@NDFC_CCR = common dso_local global i64 0, align 8
@NDFC_CCR_BS_MASK = common dso_local global i32 0, align 4
@NDFC_CCR_RESET_CE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32)* @ndfc_select_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ndfc_select_chip(%struct.nand_chip* %0, i32 %1) #0 {
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
  %15 = load i32, i32* %4, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %2
  %18 = load i32, i32* @NDFC_CCR_BS_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = load %struct.ndfc_controller*, %struct.ndfc_controller** %6, align 8
  %25 = getelementptr inbounds %struct.ndfc_controller, %struct.ndfc_controller* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = call i32 @NDFC_CCR_BS(i64 %27)
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %35

31:                                               ; preds = %2
  %32 = load i32, i32* @NDFC_CCR_RESET_CE, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %31, %17
  %36 = load %struct.ndfc_controller*, %struct.ndfc_controller** %6, align 8
  %37 = getelementptr inbounds %struct.ndfc_controller, %struct.ndfc_controller* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NDFC_CCR, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @out_be32(i64 %40, i32 %41)
  ret void
}

declare dso_local %struct.ndfc_controller* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @in_be32(i64) #1

declare dso_local i32 @NDFC_CCR_BS(i64) #1

declare dso_local i32 @out_be32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
