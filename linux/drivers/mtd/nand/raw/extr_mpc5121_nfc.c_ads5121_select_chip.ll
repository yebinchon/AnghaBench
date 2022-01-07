; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mpc5121_nfc.c_ads5121_select_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mpc5121_nfc.c_ads5121_select_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.mtd_info = type { i32 }
%struct.mpc5121_nfc_prv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32)* @ads5121_select_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ads5121_select_chip(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.mpc5121_nfc_prv*, align 8
  %7 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %9 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %8)
  store %struct.mtd_info* %9, %struct.mtd_info** %5, align 8
  %10 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %11 = call %struct.mpc5121_nfc_prv* @nand_get_controller_data(%struct.nand_chip* %10)
  store %struct.mpc5121_nfc_prv* %11, %struct.mpc5121_nfc_prv** %6, align 8
  %12 = load %struct.mpc5121_nfc_prv*, %struct.mpc5121_nfc_prv** %6, align 8
  %13 = getelementptr inbounds %struct.mpc5121_nfc_prv, %struct.mpc5121_nfc_prv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @in_8(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = or i32 %16, 15
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %22 = call i32 @mpc5121_nfc_select_chip(%struct.nand_chip* %21, i32 0)
  %23 = load i32, i32* %4, align 4
  %24 = shl i32 1, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %7, align 4
  br label %31

28:                                               ; preds = %2
  %29 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %30 = call i32 @mpc5121_nfc_select_chip(%struct.nand_chip* %29, i32 -1)
  br label %31

31:                                               ; preds = %28, %20
  %32 = load %struct.mpc5121_nfc_prv*, %struct.mpc5121_nfc_prv** %6, align 8
  %33 = getelementptr inbounds %struct.mpc5121_nfc_prv, %struct.mpc5121_nfc_prv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @out_8(i32 %34, i32 %35)
  ret void
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.mpc5121_nfc_prv* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @in_8(i32) #1

declare dso_local i32 @mpc5121_nfc_select_chip(%struct.nand_chip*, i32) #1

declare dso_local i32 @out_8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
