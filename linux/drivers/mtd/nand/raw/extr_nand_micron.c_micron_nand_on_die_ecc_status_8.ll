; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_micron.c_micron_nand_on_die_ecc_status_8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_micron.c_micron_nand_on_die_ecc_status_8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.mtd_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@NAND_ECC_STATUS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32)* @micron_nand_on_die_ecc_status_8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @micron_nand_on_die_ecc_status_8(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %8 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %7)
  store %struct.mtd_info* %8, %struct.mtd_info** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @NAND_ECC_STATUS_MASK, align 4
  %11 = and i32 %9, %10
  switch i32 %11, label %36 [
    i32 128, label %12
    i32 131, label %18
    i32 130, label %24
    i32 129, label %30
  ]

12:                                               ; preds = %2
  %13 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %14 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  store i32 0, i32* %3, align 4
  br label %37

18:                                               ; preds = %2
  %19 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %20 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 3
  store i32 %23, i32* %21, align 4
  store i32 3, i32* %3, align 4
  br label %37

24:                                               ; preds = %2
  %25 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %26 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 6
  store i32 %29, i32* %27, align 4
  store i32 6, i32* %3, align 4
  br label %37

30:                                               ; preds = %2
  %31 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %32 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 8
  store i32 %35, i32* %33, align 4
  store i32 8, i32* %3, align 4
  br label %37

36:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %30, %24, %18, %12
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
